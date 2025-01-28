// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuestionModelTypeEnum _$questionModelTypeEnum_question =
    const QuestionModelTypeEnum._('question');

QuestionModelTypeEnum _$questionModelTypeEnumValueOf(String name) {
  switch (name) {
    case 'question':
      return _$questionModelTypeEnum_question;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<QuestionModelTypeEnum> _$questionModelTypeEnumValues =
    new BuiltSet<QuestionModelTypeEnum>(const <QuestionModelTypeEnum>[
  _$questionModelTypeEnum_question,
]);

Serializer<QuestionModelTypeEnum> _$questionModelTypeEnumSerializer =
    new _$QuestionModelTypeEnumSerializer();

class _$QuestionModelTypeEnumSerializer
    implements PrimitiveSerializer<QuestionModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'question': 'question',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'question': 'question',
  };

  @override
  final Iterable<Type> types = const <Type>[QuestionModelTypeEnum];
  @override
  final String wireName = 'QuestionModelTypeEnum';

  @override
  Object serialize(Serializers serializers, QuestionModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QuestionModelTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QuestionModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$QuestionModel extends QuestionModel {
  @override
  final int id;
  @override
  final QuestionModelTypeEnum type;
  @override
  final String? questionImageLink;
  @override
  final String? questionText;
  @override
  final String? questionSubtext;
  @override
  final String? linkUrl;
  @override
  final String? linkText;
  @override
  final String? solutionTextPlaceholder;
  @override
  final String? solutionTextCorrect;
  @override
  final String? solutionTextWrong;
  @override
  final String? thankYouText;
  @override
  final QuestionQuestionStyle? style;
  @override
  final BuiltList<QuestionAnswer>? answers;
  @override
  final BuiltList<QuestionShortAnswer>? shortAnswers;

  factory _$QuestionModel([void Function(QuestionModelBuilder)? updates]) =>
      (new QuestionModelBuilder()..update(updates))._build();

  _$QuestionModel._(
      {required this.id,
      required this.type,
      this.questionImageLink,
      this.questionText,
      this.questionSubtext,
      this.linkUrl,
      this.linkText,
      this.solutionTextPlaceholder,
      this.solutionTextCorrect,
      this.solutionTextWrong,
      this.thankYouText,
      this.style,
      this.answers,
      this.shortAnswers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'QuestionModel', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'QuestionModel', 'type');
  }

  @override
  QuestionModel rebuild(void Function(QuestionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionModelBuilder toBuilder() => new QuestionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionModel &&
        id == other.id &&
        type == other.type &&
        questionImageLink == other.questionImageLink &&
        questionText == other.questionText &&
        questionSubtext == other.questionSubtext &&
        linkUrl == other.linkUrl &&
        linkText == other.linkText &&
        solutionTextPlaceholder == other.solutionTextPlaceholder &&
        solutionTextCorrect == other.solutionTextCorrect &&
        solutionTextWrong == other.solutionTextWrong &&
        thankYouText == other.thankYouText &&
        style == other.style &&
        answers == other.answers &&
        shortAnswers == other.shortAnswers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, questionImageLink.hashCode);
    _$hash = $jc(_$hash, questionText.hashCode);
    _$hash = $jc(_$hash, questionSubtext.hashCode);
    _$hash = $jc(_$hash, linkUrl.hashCode);
    _$hash = $jc(_$hash, linkText.hashCode);
    _$hash = $jc(_$hash, solutionTextPlaceholder.hashCode);
    _$hash = $jc(_$hash, solutionTextCorrect.hashCode);
    _$hash = $jc(_$hash, solutionTextWrong.hashCode);
    _$hash = $jc(_$hash, thankYouText.hashCode);
    _$hash = $jc(_$hash, style.hashCode);
    _$hash = $jc(_$hash, answers.hashCode);
    _$hash = $jc(_$hash, shortAnswers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionModel')
          ..add('id', id)
          ..add('type', type)
          ..add('questionImageLink', questionImageLink)
          ..add('questionText', questionText)
          ..add('questionSubtext', questionSubtext)
          ..add('linkUrl', linkUrl)
          ..add('linkText', linkText)
          ..add('solutionTextPlaceholder', solutionTextPlaceholder)
          ..add('solutionTextCorrect', solutionTextCorrect)
          ..add('solutionTextWrong', solutionTextWrong)
          ..add('thankYouText', thankYouText)
          ..add('style', style)
          ..add('answers', answers)
          ..add('shortAnswers', shortAnswers))
        .toString();
  }
}

class QuestionModelBuilder
    implements Builder<QuestionModel, QuestionModelBuilder> {
  _$QuestionModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  QuestionModelTypeEnum? _type;
  QuestionModelTypeEnum? get type => _$this._type;
  set type(QuestionModelTypeEnum? type) => _$this._type = type;

  String? _questionImageLink;
  String? get questionImageLink => _$this._questionImageLink;
  set questionImageLink(String? questionImageLink) =>
      _$this._questionImageLink = questionImageLink;

  String? _questionText;
  String? get questionText => _$this._questionText;
  set questionText(String? questionText) => _$this._questionText = questionText;

  String? _questionSubtext;
  String? get questionSubtext => _$this._questionSubtext;
  set questionSubtext(String? questionSubtext) =>
      _$this._questionSubtext = questionSubtext;

  String? _linkUrl;
  String? get linkUrl => _$this._linkUrl;
  set linkUrl(String? linkUrl) => _$this._linkUrl = linkUrl;

  String? _linkText;
  String? get linkText => _$this._linkText;
  set linkText(String? linkText) => _$this._linkText = linkText;

  String? _solutionTextPlaceholder;
  String? get solutionTextPlaceholder => _$this._solutionTextPlaceholder;
  set solutionTextPlaceholder(String? solutionTextPlaceholder) =>
      _$this._solutionTextPlaceholder = solutionTextPlaceholder;

  String? _solutionTextCorrect;
  String? get solutionTextCorrect => _$this._solutionTextCorrect;
  set solutionTextCorrect(String? solutionTextCorrect) =>
      _$this._solutionTextCorrect = solutionTextCorrect;

  String? _solutionTextWrong;
  String? get solutionTextWrong => _$this._solutionTextWrong;
  set solutionTextWrong(String? solutionTextWrong) =>
      _$this._solutionTextWrong = solutionTextWrong;

  String? _thankYouText;
  String? get thankYouText => _$this._thankYouText;
  set thankYouText(String? thankYouText) => _$this._thankYouText = thankYouText;

  QuestionQuestionStyle? _style;
  QuestionQuestionStyle? get style => _$this._style;
  set style(QuestionQuestionStyle? style) => _$this._style = style;

  ListBuilder<QuestionAnswer>? _answers;
  ListBuilder<QuestionAnswer> get answers =>
      _$this._answers ??= new ListBuilder<QuestionAnswer>();
  set answers(ListBuilder<QuestionAnswer>? answers) =>
      _$this._answers = answers;

  ListBuilder<QuestionShortAnswer>? _shortAnswers;
  ListBuilder<QuestionShortAnswer> get shortAnswers =>
      _$this._shortAnswers ??= new ListBuilder<QuestionShortAnswer>();
  set shortAnswers(ListBuilder<QuestionShortAnswer>? shortAnswers) =>
      _$this._shortAnswers = shortAnswers;

  QuestionModelBuilder() {
    QuestionModel._defaults(this);
  }

  QuestionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _questionImageLink = $v.questionImageLink;
      _questionText = $v.questionText;
      _questionSubtext = $v.questionSubtext;
      _linkUrl = $v.linkUrl;
      _linkText = $v.linkText;
      _solutionTextPlaceholder = $v.solutionTextPlaceholder;
      _solutionTextCorrect = $v.solutionTextCorrect;
      _solutionTextWrong = $v.solutionTextWrong;
      _thankYouText = $v.thankYouText;
      _style = $v.style;
      _answers = $v.answers?.toBuilder();
      _shortAnswers = $v.shortAnswers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionModel;
  }

  @override
  void update(void Function(QuestionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionModel build() => _build();

  _$QuestionModel _build() {
    _$QuestionModel _$result;
    try {
      _$result = _$v ??
          new _$QuestionModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'QuestionModel', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'QuestionModel', 'type'),
            questionImageLink: questionImageLink,
            questionText: questionText,
            questionSubtext: questionSubtext,
            linkUrl: linkUrl,
            linkText: linkText,
            solutionTextPlaceholder: solutionTextPlaceholder,
            solutionTextCorrect: solutionTextCorrect,
            solutionTextWrong: solutionTextWrong,
            thankYouText: thankYouText,
            style: style,
            answers: _answers?.build(),
            shortAnswers: _shortAnswers?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'answers';
        _answers?.build();
        _$failedField = 'shortAnswers';
        _shortAnswers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuestionModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
