// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lyrics_verse.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LyricsVerse extends LyricsVerse {
  @override
  final String? title;
  @override
  final String? text;

  factory _$LyricsVerse([void Function(LyricsVerseBuilder)? updates]) =>
      (new LyricsVerseBuilder()..update(updates))._build();

  _$LyricsVerse._({this.title, this.text}) : super._();

  @override
  LyricsVerse rebuild(void Function(LyricsVerseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LyricsVerseBuilder toBuilder() => new LyricsVerseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LyricsVerse && title == other.title && text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LyricsVerse')
          ..add('title', title)
          ..add('text', text))
        .toString();
  }
}

class LyricsVerseBuilder implements Builder<LyricsVerse, LyricsVerseBuilder> {
  _$LyricsVerse? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  LyricsVerseBuilder() {
    LyricsVerse._defaults(this);
  }

  LyricsVerseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LyricsVerse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LyricsVerse;
  }

  @override
  void update(void Function(LyricsVerseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LyricsVerse build() => _build();

  _$LyricsVerse _build() {
    final _$result = _$v ??
        new _$LyricsVerse._(
          title: title,
          text: text,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
