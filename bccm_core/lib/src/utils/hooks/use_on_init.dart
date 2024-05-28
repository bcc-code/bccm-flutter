import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// useInit is a custom flutter hook that allows you to run a function only once when the widget is first rendered.
///
/// This is useful when you want to run some initialization code that should only run once when the widget is first rendered.
///
/// Here's an example of how you can use useInit:
///
/// ```dart
/// class MyWidget extends HookWidget {
///   @override
///   Widget build(BuildContext context) {
///     useInit(() {
///       print('This will only run once when the widget is first rendered');
///     });
///
///     return Text('Hello, World!');
///   }
/// }
/// ```
void useOnInit(VoidCallback callback) {
  useEffect(() {
    callback();
    return null;
  }, []);
}
