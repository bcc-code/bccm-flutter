enum Enum$ContributionTypeCode {
  LYRICIST,
  ARRANGER,
  SINGER,
  SPEAKER,
  COMPOSER,
  SOLOIST,
  PERFORMER,
  TRANSLATOR,
  DIRECTOR,
  PRODUCER,
  SCRIPTWRITER,
  ACTOR,
  VOICEACTOR,
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
    case Enum$ContributionTypeCode.COMPOSER:
      return r'COMPOSER';
    case Enum$ContributionTypeCode.SOLOIST:
      return r'SOLOIST';
    case Enum$ContributionTypeCode.PERFORMER:
      return r'PERFORMER';
    case Enum$ContributionTypeCode.TRANSLATOR:
      return r'TRANSLATOR';
    case Enum$ContributionTypeCode.DIRECTOR:
      return r'DIRECTOR';
    case Enum$ContributionTypeCode.PRODUCER:
      return r'PRODUCER';
    case Enum$ContributionTypeCode.SCRIPTWRITER:
      return r'SCRIPTWRITER';
    case Enum$ContributionTypeCode.ACTOR:
      return r'ACTOR';
    case Enum$ContributionTypeCode.VOICEACTOR:
      return r'VOICEACTOR';
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
    case r'COMPOSER':
      return Enum$ContributionTypeCode.COMPOSER;
    case r'SOLOIST':
      return Enum$ContributionTypeCode.SOLOIST;
    case r'PERFORMER':
      return Enum$ContributionTypeCode.PERFORMER;
    case r'TRANSLATOR':
      return Enum$ContributionTypeCode.TRANSLATOR;
    case r'DIRECTOR':
      return Enum$ContributionTypeCode.DIRECTOR;
    case r'PRODUCER':
      return Enum$ContributionTypeCode.PRODUCER;
    case r'SCRIPTWRITER':
      return Enum$ContributionTypeCode.SCRIPTWRITER;
    case r'ACTOR':
      return Enum$ContributionTypeCode.ACTOR;
    case r'VOICEACTOR':
      return Enum$ContributionTypeCode.VOICEACTOR;
    case r'OTHER':
      return Enum$ContributionTypeCode.OTHER;
    default:
      return Enum$ContributionTypeCode.$unknown;
  }
}

enum Enum$PersonType {
  person,
  organization,
  $unknown;

  factory Enum$PersonType.fromJson(String value) =>
      fromJson$Enum$PersonType(value);

  String toJson() => toJson$Enum$PersonType(this);
}

String toJson$Enum$PersonType(Enum$PersonType e) {
  switch (e) {
    case Enum$PersonType.person:
      return r'person';
    case Enum$PersonType.organization:
      return r'organization';
    case Enum$PersonType.$unknown:
      return r'$unknown';
  }
}

Enum$PersonType fromJson$Enum$PersonType(String value) {
  switch (value) {
    case r'person':
      return Enum$PersonType.person;
    case r'organization':
      return Enum$PersonType.organization;
    default:
      return Enum$PersonType.$unknown;
  }
}
