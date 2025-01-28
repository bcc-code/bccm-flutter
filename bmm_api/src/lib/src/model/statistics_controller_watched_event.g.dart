// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_controller_watched_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatisticsControllerWatchedEvent
    extends StatisticsControllerWatchedEvent {
  @override
  final String? episodeId;
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

  factory _$StatisticsControllerWatchedEvent(
          [void Function(StatisticsControllerWatchedEventBuilder)? updates]) =>
      (new StatisticsControllerWatchedEventBuilder()..update(updates))._build();

  _$StatisticsControllerWatchedEvent._(
      {this.episodeId,
      this.timestampStart,
      this.language,
      this.playbackOrigin,
      this.lastPosition,
      this.adjustedPlaybackSpeed,
      this.os})
      : super._();

  @override
  StatisticsControllerWatchedEvent rebuild(
          void Function(StatisticsControllerWatchedEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatisticsControllerWatchedEventBuilder toBuilder() =>
      new StatisticsControllerWatchedEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatisticsControllerWatchedEvent &&
        episodeId == other.episodeId &&
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
    _$hash = $jc(_$hash, episodeId.hashCode);
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
    return (newBuiltValueToStringHelper(r'StatisticsControllerWatchedEvent')
          ..add('episodeId', episodeId)
          ..add('timestampStart', timestampStart)
          ..add('language', language)
          ..add('playbackOrigin', playbackOrigin)
          ..add('lastPosition', lastPosition)
          ..add('adjustedPlaybackSpeed', adjustedPlaybackSpeed)
          ..add('os', os))
        .toString();
  }
}

class StatisticsControllerWatchedEventBuilder
    implements
        Builder<StatisticsControllerWatchedEvent,
            StatisticsControllerWatchedEventBuilder> {
  _$StatisticsControllerWatchedEvent? _$v;

  String? _episodeId;
  String? get episodeId => _$this._episodeId;
  set episodeId(String? episodeId) => _$this._episodeId = episodeId;

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

  StatisticsControllerWatchedEventBuilder() {
    StatisticsControllerWatchedEvent._defaults(this);
  }

  StatisticsControllerWatchedEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _episodeId = $v.episodeId;
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
  void replace(StatisticsControllerWatchedEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatisticsControllerWatchedEvent;
  }

  @override
  void update(void Function(StatisticsControllerWatchedEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatisticsControllerWatchedEvent build() => _build();

  _$StatisticsControllerWatchedEvent _build() {
    final _$result = _$v ??
        new _$StatisticsControllerWatchedEvent._(
          episodeId: episodeId,
          timestampStart: timestampStart,
          language: language,
          playbackOrigin: playbackOrigin,
          lastPosition: lastPosition,
          adjustedPlaybackSpeed: adjustedPlaybackSpeed,
          os: os,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
