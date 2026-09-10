enum Enum$MessageStyleVariant {
  info,
  warning,
  error,
  $unknown;

  factory Enum$MessageStyleVariant.fromJson(String value) =>
      fromJson$Enum$MessageStyleVariant(value);

  String toJson() => toJson$Enum$MessageStyleVariant(this);
}

String toJson$Enum$MessageStyleVariant(Enum$MessageStyleVariant e) {
  switch (e) {
    case Enum$MessageStyleVariant.info:
      return r'info';
    case Enum$MessageStyleVariant.warning:
      return r'warning';
    case Enum$MessageStyleVariant.error:
      return r'error';
    case Enum$MessageStyleVariant.$unknown:
      return r'$unknown';
  }
}

Enum$MessageStyleVariant fromJson$Enum$MessageStyleVariant(String value) {
  switch (value) {
    case r'info':
      return Enum$MessageStyleVariant.info;
    case r'warning':
      return Enum$MessageStyleVariant.warning;
    case r'error':
      return Enum$MessageStyleVariant.error;
    default:
      return Enum$MessageStyleVariant.$unknown;
  }
}
