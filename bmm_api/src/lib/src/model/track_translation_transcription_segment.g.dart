// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_translation_transcription_segment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackTranslationTranscriptionSegment
    extends TrackTranslationTranscriptionSegment {
  @override
  final int? id;
  @override
  final double? start;
  @override
  final double? end;
  @override
  final String? text;

  factory _$TrackTranslationTranscriptionSegment(
          [void Function(TrackTranslationTranscriptionSegmentBuilder)?
              updates]) =>
      (new TrackTranslationTranscriptionSegmentBuilder()..update(updates))
          ._build();

  _$TrackTranslationTranscriptionSegment._(
      {this.id, this.start, this.end, this.text})
      : super._();

  @override
  TrackTranslationTranscriptionSegment rebuild(
          void Function(TrackTranslationTranscriptionSegmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackTranslationTranscriptionSegmentBuilder toBuilder() =>
      new TrackTranslationTranscriptionSegmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackTranslationTranscriptionSegment &&
        id == other.id &&
        start == other.start &&
        end == other.end &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackTranslationTranscriptionSegment')
          ..add('id', id)
          ..add('start', start)
          ..add('end', end)
          ..add('text', text))
        .toString();
  }
}

class TrackTranslationTranscriptionSegmentBuilder
    implements
        Builder<TrackTranslationTranscriptionSegment,
            TrackTranslationTranscriptionSegmentBuilder> {
  _$TrackTranslationTranscriptionSegment? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  double? _start;
  double? get start => _$this._start;
  set start(double? start) => _$this._start = start;

  double? _end;
  double? get end => _$this._end;
  set end(double? end) => _$this._end = end;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  TrackTranslationTranscriptionSegmentBuilder() {
    TrackTranslationTranscriptionSegment._defaults(this);
  }

  TrackTranslationTranscriptionSegmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _start = $v.start;
      _end = $v.end;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackTranslationTranscriptionSegment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackTranslationTranscriptionSegment;
  }

  @override
  void update(
      void Function(TrackTranslationTranscriptionSegmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackTranslationTranscriptionSegment build() => _build();

  _$TrackTranslationTranscriptionSegment _build() {
    final _$result = _$v ??
        new _$TrackTranslationTranscriptionSegment._(
          id: id,
          start: start,
          end: end,
          text: text,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
