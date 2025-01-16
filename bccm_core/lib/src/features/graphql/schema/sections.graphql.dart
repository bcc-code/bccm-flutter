enum Enum$SectionSize {
  small,
  medium,
  $unknown;

  factory Enum$SectionSize.fromJson(String value) =>
      fromJson$Enum$SectionSize(value);

  String toJson() => toJson$Enum$SectionSize(this);
}

String toJson$Enum$SectionSize(Enum$SectionSize e) {
  switch (e) {
    case Enum$SectionSize.small:
      return r'small';
    case Enum$SectionSize.medium:
      return r'medium';
    case Enum$SectionSize.$unknown:
      return r'$unknown';
  }
}

Enum$SectionSize fromJson$Enum$SectionSize(String value) {
  switch (value) {
    case r'small':
      return Enum$SectionSize.small;
    case r'medium':
      return Enum$SectionSize.medium;
    default:
      return Enum$SectionSize.$unknown;
  }
}

enum Enum$CardSectionSize {
  large,
  mini,
  $unknown;

  factory Enum$CardSectionSize.fromJson(String value) =>
      fromJson$Enum$CardSectionSize(value);

  String toJson() => toJson$Enum$CardSectionSize(this);
}

String toJson$Enum$CardSectionSize(Enum$CardSectionSize e) {
  switch (e) {
    case Enum$CardSectionSize.large:
      return r'large';
    case Enum$CardSectionSize.mini:
      return r'mini';
    case Enum$CardSectionSize.$unknown:
      return r'$unknown';
  }
}

Enum$CardSectionSize fromJson$Enum$CardSectionSize(String value) {
  switch (value) {
    case r'large':
      return Enum$CardSectionSize.large;
    case r'mini':
      return Enum$CardSectionSize.mini;
    default:
      return Enum$CardSectionSize.$unknown;
  }
}

enum Enum$GridSectionSize {
  half,
  $unknown;

  factory Enum$GridSectionSize.fromJson(String value) =>
      fromJson$Enum$GridSectionSize(value);

  String toJson() => toJson$Enum$GridSectionSize(this);
}

String toJson$Enum$GridSectionSize(Enum$GridSectionSize e) {
  switch (e) {
    case Enum$GridSectionSize.half:
      return r'half';
    case Enum$GridSectionSize.$unknown:
      return r'$unknown';
  }
}

Enum$GridSectionSize fromJson$Enum$GridSectionSize(String value) {
  switch (value) {
    case r'half':
      return Enum$GridSectionSize.half;
    default:
      return Enum$GridSectionSize.$unknown;
  }
}

enum Enum$AchievementsSource {
  internal,
  bmm,
  $unknown;

  factory Enum$AchievementsSource.fromJson(String value) =>
      fromJson$Enum$AchievementsSource(value);

  String toJson() => toJson$Enum$AchievementsSource(this);
}

String toJson$Enum$AchievementsSource(Enum$AchievementsSource e) {
  switch (e) {
    case Enum$AchievementsSource.internal:
      return r'internal';
    case Enum$AchievementsSource.bmm:
      return r'bmm';
    case Enum$AchievementsSource.$unknown:
      return r'$unknown';
  }
}

Enum$AchievementsSource fromJson$Enum$AchievementsSource(String value) {
  switch (value) {
    case r'internal':
      return Enum$AchievementsSource.internal;
    case r'bmm':
      return Enum$AchievementsSource.bmm;
    default:
      return Enum$AchievementsSource.$unknown;
  }
}
