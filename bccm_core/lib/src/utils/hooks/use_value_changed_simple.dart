import 'package:flutter_hooks/flutter_hooks.dart';

// Same as [useValueChanged], but without the return values
//
// Reasoning: for void callbacks, useValueChanged gives type issues if you don't explicitly state "void" somewhere.
//
// Example:
// ```dart
// useValueChanged(value, (prev, __) {
//   valueChange(prev);
// });
// ```
//
// This is a workaround for that.
void useValueChangedSimple<T>(T value, Function(T oldValue) valueChange) {
  return useValueChanged(value, (prev, __) {
    valueChange(prev);
  });
}
