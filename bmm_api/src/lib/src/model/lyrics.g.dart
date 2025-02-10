// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lyrics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Lyrics extends Lyrics {
  @override
  final int? id;
  @override
  final String? type;
  @override
  final TranscriptionTranscriptionSource? source_;
  @override
  final String? songTitle;
  @override
  final BuiltList<int>? lyricists;
  @override
  final BuiltList<int>? composers;
  @override
  final String? shortCopyright;
  @override
  final String? longCopyright;
  @override
  final int? yearPublished;
  @override
  final BuiltList<LyricsVerse>? verses;
  @override
  final String? originalUrl;
  @override
  final String? modifiedBy;
  @override
  final DateTime? modifiedAt;

  factory _$Lyrics([void Function(LyricsBuilder)? updates]) =>
      (new LyricsBuilder()..update(updates))._build();

  _$Lyrics._(
      {this.id,
      this.type,
      this.source_,
      this.songTitle,
      this.lyricists,
      this.composers,
      this.shortCopyright,
      this.longCopyright,
      this.yearPublished,
      this.verses,
      this.originalUrl,
      this.modifiedBy,
      this.modifiedAt})
      : super._();

  @override
  Lyrics rebuild(void Function(LyricsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LyricsBuilder toBuilder() => new LyricsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Lyrics &&
        id == other.id &&
        type == other.type &&
        source_ == other.source_ &&
        songTitle == other.songTitle &&
        lyricists == other.lyricists &&
        composers == other.composers &&
        shortCopyright == other.shortCopyright &&
        longCopyright == other.longCopyright &&
        yearPublished == other.yearPublished &&
        verses == other.verses &&
        originalUrl == other.originalUrl &&
        modifiedBy == other.modifiedBy &&
        modifiedAt == other.modifiedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, songTitle.hashCode);
    _$hash = $jc(_$hash, lyricists.hashCode);
    _$hash = $jc(_$hash, composers.hashCode);
    _$hash = $jc(_$hash, shortCopyright.hashCode);
    _$hash = $jc(_$hash, longCopyright.hashCode);
    _$hash = $jc(_$hash, yearPublished.hashCode);
    _$hash = $jc(_$hash, verses.hashCode);
    _$hash = $jc(_$hash, originalUrl.hashCode);
    _$hash = $jc(_$hash, modifiedBy.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Lyrics')
          ..add('id', id)
          ..add('type', type)
          ..add('source_', source_)
          ..add('songTitle', songTitle)
          ..add('lyricists', lyricists)
          ..add('composers', composers)
          ..add('shortCopyright', shortCopyright)
          ..add('longCopyright', longCopyright)
          ..add('yearPublished', yearPublished)
          ..add('verses', verses)
          ..add('originalUrl', originalUrl)
          ..add('modifiedBy', modifiedBy)
          ..add('modifiedAt', modifiedAt))
        .toString();
  }
}

class LyricsBuilder implements Builder<Lyrics, LyricsBuilder> {
  _$Lyrics? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  TranscriptionTranscriptionSource? _source_;
  TranscriptionTranscriptionSource? get source_ => _$this._source_;
  set source_(TranscriptionTranscriptionSource? source_) =>
      _$this._source_ = source_;

  String? _songTitle;
  String? get songTitle => _$this._songTitle;
  set songTitle(String? songTitle) => _$this._songTitle = songTitle;

  ListBuilder<int>? _lyricists;
  ListBuilder<int> get lyricists =>
      _$this._lyricists ??= new ListBuilder<int>();
  set lyricists(ListBuilder<int>? lyricists) => _$this._lyricists = lyricists;

  ListBuilder<int>? _composers;
  ListBuilder<int> get composers =>
      _$this._composers ??= new ListBuilder<int>();
  set composers(ListBuilder<int>? composers) => _$this._composers = composers;

  String? _shortCopyright;
  String? get shortCopyright => _$this._shortCopyright;
  set shortCopyright(String? shortCopyright) =>
      _$this._shortCopyright = shortCopyright;

  String? _longCopyright;
  String? get longCopyright => _$this._longCopyright;
  set longCopyright(String? longCopyright) =>
      _$this._longCopyright = longCopyright;

  int? _yearPublished;
  int? get yearPublished => _$this._yearPublished;
  set yearPublished(int? yearPublished) =>
      _$this._yearPublished = yearPublished;

  ListBuilder<LyricsVerse>? _verses;
  ListBuilder<LyricsVerse> get verses =>
      _$this._verses ??= new ListBuilder<LyricsVerse>();
  set verses(ListBuilder<LyricsVerse>? verses) => _$this._verses = verses;

  String? _originalUrl;
  String? get originalUrl => _$this._originalUrl;
  set originalUrl(String? originalUrl) => _$this._originalUrl = originalUrl;

  String? _modifiedBy;
  String? get modifiedBy => _$this._modifiedBy;
  set modifiedBy(String? modifiedBy) => _$this._modifiedBy = modifiedBy;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  LyricsBuilder() {
    Lyrics._defaults(this);
  }

  LyricsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _source_ = $v.source_;
      _songTitle = $v.songTitle;
      _lyricists = $v.lyricists?.toBuilder();
      _composers = $v.composers?.toBuilder();
      _shortCopyright = $v.shortCopyright;
      _longCopyright = $v.longCopyright;
      _yearPublished = $v.yearPublished;
      _verses = $v.verses?.toBuilder();
      _originalUrl = $v.originalUrl;
      _modifiedBy = $v.modifiedBy;
      _modifiedAt = $v.modifiedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Lyrics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Lyrics;
  }

  @override
  void update(void Function(LyricsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Lyrics build() => _build();

  _$Lyrics _build() {
    _$Lyrics _$result;
    try {
      _$result = _$v ??
          new _$Lyrics._(
            id: id,
            type: type,
            source_: source_,
            songTitle: songTitle,
            lyricists: _lyricists?.build(),
            composers: _composers?.build(),
            shortCopyright: shortCopyright,
            longCopyright: longCopyright,
            yearPublished: yearPublished,
            verses: _verses?.build(),
            originalUrl: originalUrl,
            modifiedBy: modifiedBy,
            modifiedAt: modifiedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lyricists';
        _lyricists?.build();
        _$failedField = 'composers';
        _composers?.build();

        _$failedField = 'verses';
        _verses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Lyrics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
