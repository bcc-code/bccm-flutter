// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcription_segment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TranscriptionSegment extends TranscriptionSegment {
  @override
  final int? id;
  @override
  final double? start;
  @override
  final double? end;
  @override
  final String? text;
  @override
  final bool? isHeader;

  factory _$TranscriptionSegment(
          [void Function(TranscriptionSegmentBuilder)? updates]) =>
      (new TranscriptionSegmentBuilder()..update(updates))._build();

  _$TranscriptionSegment._(
      {this.id, this.start, this.end, this.text, this.isHeader})
      : super._();

  @override
  TranscriptionSegment rebuild(
          void Function(TranscriptionSegmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranscriptionSegmentBuilder toBuilder() =>
      new TranscriptionSegmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranscriptionSegment &&
        id == other.id &&
        start == other.start &&
        end == other.end &&
        text == other.text &&
        isHeader == other.isHeader;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, isHeader.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TranscriptionSegment')
          ..add('id', id)
          ..add('start', start)
          ..add('end', end)
          ..add('text', text)
          ..add('isHeader', isHeader))
        .toString();
  }
}

class TranscriptionSegmentBuilder
    implements Builder<TranscriptionSegment, TranscriptionSegmentBuilder> {
  _$TranscriptionSegment? _$v;

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

  bool? _isHeader;
  bool? get isHeader => _$this._isHeader;
  set isHeader(bool? isHeader) => _$this._isHeader = isHeader;

  TranscriptionSegmentBuilder() {
    TranscriptionSegment._defaults(this);
  }

  TranscriptionSegmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _start = $v.start;
      _end = $v.end;
      _text = $v.text;
      _isHeader = $v.isHeader;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranscriptionSegment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TranscriptionSegment;
  }

  @override
  void update(void Function(TranscriptionSegmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TranscriptionSegment build() => _build();

  _$TranscriptionSegment _build() {
    final _$result = _$v ??
        new _$TranscriptionSegment._(
          id: id,
          start: start,
          end: end,
          text: text,
          isHeader: isHeader,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
