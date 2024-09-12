// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'year_in_review_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const YearInReviewModelTypeEnum _$yearInReviewModelTypeEnum_yearInReview =
    const YearInReviewModelTypeEnum._('yearInReview');

YearInReviewModelTypeEnum _$yearInReviewModelTypeEnumValueOf(String name) {
  switch (name) {
    case 'yearInReview':
      return _$yearInReviewModelTypeEnum_yearInReview;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<YearInReviewModelTypeEnum> _$yearInReviewModelTypeEnumValues =
    new BuiltSet<YearInReviewModelTypeEnum>(const <YearInReviewModelTypeEnum>[
  _$yearInReviewModelTypeEnum_yearInReview,
]);

Serializer<YearInReviewModelTypeEnum> _$yearInReviewModelTypeEnumSerializer =
    new _$YearInReviewModelTypeEnumSerializer();

class _$YearInReviewModelTypeEnumSerializer
    implements PrimitiveSerializer<YearInReviewModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'yearInReview': 'year_in_review',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'year_in_review': 'yearInReview',
  };

  @override
  final Iterable<Type> types = const <Type>[YearInReviewModelTypeEnum];
  @override
  final String wireName = 'YearInReviewModelTypeEnum';

  @override
  Object serialize(Serializers serializers, YearInReviewModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  YearInReviewModelTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      YearInReviewModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$YearInReviewModel extends YearInReviewModel {
  @override
  final int id;
  @override
  final YearInReviewModelTypeEnum type;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? buttonTitle;
  @override
  final String? buttonLink;
  @override
  final String? playlistName;

  factory _$YearInReviewModel(
          [void Function(YearInReviewModelBuilder)? updates]) =>
      (new YearInReviewModelBuilder()..update(updates))._build();

  _$YearInReviewModel._(
      {required this.id,
      required this.type,
      this.title,
      this.description,
      this.buttonTitle,
      this.buttonLink,
      this.playlistName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'YearInReviewModel', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'YearInReviewModel', 'type');
  }

  @override
  YearInReviewModel rebuild(void Function(YearInReviewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YearInReviewModelBuilder toBuilder() =>
      new YearInReviewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YearInReviewModel &&
        id == other.id &&
        type == other.type &&
        title == other.title &&
        description == other.description &&
        buttonTitle == other.buttonTitle &&
        buttonLink == other.buttonLink &&
        playlistName == other.playlistName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, buttonTitle.hashCode);
    _$hash = $jc(_$hash, buttonLink.hashCode);
    _$hash = $jc(_$hash, playlistName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'YearInReviewModel')
          ..add('id', id)
          ..add('type', type)
          ..add('title', title)
          ..add('description', description)
          ..add('buttonTitle', buttonTitle)
          ..add('buttonLink', buttonLink)
          ..add('playlistName', playlistName))
        .toString();
  }
}

class YearInReviewModelBuilder
    implements Builder<YearInReviewModel, YearInReviewModelBuilder> {
  _$YearInReviewModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  YearInReviewModelTypeEnum? _type;
  YearInReviewModelTypeEnum? get type => _$this._type;
  set type(YearInReviewModelTypeEnum? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _buttonTitle;
  String? get buttonTitle => _$this._buttonTitle;
  set buttonTitle(String? buttonTitle) => _$this._buttonTitle = buttonTitle;

  String? _buttonLink;
  String? get buttonLink => _$this._buttonLink;
  set buttonLink(String? buttonLink) => _$this._buttonLink = buttonLink;

  String? _playlistName;
  String? get playlistName => _$this._playlistName;
  set playlistName(String? playlistName) => _$this._playlistName = playlistName;

  YearInReviewModelBuilder() {
    YearInReviewModel._defaults(this);
  }

  YearInReviewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _title = $v.title;
      _description = $v.description;
      _buttonTitle = $v.buttonTitle;
      _buttonLink = $v.buttonLink;
      _playlistName = $v.playlistName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YearInReviewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$YearInReviewModel;
  }

  @override
  void update(void Function(YearInReviewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  YearInReviewModel build() => _build();

  _$YearInReviewModel _build() {
    final _$result = _$v ??
        new _$YearInReviewModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'YearInReviewModel', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'YearInReviewModel', 'type'),
            title: title,
            description: description,
            buttonTitle: buttonTitle,
            buttonLink: buttonLink,
            playlistName: playlistName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
