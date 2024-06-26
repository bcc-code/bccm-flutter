enum Enum$ShowType {
  event,
  series,
  $unknown;

  factory Enum$ShowType.fromJson(String value) => fromJson$Enum$ShowType(value);

  String toJson() => toJson$Enum$ShowType(this);
}

String toJson$Enum$ShowType(Enum$ShowType e) {
  switch (e) {
    case Enum$ShowType.event:
      return r'event';
    case Enum$ShowType.series:
      return r'series';
    case Enum$ShowType.$unknown:
      return r'$unknown';
  }
}

Enum$ShowType fromJson$Enum$ShowType(String value) {
  switch (value) {
    case r'event':
      return Enum$ShowType.event;
    case r'series':
      return Enum$ShowType.series;
    default:
      return Enum$ShowType.$unknown;
  }
}
