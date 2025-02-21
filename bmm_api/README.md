## Running the OpenAPI codegen

```sh
pnpm run generate
```

This will run the openapi code generator, and generate Dart files for all models, APIs etc.

## Running the Dart codegen

After running the OpenAPI codegen, you need to generate `.g.dart` files for each of the newly generated files.

```sh
dart run build_runner build --delete-conflicting-outputs
```
