// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model_parent_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackModelParentMeta extends TrackModelParentMeta {
  @override
  final BuiltList<String>? containedTypes;
  @override
  final bool? isVisible;
  @override
  final DateTime? modifiedAt;
  @override
  final String? modifiedBy;

  factory _$TrackModelParentMeta(
          [void Function(TrackModelParentMetaBuilder)? updates]) =>
      (new TrackModelParentMetaBuilder()..update(updates))._build();

  _$TrackModelParentMeta._(
      {this.containedTypes, this.isVisible, this.modifiedAt, this.modifiedBy})
      : super._();

  @override
  TrackModelParentMeta rebuild(
          void Function(TrackModelParentMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackModelParentMetaBuilder toBuilder() =>
      new TrackModelParentMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackModelParentMeta &&
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
    return (newBuiltValueToStringHelper(r'TrackModelParentMeta')
          ..add('containedTypes', containedTypes)
          ..add('isVisible', isVisible)
          ..add('modifiedAt', modifiedAt)
          ..add('modifiedBy', modifiedBy))
        .toString();
  }
}

class TrackModelParentMetaBuilder
    implements Builder<TrackModelParentMeta, TrackModelParentMetaBuilder> {
  _$TrackModelParentMeta? _$v;

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

  TrackModelParentMetaBuilder() {
    TrackModelParentMeta._defaults(this);
  }

  TrackModelParentMetaBuilder get _$this {
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
  void replace(TrackModelParentMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackModelParentMeta;
  }

  @override
  void update(void Function(TrackModelParentMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackModelParentMeta build() => _build();

  _$TrackModelParentMeta _build() {
    _$TrackModelParentMeta _$result;
    try {
      _$result = _$v ??
          new _$TrackModelParentMeta._(
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
            r'TrackModelParentMeta', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
