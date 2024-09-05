// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_list_reference.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackListReference extends TrackListReference {
  @override
  final int? id;

  factory _$TrackListReference(
          [void Function(TrackListReferenceBuilder)? updates]) =>
      (new TrackListReferenceBuilder()..update(updates))._build();

  _$TrackListReference._({this.id}) : super._();

  @override
  TrackListReference rebuild(
          void Function(TrackListReferenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackListReferenceBuilder toBuilder() =>
      new TrackListReferenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackListReference && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackListReference')..add('id', id))
        .toString();
  }
}

class TrackListReferenceBuilder
    implements Builder<TrackListReference, TrackListReferenceBuilder> {
  _$TrackListReference? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  TrackListReferenceBuilder() {
    TrackListReference._defaults(this);
  }

  TrackListReferenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackListReference other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackListReference;
  }

  @override
  void update(void Function(TrackListReferenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackListReference build() => _build();

  _$TrackListReference _build() {
    final _$result = _$v ?? new _$TrackListReference._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
