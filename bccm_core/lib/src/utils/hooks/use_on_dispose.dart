import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// useOnDispose is a custom flutter hook that allows you to run a function only once when the widget is **disposed**.
///
/// This is useful when you want to run some cleanup code that should only run once when the widget is disposed.
///
/// Here's an example of how you can use useOnDispose:
///
/// ```dart
/// class MyWidget extends HookWidget {
///   @override
///   Widget build(BuildContext context) {
///     useOnDispose(() {
///       print('This will only run once when the widget is disposed');
///     });
///
///     return Text('Hello, World!');
///   }
/// }
/// ```
void useOnDispose(VoidCallback callback) {
  useEffect(() {
    return callback;
  }, []);
}
