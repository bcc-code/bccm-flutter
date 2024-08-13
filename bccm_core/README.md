### Notifications

- `flutterfire configure`
- somewhere, e.g. after login, do this:

```
ref.watch(notificationServiceProvider).requestPermissionAndSetup();
```

## Code generation

Some code is generated, for example routing and graphql queries.
The generated files are often suffixed with ._something_.dart (e.g. .g.dart).
To ensure your code is updated while developing, run the [build_runner](https://dart.dev/tools/build_runner) watcher:

```
dart run build_runner watch --delete-conflicting-outputs
```
