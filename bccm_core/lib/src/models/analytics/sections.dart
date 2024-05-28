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
  }) = _SectionItemAnalyticsData;
}

class SectionAnalytics extends InheritedData<SectionAnalyticsData> {
  SectionAnalytics({
    super.key,
    required SectionAnalyticsData data,
    required Widget Function(BuildContext) child,
  }) : super(inheritedData: data, child: child);
}

class SectionItemAnalytics extends InheritedData<SectionItemAnalyticsData> {
  SectionItemAnalytics({
    super.key,
    required SectionItemAnalyticsData data,
    required Widget Function(BuildContext) child,
  }) : super(inheritedData: data, child: child);
}
