### Notifications

- `flutterfire configure`
- somewhere, e.g. after login, do this:

```
ref.watch(notificationServiceProvider).requestPermissionAndSetup();
```
