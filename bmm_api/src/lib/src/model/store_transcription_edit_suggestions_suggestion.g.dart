// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_transcription_edit_suggestions_suggestion.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StoreTranscriptionEditSuggestionsSuggestion
    extends StoreTranscriptionEditSuggestionsSuggestion {
  @override
  final int? segmentIndex;
  @override
  final String? originalText;
  @override
  final String? newText;

  factory _$StoreTranscriptionEditSuggestionsSuggestion(
          [void Function(StoreTranscriptionEditSuggestionsSuggestionBuilder)?
              updates]) =>
      (new StoreTranscriptionEditSuggestionsSuggestionBuilder()
            ..update(updates))
          ._build();

  _$StoreTranscriptionEditSuggestionsSuggestion._(
      {this.segmentIndex, this.originalText, this.newText})
      : super._();

  @override
  StoreTranscriptionEditSuggestionsSuggestion rebuild(
          void Function(StoreTranscriptionEditSuggestionsSuggestionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreTranscriptionEditSuggestionsSuggestionBuilder toBuilder() =>
      new StoreTranscriptionEditSuggestionsSuggestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreTranscriptionEditSuggestionsSuggestion &&
        segmentIndex == other.segmentIndex &&
        originalText == other.originalText &&
        newText == other.newText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, segmentIndex.hashCode);
    _$hash = $jc(_$hash, originalText.hashCode);
    _$hash = $jc(_$hash, newText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'StoreTranscriptionEditSuggestionsSuggestion')
          ..add('segmentIndex', segmentIndex)
          ..add('originalText', originalText)
          ..add('newText', newText))
        .toString();
  }
}

class StoreTranscriptionEditSuggestionsSuggestionBuilder
    implements
        Builder<StoreTranscriptionEditSuggestionsSuggestion,
            StoreTranscriptionEditSuggestionsSuggestionBuilder> {
  _$StoreTranscriptionEditSuggestionsSuggestion? _$v;

  int? _segmentIndex;
  int? get segmentIndex => _$this._segmentIndex;
  set segmentIndex(int? segmentIndex) => _$this._segmentIndex = segmentIndex;

  String? _originalText;
  String? get originalText => _$this._originalText;
  set originalText(String? originalText) => _$this._originalText = originalText;

  String? _newText;
  String? get newText => _$this._newText;
  set newText(String? newText) => _$this._newText = newText;

  StoreTranscriptionEditSuggestionsSuggestionBuilder() {
    StoreTranscriptionEditSuggestionsSuggestion._defaults(this);
  }

  StoreTranscriptionEditSuggestionsSuggestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _segmentIndex = $v.segmentIndex;
      _originalText = $v.originalText;
      _newText = $v.newText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreTranscriptionEditSuggestionsSuggestion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoreTranscriptionEditSuggestionsSuggestion;
  }

  @override
  void update(
      void Function(StoreTranscriptionEditSuggestionsSuggestionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  StoreTranscriptionEditSuggestionsSuggestion build() => _build();

  _$StoreTranscriptionEditSuggestionsSuggestion _build() {
    final _$result = _$v ??
        new _$StoreTranscriptionEditSuggestionsSuggestion._(
          segmentIndex: segmentIndex,
          originalText: originalText,
          newText: newText,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
