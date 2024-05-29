import 'package:bccm_core/bccm_core.dart';
import 'package:flutter/widgets.dart';

class InheritedData<T> extends InheritedWidget {
  final T inheritedData;
  InheritedData({
    super.key,
    required Widget Function(BuildContext) builder,
    required this.inheritedData,
  }) : super(child: Builder(builder: builder));
  @override
  bool updateShouldNotify(InheritedData oldWidget) => inheritedData != oldWidget.inheritedData;

  static T? read<T>(BuildContext context) =>
      context.getElementForInheritedWidgetOfExactType<InheritedData<T>>()?.widget.asOrNull<InheritedData<T>>()?.inheritedData;

  static T? watch<T>(BuildContext context) => context.dependOnInheritedWidgetOfExactType<InheritedData<T>>()?.inheritedData;
}
