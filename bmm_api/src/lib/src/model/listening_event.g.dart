// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listening_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListeningEvent extends ListeningEvent {
  @override
  final int? personId;
  @override
  final int? trackId;
  @override
  final DateTime? timestampStart;
  @override
  final String? language;
  @override
  final String? playbackOrigin;
  @override
  final int? lastPosition;
  @override
  final double? adjustedPlaybackSpeed;
  @override
  final String? os;

  factory _$ListeningEvent([void Function(ListeningEventBuilder)? updates]) =>
      (new ListeningEventBuilder()..update(updates))._build();

  _$ListeningEvent._(
      {this.personId,
      this.trackId,
      this.timestampStart,
      this.language,
      this.playbackOrigin,
      this.lastPosition,
      this.adjustedPlaybackSpeed,
      this.os})
      : super._();

  @override
  ListeningEvent rebuild(void Function(ListeningEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListeningEventBuilder toBuilder() =>
      new ListeningEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListeningEvent &&
        personId == other.personId &&
        trackId == other.trackId &&
        timestampStart == other.timestampStart &&
        language == other.language &&
        playbackOrigin == other.playbackOrigin &&
        lastPosition == other.lastPosition &&
        adjustedPlaybackSpeed == other.adjustedPlaybackSpeed &&
        os == other.os;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, trackId.hashCode);
    _$hash = $jc(_$hash, timestampStart.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, playbackOrigin.hashCode);
    _$hash = $jc(_$hash, lastPosition.hashCode);
    _$hash = $jc(_$hash, adjustedPlaybackSpeed.hashCode);
    _$hash = $jc(_$hash, os.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListeningEvent')
          ..add('personId', personId)
          ..add('trackId', trackId)
          ..add('timestampStart', timestampStart)
          ..add('language', language)
          ..add('playbackOrigin', playbackOrigin)
          ..add('lastPosition', lastPosition)
          ..add('adjustedPlaybackSpeed', adjustedPlaybackSpeed)
          ..add('os', os))
        .toString();
  }
}

class ListeningEventBuilder
    implements Builder<ListeningEvent, ListeningEventBuilder> {
  _$ListeningEvent? _$v;

  int? _personId;
  int? get personId => _$this._personId;
  set personId(int? personId) => _$this._personId = personId;

  int? _trackId;
  int? get trackId => _$this._trackId;
  set trackId(int? trackId) => _$this._trackId = trackId;

  DateTime? _timestampStart;
  DateTime? get timestampStart => _$this._timestampStart;
  set timestampStart(DateTime? timestampStart) =>
      _$this._timestampStart = timestampStart;

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

  String? _os;
  String? get os => _$this._os;
  set os(String? os) => _$this._os = os;

  ListeningEventBuilder() {
    ListeningEvent._defaults(this);
  }

  ListeningEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _personId = $v.personId;
      _trackId = $v.trackId;
      _timestampStart = $v.timestampStart;
      _language = $v.language;
      _playbackOrigin = $v.playbackOrigin;
      _lastPosition = $v.lastPosition;
      _adjustedPlaybackSpeed = $v.adjustedPlaybackSpeed;
      _os = $v.os;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListeningEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListeningEvent;
  }

  @override
  void update(void Function(ListeningEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListeningEvent build() => _build();

  _$ListeningEvent _build() {
    final _$result = _$v ??
        new _$ListeningEvent._(
            personId: personId,
            trackId: trackId,
            timestampStart: timestampStart,
            language: language,
            playbackOrigin: playbackOrigin,
            lastPosition: lastPosition,
            adjustedPlaybackSpeed: adjustedPlaybackSpeed,
            os: os);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
