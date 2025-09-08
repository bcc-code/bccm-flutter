enum Enum$ExportStatus {
  $new,
  processing,
  ready,
  error,
  expired,
  $unknown;

  factory Enum$ExportStatus.fromJson(String value) =>
      fromJson$Enum$ExportStatus(value);

  String toJson() => toJson$Enum$ExportStatus(this);
}

String toJson$Enum$ExportStatus(Enum$ExportStatus e) {
  switch (e) {
    case Enum$ExportStatus.$new:
      return r'new';
    case Enum$ExportStatus.processing:
      return r'processing';
    case Enum$ExportStatus.ready:
      return r'ready';
    case Enum$ExportStatus.error:
      return r'error';
    case Enum$ExportStatus.expired:
      return r'expired';
    case Enum$ExportStatus.$unknown:
      return r'$unknown';
  }
}

Enum$ExportStatus fromJson$Enum$ExportStatus(String value) {
  switch (value) {
    case r'new':
      return Enum$ExportStatus.$new;
    case r'processing':
      return Enum$ExportStatus.processing;
    case r'ready':
      return Enum$ExportStatus.ready;
    case r'error':
      return Enum$ExportStatus.error;
    case r'expired':
      return Enum$ExportStatus.expired;
    default:
      return Enum$ExportStatus.$unknown;
  }
}
