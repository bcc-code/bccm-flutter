// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model_contributor_relation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackModelContributorRelation extends TrackModelContributorRelation {
  @override
  final TrackModelTrackContributorType? type;
  @override
  final int? id;
  @override
  final String? name;

  factory _$TrackModelContributorRelation(
          [void Function(TrackModelContributorRelationBuilder)? updates]) =>
      (new TrackModelContributorRelationBuilder()..update(updates))._build();

  _$TrackModelContributorRelation._({this.type, this.id, this.name})
      : super._();

  @override
  TrackModelContributorRelation rebuild(
          void Function(TrackModelContributorRelationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackModelContributorRelationBuilder toBuilder() =>
      new TrackModelContributorRelationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackModelContributorRelation &&
        type == other.type &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackModelContributorRelation')
          ..add('type', type)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class TrackModelContributorRelationBuilder
    implements
        Builder<TrackModelContributorRelation,
            TrackModelContributorRelationBuilder> {
  _$TrackModelContributorRelation? _$v;

  TrackModelTrackContributorType? _type;
  TrackModelTrackContributorType? get type => _$this._type;
  set type(TrackModelTrackContributorType? type) => _$this._type = type;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  TrackModelContributorRelationBuilder() {
    TrackModelContributorRelation._defaults(this);
  }

  TrackModelContributorRelationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackModelContributorRelation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackModelContributorRelation;
  }

  @override
  void update(void Function(TrackModelContributorRelationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackModelContributorRelation build() => _build();

  _$TrackModelContributorRelation _build() {
    final _$result = _$v ??
        new _$TrackModelContributorRelation._(type: type, id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
