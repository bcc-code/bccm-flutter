// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model_medium_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackModelMediumFile extends TrackModelMediumFile {
  @override
  final String? mimeType;
  @override
  final int? size;
  @override
  final int? duration;
  @override
  final String? url;

  factory _$TrackModelMediumFile(
          [void Function(TrackModelMediumFileBuilder)? updates]) =>
      (new TrackModelMediumFileBuilder()..update(updates))._build();

  _$TrackModelMediumFile._({this.mimeType, this.size, this.duration, this.url})
      : super._();

  @override
  TrackModelMediumFile rebuild(
          void Function(TrackModelMediumFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackModelMediumFileBuilder toBuilder() =>
      new TrackModelMediumFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackModelMediumFile &&
        mimeType == other.mimeType &&
        size == other.size &&
        duration == other.duration &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mimeType.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackModelMediumFile')
          ..add('mimeType', mimeType)
          ..add('size', size)
          ..add('duration', duration)
          ..add('url', url))
        .toString();
  }
}

class TrackModelMediumFileBuilder
    implements Builder<TrackModelMediumFile, TrackModelMediumFileBuilder> {
  _$TrackModelMediumFile? _$v;

  String? _mimeType;
  String? get mimeType => _$this._mimeType;
  set mimeType(String? mimeType) => _$this._mimeType = mimeType;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  TrackModelMediumFileBuilder() {
    TrackModelMediumFile._defaults(this);
  }

  TrackModelMediumFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mimeType = $v.mimeType;
      _size = $v.size;
      _duration = $v.duration;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackModelMediumFile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackModelMediumFile;
  }

  @override
  void update(void Function(TrackModelMediumFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackModelMediumFile build() => _build();

  _$TrackModelMediumFile _build() {
    final _$result = _$v ??
        new _$TrackModelMediumFile._(
            mimeType: mimeType, size: size, duration: duration, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
