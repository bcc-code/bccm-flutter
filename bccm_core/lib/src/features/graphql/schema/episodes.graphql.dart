enum Enum$EpisodeType {
  episode,
  standalone,
  $unknown;

  factory Enum$EpisodeType.fromJson(String value) =>
      fromJson$Enum$EpisodeType(value);

  String toJson() => toJson$Enum$EpisodeType(this);
}

String toJson$Enum$EpisodeType(Enum$EpisodeType e) {
  switch (e) {
    case Enum$EpisodeType.episode:
      return r'episode';
    case Enum$EpisodeType.standalone:
      return r'standalone';
    case Enum$EpisodeType.$unknown:
      return r'$unknown';
  }
}

Enum$EpisodeType fromJson$Enum$EpisodeType(String value) {
  switch (value) {
    case r'episode':
      return Enum$EpisodeType.episode;
    case r'standalone':
      return Enum$EpisodeType.standalone;
    default:
      return Enum$EpisodeType.$unknown;
  }
}

enum Enum$ShareRestriction {
  registered,
  members,
  public,
  $unknown;

  factory Enum$ShareRestriction.fromJson(String value) =>
      fromJson$Enum$ShareRestriction(value);

  String toJson() => toJson$Enum$ShareRestriction(this);
}

String toJson$Enum$ShareRestriction(Enum$ShareRestriction e) {
  switch (e) {
    case Enum$ShareRestriction.registered:
      return r'registered';
    case Enum$ShareRestriction.members:
      return r'members';
    case Enum$ShareRestriction.public:
      return r'public';
    case Enum$ShareRestriction.$unknown:
      return r'$unknown';
  }
}

Enum$ShareRestriction fromJson$Enum$ShareRestriction(String value) {
  switch (value) {
    case r'registered':
      return Enum$ShareRestriction.registered;
    case r'members':
      return Enum$ShareRestriction.members;
    case r'public':
      return Enum$ShareRestriction.public;
    default:
      return Enum$ShareRestriction.$unknown;
  }
}

enum Enum$StreamType {
  hls_ts,
  hls_cmaf,
  dash,
  $unknown;

  factory Enum$StreamType.fromJson(String value) =>
      fromJson$Enum$StreamType(value);

  String toJson() => toJson$Enum$StreamType(this);
}

String toJson$Enum$StreamType(Enum$StreamType e) {
  switch (e) {
    case Enum$StreamType.hls_ts:
      return r'hls_ts';
    case Enum$StreamType.hls_cmaf:
      return r'hls_cmaf';
    case Enum$StreamType.dash:
      return r'dash';
    case Enum$StreamType.$unknown:
      return r'$unknown';
  }
}

Enum$StreamType fromJson$Enum$StreamType(String value) {
  switch (value) {
    case r'hls_ts':
      return Enum$StreamType.hls_ts;
    case r'hls_cmaf':
      return Enum$StreamType.hls_cmaf;
    case r'dash':
      return Enum$StreamType.dash;
    default:
      return Enum$StreamType.$unknown;
  }
}

enum Enum$PrimaryMediaType {
  video,
  audio,
  $unknown;

  factory Enum$PrimaryMediaType.fromJson(String value) =>
      fromJson$Enum$PrimaryMediaType(value);

  String toJson() => toJson$Enum$PrimaryMediaType(this);
}

String toJson$Enum$PrimaryMediaType(Enum$PrimaryMediaType e) {
  switch (e) {
    case Enum$PrimaryMediaType.video:
      return r'video';
    case Enum$PrimaryMediaType.audio:
      return r'audio';
    case Enum$PrimaryMediaType.$unknown:
      return r'$unknown';
  }
}

Enum$PrimaryMediaType fromJson$Enum$PrimaryMediaType(String value) {
  switch (value) {
    case r'video':
      return Enum$PrimaryMediaType.video;
    case r'audio':
      return Enum$PrimaryMediaType.audio;
    default:
      return Enum$PrimaryMediaType.$unknown;
  }
}
