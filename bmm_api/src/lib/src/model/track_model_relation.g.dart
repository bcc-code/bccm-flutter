// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model_relation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackModelRelation extends TrackModelRelation {
  @override
  final String? type;
  @override
  final String? comment;
  @override
  final String? name;
  @override
  final int? timestamp;
  @override
  final int? id;
  @override
  final String? url;
  @override
  final BibleBookEnum? book;
  @override
  final int? chapter;
  @override
  final int? verse;
  @override
  final bool? hasListened;

  factory _$TrackModelRelation(
          [void Function(TrackModelRelationBuilder)? updates]) =>
      (new TrackModelRelationBuilder()..update(updates))._build();

  _$TrackModelRelation._(
      {this.type,
      this.comment,
      this.name,
      this.timestamp,
      this.id,
      this.url,
      this.book,
      this.chapter,
      this.verse,
      this.hasListened})
      : super._();

  @override
  TrackModelRelation rebuild(
          void Function(TrackModelRelationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackModelRelationBuilder toBuilder() =>
      new TrackModelRelationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackModelRelation &&
        type == other.type &&
        comment == other.comment &&
        name == other.name &&
        timestamp == other.timestamp &&
        id == other.id &&
        url == other.url &&
        book == other.book &&
        chapter == other.chapter &&
        verse == other.verse &&
        hasListened == other.hasListened;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, book.hashCode);
    _$hash = $jc(_$hash, chapter.hashCode);
    _$hash = $jc(_$hash, verse.hashCode);
    _$hash = $jc(_$hash, hasListened.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackModelRelation')
          ..add('type', type)
          ..add('comment', comment)
          ..add('name', name)
          ..add('timestamp', timestamp)
          ..add('id', id)
          ..add('url', url)
          ..add('book', book)
          ..add('chapter', chapter)
          ..add('verse', verse)
          ..add('hasListened', hasListened))
        .toString();
  }
}

class TrackModelRelationBuilder
    implements Builder<TrackModelRelation, TrackModelRelationBuilder> {
  _$TrackModelRelation? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _timestamp;
  int? get timestamp => _$this._timestamp;
  set timestamp(int? timestamp) => _$this._timestamp = timestamp;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  BibleBookEnum? _book;
  BibleBookEnum? get book => _$this._book;
  set book(BibleBookEnum? book) => _$this._book = book;

  int? _chapter;
  int? get chapter => _$this._chapter;
  set chapter(int? chapter) => _$this._chapter = chapter;

  int? _verse;
  int? get verse => _$this._verse;
  set verse(int? verse) => _$this._verse = verse;

  bool? _hasListened;
  bool? get hasListened => _$this._hasListened;
  set hasListened(bool? hasListened) => _$this._hasListened = hasListened;

  TrackModelRelationBuilder() {
    TrackModelRelation._defaults(this);
  }

  TrackModelRelationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _comment = $v.comment;
      _name = $v.name;
      _timestamp = $v.timestamp;
      _id = $v.id;
      _url = $v.url;
      _book = $v.book;
      _chapter = $v.chapter;
      _verse = $v.verse;
      _hasListened = $v.hasListened;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackModelRelation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackModelRelation;
  }

  @override
  void update(void Function(TrackModelRelationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackModelRelation build() => _build();

  _$TrackModelRelation _build() {
    final _$result = _$v ??
        new _$TrackModelRelation._(
            type: type,
            comment: comment,
            name: name,
            timestamp: timestamp,
            id: id,
            url: url,
            book: book,
            chapter: chapter,
            verse: verse,
            hasListened: hasListened);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
