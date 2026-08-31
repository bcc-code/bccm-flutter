# Auth session persistence on iOS

Why some users had to log in on every single launch, and what the code does about it now.

Everything here is about `lib/src/features/auth/implementations/auth_state_notifier_mobile.dart`.
Read this before touching the secure-storage options or the renewal flow — most of it is
non-obvious, and one of the causes was a single word.

## Root cause: reads and writes addressed different keychain items

Credentials were stored with `IOSOptions(accessibility: first_unlock_this_device,
synchronizable: true)`. In flutter_secure_storage 9.2.4 (`ios/Classes/FlutterSecureStorage.swift`)
those options are not applied symmetrically:

- **read** (`:118-146`) ignores them entirely. It always queries _without_
  `kSecAttrSynchronizable` first — which matches non-synchronizable items only — and falls back to
  `synchronizable: true` only if that finds nothing. **Reads prefer the local item.**
- **write** (`:172-221`) puts `synchronizable: true` in both the `SecItemUpdate` query and the
  `SecItemAdd`. If only a _non-synchronizable_ item exists, the update returns `itemNotFound`, and
  the accessibility-sweep deletes at `:211-213` also pass `synchronizable: true`, so the stale item
  is never removed. **Writes go to the iCloud item.**
- **delete** (`:160-170`) pins `synchronizable: true` too, so `_clearCredentials()` / `logout()`
  could never remove the stale item. That is why the state recurred on every launch instead of
  healing after one sign-out.
- `IOSOptions.synchronizable` is a non-nullable `bool` defaulting to `false`, so
  `kSecAttrSynchronizable` is _always_ part of the write/delete query. There is no "match either"
  behaviour to fall back on.

So on an affected device: read the stale local item → try to renew with a long-dead refresh token →
fail → sign out → user logs in → the new tokens are written to the iCloud item, which reads never
prefer → next launch reads the stale item again. Forever.

Where the non-synchronizable item came from: before `bccm_core@bcc54f9` ("fix: remove legacy secure
storage", 2025-04-02) there was a `_legacySecureStorage` using the plugin **defaults**
(`accessibility: unlocked`, `synchronizable: false`). Any device whose tokens were last written
through that path holds an item today's code can read but can neither overwrite nor delete. That
window is why this hit a few users rather than everyone.

Confirmed in the field by a device logging this on 2026-08-27:

```
flutter: auth: Access token is expired. Trying to renew. 2024-10-06 15:46:54.000Z
```

That is the expiry of the access token _read out of the keychain_ — the stored credentials were
~2 years old on a device whose user had been logging in constantly the whole time.

A variant with identical symptoms, worth knowing about: `first_unlock_this_device` +
`synchronizable: true` is a contradictory pair (ThisDeviceOnly items can't sync). If `SecItemAdd`
rejects it with `errSecParam`, _every_ write fails — and that failure used to be swallowed into an
analytics event in `_setStateBasedOnResponse`, so the console showed nothing. Both variants are
fixed by dropping `synchronizable`.

## Contributing causes

Each of these can log a healthy user out on its own, and each was live at the same time as the
keychain problem.

1. **No single-flight on renewal.** `AuthLink.getToken` calls `getExistingAndEnsureNotExpired()` on
   _every_ GraphQL request, and 3–4 concurrent "Trying to renew" per launch is normal, not an edge
   case. `_refresh()` read the refresh token _outside_ `appAuthLock`, so all of them exchanged the
   **same** token. With Auth0 refresh-token rotation and reuse detection, everything after the first
   exchange looks like a replay and Auth0 revokes the whole grant family → permanent forced login.
2. **`_refresh()` wiped credentials on any exception**
   (`if (ref.read(isOfflineProvider) != true) await _clearCredentials()`). A captive portal, a 5xx, a
   rate limit, or the 10s `appAuthLock` timeout destroyed the refresh token.
3. **`getExistingAndEnsureNotExpired()` called `logout()`** from inside an HTTP auth link, so any
   renewal failure not detected as "offline" signed the user out.
4. **`_initialize()` fell through with the known-expired token** when renewal failed, which
   guaranteed the logout in (3) on the first GraphQL call.
5. **Silent failures.** Renewal errors only ever reached analytics — never the console or Sentry —
   so a renewal could fail with no visible reason anywhere.
6. **`login()` reported success on every outcome**, including the user cancelling the Auth0 sheet.
   `authorizeAndExchangeCode` failures were swallowed into an empty `AuthorizationTokenResponse`,
   that empty response made `_setStateBasedOnResponse` throw, and _that_ throw was swallowed too — so
   the method fell through to `config.onSignIn?.call()` and `return true` with the auth state
   untouched. Consumers navigate on that return value, so a cancelled login put the user in the app
   shell while signed out, with every GraphQL request going out unauthenticated. It also made the
   `FlutterAppAuthUserCancelledException` and `FlutterAppAuthPlatformException` handlers unreachable,
   so cancel-versus-failure never reached analytics at all.
7. **`initialize()` rethrew.** A stored access token that isn't a JWT (`_getAccessTokenExpiry`
   throws) or a user profile that isn't valid JSON escaped `initialize()`. Both app shells render a
   blocking error screen when that future fails, and neither runs its post-init navigation, so the
   user got an error screen whose only exit is "log out" — on _every_ launch — instead of being sent
   to the login screen.

## What the code does now

- Dropped `synchronizable: true`, so reads and writes address the same keychain item.
- `_deleteFromSecureStorage` deletes every variant the app has ever written
  (`_iosCredentialVariants`): current, `synchronizable: true`, and the pre-2025 legacy defaults.
  Without this a leftover item resurfaces on the next launch — **this is what lets an affected device
  recover.**
- It also never throws. A keychain that refuses one variant used to abort the loop over the
  remaining variants _and_ abort `logout()` before it cleared the in-memory state and called
  `onSignout`, leaving the user apparently signed in with credentials already half deleted. Each
  variant is now attempted independently and failures are logged.
- `_refresh()` is single-flight: parallel callers join one exchange, and the refresh token is read
  _inside_ the lock, so a token rotated by a just-finished exchange is the one that gets sent. It
  also skips the network call when a login or another exchange already produced a fresh token.
- Renewal failures are classified: `invalid_grant` → sign out and clear; anything else → keep the
  credentials and retry later. Credentials expired for longer than `kUnrecoverableCredentialsAge`
  (180 days) count as definitively dead too, so a device in the state described above cleans itself
  up even if the platform error mapping differs.
- A refresh token that reads back as `null` is only treated as "gone" when `containsKey` agrees.
  Reads swallow their errors, so otherwise a keychain hiccup would look identical to a missing token
  and cost the user a login.
- `login()` reports failure when it fails. The two `catchError` swallows are gone, so the
  cancelled/platform/unknown handlers are live again and a login that produced no usable session
  returns `false` without calling `onSignIn`. A response that arrives but can't be applied keeps its
  own analytics event, since "Auth0 answered with something unusable" is a different signal from
  "the request failed".
- `initialize()` never rethrows. It reports to Sentry, logs a `restoring stored session failed`
  event, and signs out with `manual: false`. Dropping the unparseable credentials rather than leaving
  them in place is deliberate: what didn't parse this launch won't parse on the next one either, so
  the user logs in once and the device is repaired instead of stuck forever. `manual: false` keeps
  `signedOutManually` false, so the next login can still go through silently on the Auth0 session
  cookie.
- The fire-and-forget `logout(manual: false)` calls in `login()` and `loginViaDeviceCode()` are
  awaited. An unawaited logout can land _after_ a later successful login and wipe the credentials it
  just stored.
- Renewal and storage-write failures are reported to Sentry and carry the OAuth error code in their
  analytics meta.
- Removed the `debugPrint`/`print` of full token values.

## Tests

`test/auth_test.dart`, 22 tests:

- **Renewal** — single-flight, both failure classifications, the stale-credentials cleanup, and
  missing vs. unreadable refresh tokens.
- **Storage options** — that reads and writes both address the non-synchronizable item, that the
  Android options are the app's own encrypted store, that clearing deletes the exact set of three iOS
  variants, and that Android deletes once. These are pure regression guards: the root cause was one
  word in a `const`, and not one behavioural test notices it coming back.
- **Login** — success reports `true` and signs in; cancelled, platform-failed, and unusable-token
  logins all report `false` and never call `onSignIn`.
- **Initialize** — a stored session is restored; nothing stored leaves the user signed out without
  deleting anything; a non-JWT access token, corrupt profile JSON, and storage that refuses every
  delete all complete without throwing and leave the user signed out.

Each fix was checked by putting the bug back and confirming the matching tests fail. The storage
options against three separate mutations (`synchronizable: true` restored, the legacy delete variant
dropped, the Android prefs name changed); the login/initialize fixes against the whole pre-fix file,
which fails exactly the six corresponding tests and nothing else.

Note for anyone extending these tests: `Options.toMap()` / `Options.params` return plain `Map`s, and
`Map` has no value equality, so a `Set` of them dedupes by identity and every element always looks
distinct. Compare canonical strings instead — `auth_test.dart` has a `canonical()` helper.

## Known gaps

- `checkIfSecureStorageIsAvailableAndHasKey` calls `containsKey`/`read` **without** passing
  `iOptions`/`aOptions`. On Android that queries the plugin's default shared-prefs file rather than
  `sharedPreferencesName: 'auth'`, so it reports "secure storage does not contain key X" for
  essentially every read — bogus analytics, plus a doubled storage access on every read.
- `forceRefresh()` no longer forces. It joins an in-flight refresh and can return `true` from the
  `_hasUsableAccessToken()` short-circuit without a network exchange. No callers rely on the old
  meaning today.
- `kUnrecoverableCredentialsAge` (180 days) assumes no refresh token outlives it. That is a property
  of the Auth0 tenant configuration, not a fact — with rotating refresh tokens the absolute lifetime
  is a tenant setting and is often much shorter. Worth confirming against the tenant.
- A cancelled login still signs the user out. If an already-signed-in user re-authenticates and
  cancels, `logout(manual: false)` wipes the session. Longstanding behaviour, not a regression, but
  probably not what anyone wants.
