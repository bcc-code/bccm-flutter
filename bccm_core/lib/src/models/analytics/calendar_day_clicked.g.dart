// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_day_clicked.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CalendarDayClickedEvent _$CalendarDayClickedEventFromJson(
  Map<String, dynamic> json,
) => _CalendarDayClickedEvent(
  pageCode: json['pageCode'] as String,
  calendarView: json['calendarView'] as String,
  calendarDate: json['calendarDate'] as String,
);

Map<String, dynamic> _$CalendarDayClickedEventToJson(
  _CalendarDayClickedEvent instance,
) => <String, dynamic>{
  'pageCode': instance.pageCode,
  'calendarView': instance.calendarView,
  'calendarDate': instance.calendarDate,
};
