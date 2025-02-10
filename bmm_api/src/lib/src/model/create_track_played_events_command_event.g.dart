// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_track_played_events_command_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTrackPlayedEventsCommandEvent
    extends CreateTrackPlayedEventsCommandEvent {
  @override
  final String? id;
  @override
  final int? personId;
  @override
  final int? trackId;
  @override
  final double? uniqueSecondsListened;
  @override
  final ListenedStatus? status;
  @override
  final double? percentage;
  @override
  final double? trackLength;
  @override
  final DateTime? timestampStart;
  @override
  final DateTime? timestampEnd;
  @override
  final double? spentTime;
  @override
  final TrackSubtype? typeOfTrack;
  @override
  final ResourceAvailability? availability;
  @override
  final int? albumId;
  @override
  final BuiltList<String>? tags;
  @override
  final bool? sentAfterStartup;
  @override
  final String? language;
  @override
  final String? playbackOrigin;
  @override
  final int? lastPosition;
  @override
  final double? adjustedPlaybackSpeed;
  @override
  final String? client;

  factory _$CreateTrackPlayedEventsCommandEvent(
          [void Function(CreateTrackPlayedEventsCommandEventBuilder)?
              updates]) =>
      (new CreateTrackPlayedEventsCommandEventBuilder()..update(updates))
          ._build();

  _$CreateTrackPlayedEventsCommandEvent._(
      {this.id,
      this.personId,
      this.trackId,
      this.uniqueSecondsListened,
      this.status,
      this.percentage,
      this.trackLength,
      this.timestampStart,
      this.timestampEnd,
      this.spentTime,
      this.typeOfTrack,
      this.availability,
      this.albumId,
      this.tags,
      this.sentAfterStartup,
      this.language,
      this.playbackOrigin,
      this.lastPosition,
      this.adjustedPlaybackSpeed,
      this.client})
      : super._();

  @override
  CreateTrackPlayedEventsCommandEvent rebuild(
          void Function(CreateTrackPlayedEventsCommandEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTrackPlayedEventsCommandEventBuilder toBuilder() =>
      new CreateTrackPlayedEventsCommandEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTrackPlayedEventsCommandEvent &&
        id == other.id &&
        personId == other.personId &&
        trackId == other.trackId &&
        uniqueSecondsListened == other.uniqueSecondsListened &&
        status == other.status &&
        percentage == other.percentage &&
        trackLength == other.trackLength &&
        timestampStart == other.timestampStart &&
        timestampEnd == other.timestampEnd &&
        spentTime == other.spentTime &&
        typeOfTrack == other.typeOfTrack &&
        availability == other.availability &&
        albumId == other.albumId &&
        tags == other.tags &&
        sentAfterStartup == other.sentAfterStartup &&
        language == other.language &&
        playbackOrigin == other.playbackOrigin &&
        lastPosition == other.lastPosition &&
        adjustedPlaybackSpeed == other.adjustedPlaybackSpeed &&
        client == other.client;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, trackId.hashCode);
    _$hash = $jc(_$hash, uniqueSecondsListened.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, percentage.hashCode);
    _$hash = $jc(_$hash, trackLength.hashCode);
    _$hash = $jc(_$hash, timestampStart.hashCode);
    _$hash = $jc(_$hash, timestampEnd.hashCode);
    _$hash = $jc(_$hash, spentTime.hashCode);
    _$hash = $jc(_$hash, typeOfTrack.hashCode);
    _$hash = $jc(_$hash, availability.hashCode);
    _$hash = $jc(_$hash, albumId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, sentAfterStartup.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, playbackOrigin.hashCode);
    _$hash = $jc(_$hash, lastPosition.hashCode);
    _$hash = $jc(_$hash, adjustedPlaybackSpeed.hashCode);
    _$hash = $jc(_$hash, client.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTrackPlayedEventsCommandEvent')
          ..add('id', id)
          ..add('personId', personId)
          ..add('trackId', trackId)
          ..add('uniqueSecondsListened', uniqueSecondsListened)
          ..add('status', status)
          ..add('percentage', percentage)
          ..add('trackLength', trackLength)
          ..add('timestampStart', timestampStart)
          ..add('timestampEnd', timestampEnd)
          ..add('spentTime', spentTime)
          ..add('typeOfTrack', typeOfTrack)
          ..add('availability', availability)
          ..add('albumId', albumId)
          ..add('tags', tags)
          ..add('sentAfterStartup', sentAfterStartup)
          ..add('language', language)
          ..add('playbackOrigin', playbackOrigin)
          ..add('lastPosition', lastPosition)
          ..add('adjustedPlaybackSpeed', adjustedPlaybackSpeed)
          ..add('client', client))
        .toString();
  }
}

class CreateTrackPlayedEventsCommandEventBuilder
    implements
        Builder<CreateTrackPlayedEventsCommandEvent,
            CreateTrackPlayedEventsCommandEventBuilder> {
  _$CreateTrackPlayedEventsCommandEvent? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _personId;
  int? get personId => _$this._personId;
  set personId(int? personId) => _$this._personId = personId;

  int? _trackId;
  int? get trackId => _$this._trackId;
  set trackId(int? trackId) => _$this._trackId = trackId;

  double? _uniqueSecondsListened;
  double? get uniqueSecondsListened => _$this._uniqueSecondsListened;
  set uniqueSecondsListened(double? uniqueSecondsListened) =>
      _$this._uniqueSecondsListened = uniqueSecondsListened;

  ListenedStatus? _status;
  ListenedStatus? get status => _$this._status;
  set status(ListenedStatus? status) => _$this._status = status;

  double? _percentage;
  double? get percentage => _$this._percentage;
  set percentage(double? percentage) => _$this._percentage = percentage;

  double? _trackLength;
  double? get trackLength => _$this._trackLength;
  set trackLength(double? trackLength) => _$this._trackLength = trackLength;

  DateTime? _timestampStart;
  DateTime? get timestampStart => _$this._timestampStart;
  set timestampStart(DateTime? timestampStart) =>
      _$this._timestampStart = timestampStart;

  DateTime? _timestampEnd;
  DateTime? get timestampEnd => _$this._timestampEnd;
  set timestampEnd(DateTime? timestampEnd) =>
      _$this._timestampEnd = timestampEnd;

  double? _spentTime;
  double? get spentTime => _$this._spentTime;
  set spentTime(double? spentTime) => _$this._spentTime = spentTime;

  TrackSubtype? _typeOfTrack;
  TrackSubtype? get typeOfTrack => _$this._typeOfTrack;
  set typeOfTrack(TrackSubtype? typeOfTrack) =>
      _$this._typeOfTrack = typeOfTrack;

  ResourceAvailability? _availability;
  ResourceAvailability? get availability => _$this._availability;
  set availability(ResourceAvailability? availability) =>
      _$this._availability = availability;

  int? _albumId;
  int? get albumId => _$this._albumId;
  set albumId(int? albumId) => _$this._albumId = albumId;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  bool? _sentAfterStartup;
  bool? get sentAfterStartup => _$this._sentAfterStartup;
  set sentAfterStartup(bool? sentAfterStartup) =>
      _$this._sentAfterStartup = sentAfterStartup;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _playbackOrigin;
  String? get playbackOrigin => _$this._playbackOrigin;
  set playbackOrigin(String? playbackOrigin) =>
      _$this._playbackOrigin = playbackOrigin;

  int? _lastPosition;
  int? get lastPosition => _$this._lastPosition;
  set lastPosition(int? lastPosition) => _$this._lastPosition = lastPosition;

  double? _adjustedPlaybackSpeed;
  double? get adjustedPlaybackSpeed => _$this._adjustedPlaybackSpeed;
  set adjustedPlaybackSpeed(double? adjustedPlaybackSpeed) =>
      _$this._adjustedPlaybackSpeed = adjustedPlaybackSpeed;

  String? _client;
  String? get client => _$this._client;
  set client(String? client) => _$this._client = client;

  CreateTrackPlayedEventsCommandEventBuilder() {
    CreateTrackPlayedEventsCommandEvent._defaults(this);
  }

  CreateTrackPlayedEventsCommandEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _personId = $v.personId;
      _trackId = $v.trackId;
      _uniqueSecondsListened = $v.uniqueSecondsListened;
      _status = $v.status;
      _percentage = $v.percentage;
      _trackLength = $v.trackLength;
      _timestampStart = $v.timestampStart;
      _timestampEnd = $v.timestampEnd;
      _spentTime = $v.spentTime;
      _typeOfTrack = $v.typeOfTrack;
      _availability = $v.availability;
      _albumId = $v.albumId;
      _tags = $v.tags?.toBuilder();
      _sentAfterStartup = $v.sentAfterStartup;
      _language = $v.language;
      _playbackOrigin = $v.playbackOrigin;
      _lastPosition = $v.lastPosition;
      _adjustedPlaybackSpeed = $v.adjustedPlaybackSpeed;
      _client = $v.client;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTrackPlayedEventsCommandEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTrackPlayedEventsCommandEvent;
  }

  @override
  void update(
      void Function(CreateTrackPlayedEventsCommandEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTrackPlayedEventsCommandEvent build() => _build();

  _$CreateTrackPlayedEventsCommandEvent _build() {
    _$CreateTrackPlayedEventsCommandEvent _$result;
    try {
      _$result = _$v ??
          new _$CreateTrackPlayedEventsCommandEvent._(
            id: id,
            personId: personId,
            trackId: trackId,
            uniqueSecondsListened: uniqueSecondsListened,
            status: status,
            percentage: percentage,
            trackLength: trackLength,
            timestampStart: timestampStart,
            timestampEnd: timestampEnd,
            spentTime: spentTime,
            typeOfTrack: typeOfTrack,
            availability: availability,
            albumId: albumId,
            tags: _tags?.build(),
            sentAfterStartup: sentAfterStartup,
            language: language,
            playbackOrigin: playbackOrigin,
            lastPosition: lastPosition,
            adjustedPlaybackSpeed: adjustedPlaybackSpeed,
            client: client,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTrackPlayedEventsCommandEvent',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
