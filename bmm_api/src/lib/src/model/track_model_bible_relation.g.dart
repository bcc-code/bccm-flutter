// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model_bible_relation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackModelBibleRelation extends TrackModelBibleRelation {
  @override
  final BibleBookEnum? book;
  @override
  final int? chapter;
  @override
  final int? verse;
  @override
  final String? comment;
  @override
  final int? timestamp;

  factory _$TrackModelBibleRelation(
          [void Function(TrackModelBibleRelationBuilder)? updates]) =>
      (new TrackModelBibleRelationBuilder()..update(updates))._build();

  _$TrackModelBibleRelation._(
      {this.book, this.chapter, this.verse, this.comment, this.timestamp})
      : super._();

  @override
  TrackModelBibleRelation rebuild(
          void Function(TrackModelBibleRelationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackModelBibleRelationBuilder toBuilder() =>
      new TrackModelBibleRelationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackModelBibleRelation &&
        book == other.book &&
        chapter == other.chapter &&
        verse == other.verse &&
        comment == other.comment &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, book.hashCode);
    _$hash = $jc(_$hash, chapter.hashCode);
    _$hash = $jc(_$hash, verse.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackModelBibleRelation')
          ..add('book', book)
          ..add('chapter', chapter)
          ..add('verse', verse)
          ..add('comment', comment)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class TrackModelBibleRelationBuilder
    implements
        Builder<TrackModelBibleRelation, TrackModelBibleRelationBuilder> {
  _$TrackModelBibleRelation? _$v;

  BibleBookEnum? _book;
  BibleBookEnum? get book => _$this._book;
  set book(BibleBookEnum? book) => _$this._book = book;

  int? _chapter;
  int? get chapter => _$this._chapter;
  set chapter(int? chapter) => _$this._chapter = chapter;

  int? _verse;
  int? get verse => _$this._verse;
  set verse(int? verse) => _$this._verse = verse;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  int? _timestamp;
  int? get timestamp => _$this._timestamp;
  set timestamp(int? timestamp) => _$this._timestamp = timestamp;

  TrackModelBibleRelationBuilder() {
    TrackModelBibleRelation._defaults(this);
  }

  TrackModelBibleRelationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _book = $v.book;
      _chapter = $v.chapter;
      _verse = $v.verse;
      _comment = $v.comment;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackModelBibleRelation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackModelBibleRelation;
  }

  @override
  void update(void Function(TrackModelBibleRelationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackModelBibleRelation build() => _build();

  _$TrackModelBibleRelation _build() {
    final _$result = _$v ??
        new _$TrackModelBibleRelation._(
            book: book,
            chapter: chapter,
            verse: verse,
            comment: comment,
            timestamp: timestamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
