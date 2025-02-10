// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_top_songs_collection_model_track_and_count.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTopSongsCollectionModelTrackAndCount
    extends GetTopSongsCollectionModelTrackAndCount {
  @override
  final TrackModel? track;
  @override
  final int? playCount;

  factory _$GetTopSongsCollectionModelTrackAndCount(
          [void Function(GetTopSongsCollectionModelTrackAndCountBuilder)?
              updates]) =>
      (new GetTopSongsCollectionModelTrackAndCountBuilder()..update(updates))
          ._build();

  _$GetTopSongsCollectionModelTrackAndCount._({this.track, this.playCount})
      : super._();

  @override
  GetTopSongsCollectionModelTrackAndCount rebuild(
          void Function(GetTopSongsCollectionModelTrackAndCountBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTopSongsCollectionModelTrackAndCountBuilder toBuilder() =>
      new GetTopSongsCollectionModelTrackAndCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTopSongsCollectionModelTrackAndCount &&
        track == other.track &&
        playCount == other.playCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, track.hashCode);
    _$hash = $jc(_$hash, playCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetTopSongsCollectionModelTrackAndCount')
          ..add('track', track)
          ..add('playCount', playCount))
        .toString();
  }
}

class GetTopSongsCollectionModelTrackAndCountBuilder
    implements
        Builder<GetTopSongsCollectionModelTrackAndCount,
            GetTopSongsCollectionModelTrackAndCountBuilder> {
  _$GetTopSongsCollectionModelTrackAndCount? _$v;

  TrackModelBuilder? _track;
  TrackModelBuilder get track => _$this._track ??= new TrackModelBuilder();
  set track(TrackModelBuilder? track) => _$this._track = track;

  int? _playCount;
  int? get playCount => _$this._playCount;
  set playCount(int? playCount) => _$this._playCount = playCount;

  GetTopSongsCollectionModelTrackAndCountBuilder() {
    GetTopSongsCollectionModelTrackAndCount._defaults(this);
  }

  GetTopSongsCollectionModelTrackAndCountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _track = $v.track?.toBuilder();
      _playCount = $v.playCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTopSongsCollectionModelTrackAndCount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTopSongsCollectionModelTrackAndCount;
  }

  @override
  void update(
      void Function(GetTopSongsCollectionModelTrackAndCountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTopSongsCollectionModelTrackAndCount build() => _build();

  _$GetTopSongsCollectionModelTrackAndCount _build() {
    _$GetTopSongsCollectionModelTrackAndCount _$result;
    try {
      _$result = _$v ??
          new _$GetTopSongsCollectionModelTrackAndCount._(
            track: _track?.build(),
            playCount: playCount,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'track';
        _track?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTopSongsCollectionModelTrackAndCount',
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
