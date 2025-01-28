// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model_medium.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackModelMedium extends TrackModelMedium {
  @override
  final MediaTypeEnum? type;
  @override
  final bool? isVisible;
  @override
  final BuiltList<TrackModelMediumFile>? files;

  factory _$TrackModelMedium(
          [void Function(TrackModelMediumBuilder)? updates]) =>
      (new TrackModelMediumBuilder()..update(updates))._build();

  _$TrackModelMedium._({this.type, this.isVisible, this.files}) : super._();

  @override
  TrackModelMedium rebuild(void Function(TrackModelMediumBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackModelMediumBuilder toBuilder() =>
      new TrackModelMediumBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackModelMedium &&
        type == other.type &&
        isVisible == other.isVisible &&
        files == other.files;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, isVisible.hashCode);
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackModelMedium')
          ..add('type', type)
          ..add('isVisible', isVisible)
          ..add('files', files))
        .toString();
  }
}

class TrackModelMediumBuilder
    implements Builder<TrackModelMedium, TrackModelMediumBuilder> {
  _$TrackModelMedium? _$v;

  MediaTypeEnum? _type;
  MediaTypeEnum? get type => _$this._type;
  set type(MediaTypeEnum? type) => _$this._type = type;

  bool? _isVisible;
  bool? get isVisible => _$this._isVisible;
  set isVisible(bool? isVisible) => _$this._isVisible = isVisible;

  ListBuilder<TrackModelMediumFile>? _files;
  ListBuilder<TrackModelMediumFile> get files =>
      _$this._files ??= new ListBuilder<TrackModelMediumFile>();
  set files(ListBuilder<TrackModelMediumFile>? files) => _$this._files = files;

  TrackModelMediumBuilder() {
    TrackModelMedium._defaults(this);
  }

  TrackModelMediumBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _isVisible = $v.isVisible;
      _files = $v.files?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackModelMedium other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackModelMedium;
  }

  @override
  void update(void Function(TrackModelMediumBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackModelMedium build() => _build();

  _$TrackModelMedium _build() {
    _$TrackModelMedium _$result;
    try {
      _$result = _$v ??
          new _$TrackModelMedium._(
            type: type,
            isVisible: isVisible,
            files: _files?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'files';
        _files?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TrackModelMedium', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
