import 'package:bccm_core/bccm_core.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sections.freezed.dart';
part 'sections.g.dart';

@freezed
class SectionClickedEvent with _$SectionClickedEvent {
  const factory SectionClickedEvent({
    required String sectionId,
    String? sectionName,
    required int sectionPosition,
    required String sectionType,
    String? elementName,
    required int elementPosition,
    required String elementType,
    required String elementId,
    String? pageCode,
    Map<String, dynamic>? meta,
  }) = _SectionClickedEvent;

  factory SectionClickedEvent.fromJson(Map<String, dynamic> json) => _$SectionClickedEventFromJson(json);
}

@freezed
class SectionAnalyticsData with _$SectionAnalyticsData {
  const factory SectionAnalyticsData({
    String? pageCode,
    required String id,
    String? name,
    required int position,
    required String type,
    Map<String, dynamic>? meta,
  }) = _SectionAnalyticsData;
}

@freezed
class SectionItemAnalyticsData with _$SectionItemAnalyticsData {
  const factory SectionItemAnalyticsData({
    required int position,
    required String type,
    required String id,
    String? name,
    Map<String, dynamic>? meta,
  }) = _SectionItemAnalyticsData;
}

class SectionAnalytics extends StatelessWidget {
  const SectionAnalytics({
    super.key,
    required this.data,
    required this.builder,
  });

  final SectionAnalyticsData data;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return InheritedData<SectionAnalyticsData>(
      inheritedData: data,
      builder: builder,
    );
  }

  static SectionAnalyticsData? read(BuildContext context) => InheritedData.read<SectionAnalyticsData>(context);
}

class SectionItemAnalytics extends StatelessWidget {
  const SectionItemAnalytics({
    super.key,
    required this.data,
    required this.builder,
  });

  final SectionItemAnalyticsData data;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return InheritedData<SectionItemAnalyticsData>(
      inheritedData: data,
      builder: builder,
    );
  }

  static SectionItemAnalyticsData? read(BuildContext context) => InheritedData.read<SectionItemAnalyticsData>(context);
}
