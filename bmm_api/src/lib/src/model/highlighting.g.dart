// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlighting.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Highlighting extends Highlighting {
  @override
  final String? id;
  @override
  final String? text;
  @override
  final int? startPositionInSeconds;
  @override
  final int? firstSegmentIndex;
  @override
  final int? lastSegmentIndex;
  @override
  final LanguageEnum? language;

  factory _$Highlighting([void Function(HighlightingBuilder)? updates]) =>
      (new HighlightingBuilder()..update(updates))._build();

  _$Highlighting._(
      {this.id,
      this.text,
      this.startPositionInSeconds,
      this.firstSegmentIndex,
      this.lastSegmentIndex,
      this.language})
      : super._();

  @override
  Highlighting rebuild(void Function(HighlightingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HighlightingBuilder toBuilder() => new HighlightingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Highlighting &&
        id == other.id &&
        text == other.text &&
        startPositionInSeconds == other.startPositionInSeconds &&
        firstSegmentIndex == other.firstSegmentIndex &&
        lastSegmentIndex == other.lastSegmentIndex &&
        language == other.language;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, startPositionInSeconds.hashCode);
    _$hash = $jc(_$hash, firstSegmentIndex.hashCode);
    _$hash = $jc(_$hash, lastSegmentIndex.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Highlighting')
          ..add('id', id)
          ..add('text', text)
          ..add('startPositionInSeconds', startPositionInSeconds)
          ..add('firstSegmentIndex', firstSegmentIndex)
          ..add('lastSegmentIndex', lastSegmentIndex)
          ..add('language', language))
        .toString();
  }
}

class HighlightingBuilder
    implements Builder<Highlighting, HighlightingBuilder> {
  _$Highlighting? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  int? _startPositionInSeconds;
  int? get startPositionInSeconds => _$this._startPositionInSeconds;
  set startPositionInSeconds(int? startPositionInSeconds) =>
      _$this._startPositionInSeconds = startPositionInSeconds;

  int? _firstSegmentIndex;
  int? get firstSegmentIndex => _$this._firstSegmentIndex;
  set firstSegmentIndex(int? firstSegmentIndex) =>
      _$this._firstSegmentIndex = firstSegmentIndex;

  int? _lastSegmentIndex;
  int? get lastSegmentIndex => _$this._lastSegmentIndex;
  set lastSegmentIndex(int? lastSegmentIndex) =>
      _$this._lastSegmentIndex = lastSegmentIndex;

  LanguageEnum? _language;
  LanguageEnum? get language => _$this._language;
  set language(LanguageEnum? language) => _$this._language = language;

  HighlightingBuilder() {
    Highlighting._defaults(this);
  }

  HighlightingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _text = $v.text;
      _startPositionInSeconds = $v.startPositionInSeconds;
      _firstSegmentIndex = $v.firstSegmentIndex;
      _lastSegmentIndex = $v.lastSegmentIndex;
      _language = $v.language;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Highlighting other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Highlighting;
  }

  @override
  void update(void Function(HighlightingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Highlighting build() => _build();

  _$Highlighting _build() {
    final _$result = _$v ??
        new _$Highlighting._(
          id: id,
          text: text,
          startPositionInSeconds: startPositionInSeconds,
          firstSegmentIndex: firstSegmentIndex,
          lastSegmentIndex: lastSegmentIndex,
          language: language,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
