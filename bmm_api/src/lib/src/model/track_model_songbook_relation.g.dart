// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model_songbook_relation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackModelSongbookRelation extends TrackModelSongbookRelation {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? comment;
  @override
  final int? timestamp;

  factory _$TrackModelSongbookRelation(
          [void Function(TrackModelSongbookRelationBuilder)? updates]) =>
      (new TrackModelSongbookRelationBuilder()..update(updates))._build();

  _$TrackModelSongbookRelation._(
      {this.id, this.name, this.comment, this.timestamp})
      : super._();

  @override
  TrackModelSongbookRelation rebuild(
          void Function(TrackModelSongbookRelationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackModelSongbookRelationBuilder toBuilder() =>
      new TrackModelSongbookRelationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackModelSongbookRelation &&
        id == other.id &&
        name == other.name &&
        comment == other.comment &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackModelSongbookRelation')
          ..add('id', id)
          ..add('name', name)
          ..add('comment', comment)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class TrackModelSongbookRelationBuilder
    implements
        Builder<TrackModelSongbookRelation, TrackModelSongbookRelationBuilder> {
  _$TrackModelSongbookRelation? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  int? _timestamp;
  int? get timestamp => _$this._timestamp;
  set timestamp(int? timestamp) => _$this._timestamp = timestamp;

  TrackModelSongbookRelationBuilder() {
    TrackModelSongbookRelation._defaults(this);
  }

  TrackModelSongbookRelationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _comment = $v.comment;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackModelSongbookRelation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackModelSongbookRelation;
  }

  @override
  void update(void Function(TrackModelSongbookRelationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackModelSongbookRelation build() => _build();

  _$TrackModelSongbookRelation _build() {
    final _$result = _$v ??
        new _$TrackModelSongbookRelation._(
          id: id,
          name: name,
          comment: comment,
          timestamp: timestamp,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
