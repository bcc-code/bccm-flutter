// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_model_album_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlbumModelAlbumMeta extends AlbumModelAlbumMeta {
  @override
  final BuiltList<String>? containedTypes;
  @override
  final bool? isVisible;
  @override
  final DateTime? modifiedAt;
  @override
  final String? modifiedBy;

  factory _$AlbumModelAlbumMeta(
          [void Function(AlbumModelAlbumMetaBuilder)? updates]) =>
      (new AlbumModelAlbumMetaBuilder()..update(updates))._build();

  _$AlbumModelAlbumMeta._(
      {this.containedTypes, this.isVisible, this.modifiedAt, this.modifiedBy})
      : super._();

  @override
  AlbumModelAlbumMeta rebuild(
          void Function(AlbumModelAlbumMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlbumModelAlbumMetaBuilder toBuilder() =>
      new AlbumModelAlbumMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlbumModelAlbumMeta &&
        containedTypes == other.containedTypes &&
        isVisible == other.isVisible &&
        modifiedAt == other.modifiedAt &&
        modifiedBy == other.modifiedBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, containedTypes.hashCode);
    _$hash = $jc(_$hash, isVisible.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, modifiedBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlbumModelAlbumMeta')
          ..add('containedTypes', containedTypes)
          ..add('isVisible', isVisible)
          ..add('modifiedAt', modifiedAt)
          ..add('modifiedBy', modifiedBy))
        .toString();
  }
}

class AlbumModelAlbumMetaBuilder
    implements Builder<AlbumModelAlbumMeta, AlbumModelAlbumMetaBuilder> {
  _$AlbumModelAlbumMeta? _$v;

  ListBuilder<String>? _containedTypes;
  ListBuilder<String> get containedTypes =>
      _$this._containedTypes ??= new ListBuilder<String>();
  set containedTypes(ListBuilder<String>? containedTypes) =>
      _$this._containedTypes = containedTypes;

  bool? _isVisible;
  bool? get isVisible => _$this._isVisible;
  set isVisible(bool? isVisible) => _$this._isVisible = isVisible;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  String? _modifiedBy;
  String? get modifiedBy => _$this._modifiedBy;
  set modifiedBy(String? modifiedBy) => _$this._modifiedBy = modifiedBy;

  AlbumModelAlbumMetaBuilder() {
    AlbumModelAlbumMeta._defaults(this);
  }

  AlbumModelAlbumMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _containedTypes = $v.containedTypes?.toBuilder();
      _isVisible = $v.isVisible;
      _modifiedAt = $v.modifiedAt;
      _modifiedBy = $v.modifiedBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlbumModelAlbumMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlbumModelAlbumMeta;
  }

  @override
  void update(void Function(AlbumModelAlbumMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlbumModelAlbumMeta build() => _build();

  _$AlbumModelAlbumMeta _build() {
    _$AlbumModelAlbumMeta _$result;
    try {
      _$result = _$v ??
          new _$AlbumModelAlbumMeta._(
              containedTypes: _containedTypes?.build(),
              isVisible: isVisible,
              modifiedAt: modifiedAt,
              modifiedBy: modifiedBy);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'containedTypes';
        _containedTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AlbumModelAlbumMeta', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
