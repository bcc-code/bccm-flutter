enum Enum$ContributionTypeCode {
  LYRICIST,
  ARRANGER,
  SINGER,
  SPEAKER,
  OTHER,
  $unknown;

  factory Enum$ContributionTypeCode.fromJson(String value) =>
      fromJson$Enum$ContributionTypeCode(value);

  String toJson() => toJson$Enum$ContributionTypeCode(this);
}

String toJson$Enum$ContributionTypeCode(Enum$ContributionTypeCode e) {
  switch (e) {
    case Enum$ContributionTypeCode.LYRICIST:
      return r'LYRICIST';
    case Enum$ContributionTypeCode.ARRANGER:
      return r'ARRANGER';
    case Enum$ContributionTypeCode.SINGER:
      return r'SINGER';
    case Enum$ContributionTypeCode.SPEAKER:
      return r'SPEAKER';
    case Enum$ContributionTypeCode.OTHER:
      return r'OTHER';
    case Enum$ContributionTypeCode.$unknown:
      return r'$unknown';
  }
}

Enum$ContributionTypeCode fromJson$Enum$ContributionTypeCode(String value) {
  switch (value) {
    case r'LYRICIST':
      return Enum$ContributionTypeCode.LYRICIST;
    case r'ARRANGER':
      return Enum$ContributionTypeCode.ARRANGER;
    case r'SINGER':
      return Enum$ContributionTypeCode.SINGER;
    case r'SPEAKER':
      return Enum$ContributionTypeCode.SPEAKER;
    case r'OTHER':
      return Enum$ContributionTypeCode.OTHER;
    default:
      return Enum$ContributionTypeCode.$unknown;
  }
}
