// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_message_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TileMessageModelTypeEnum _$tileMessageModelTypeEnum_tileMessage =
    const TileMessageModelTypeEnum._('tileMessage');

TileMessageModelTypeEnum _$tileMessageModelTypeEnumValueOf(String name) {
  switch (name) {
    case 'tileMessage':
      return _$tileMessageModelTypeEnum_tileMessage;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TileMessageModelTypeEnum> _$tileMessageModelTypeEnumValues =
    new BuiltSet<TileMessageModelTypeEnum>(const <TileMessageModelTypeEnum>[
  _$tileMessageModelTypeEnum_tileMessage,
]);

Serializer<TileMessageModelTypeEnum> _$tileMessageModelTypeEnumSerializer =
    new _$TileMessageModelTypeEnumSerializer();

class _$TileMessageModelTypeEnumSerializer
    implements PrimitiveSerializer<TileMessageModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'tileMessage': 'tile_message',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'tile_message': 'tileMessage',
  };

  @override
  final Iterable<Type> types = const <Type>[TileMessageModelTypeEnum];
  @override
  final String wireName = 'TileMessageModelTypeEnum';

  @override
  Object serialize(Serializers serializers, TileMessageModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TileMessageModelTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TileMessageModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TileMessageModel extends TileMessageModel {
  @override
  final int id;
  @override
  final TileMessageModelTypeEnum type;
  @override
  final String? header;
  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? buttonText;
  @override
  final String? buttonUrl;

  factory _$TileMessageModel(
          [void Function(TileMessageModelBuilder)? updates]) =>
      (new TileMessageModelBuilder()..update(updates))._build();

  _$TileMessageModel._(
      {required this.id,
      required this.type,
      this.header,
      this.title,
      this.subtitle,
      this.buttonText,
      this.buttonUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TileMessageModel', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'TileMessageModel', 'type');
  }

  @override
  TileMessageModel rebuild(void Function(TileMessageModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TileMessageModelBuilder toBuilder() =>
      new TileMessageModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TileMessageModel &&
        id == other.id &&
        type == other.type &&
        header == other.header &&
        title == other.title &&
        subtitle == other.subtitle &&
        buttonText == other.buttonText &&
        buttonUrl == other.buttonUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, subtitle.hashCode);
    _$hash = $jc(_$hash, buttonText.hashCode);
    _$hash = $jc(_$hash, buttonUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TileMessageModel')
          ..add('id', id)
          ..add('type', type)
          ..add('header', header)
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('buttonText', buttonText)
          ..add('buttonUrl', buttonUrl))
        .toString();
  }
}

class TileMessageModelBuilder
    implements Builder<TileMessageModel, TileMessageModelBuilder> {
  _$TileMessageModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  TileMessageModelTypeEnum? _type;
  TileMessageModelTypeEnum? get type => _$this._type;
  set type(TileMessageModelTypeEnum? type) => _$this._type = type;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(String? subtitle) => _$this._subtitle = subtitle;

  String? _buttonText;
  String? get buttonText => _$this._buttonText;
  set buttonText(String? buttonText) => _$this._buttonText = buttonText;

  String? _buttonUrl;
  String? get buttonUrl => _$this._buttonUrl;
  set buttonUrl(String? buttonUrl) => _$this._buttonUrl = buttonUrl;

  TileMessageModelBuilder() {
    TileMessageModel._defaults(this);
  }

  TileMessageModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _header = $v.header;
      _title = $v.title;
      _subtitle = $v.subtitle;
      _buttonText = $v.buttonText;
      _buttonUrl = $v.buttonUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TileMessageModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TileMessageModel;
  }

  @override
  void update(void Function(TileMessageModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TileMessageModel build() => _build();

  _$TileMessageModel _build() {
    final _$result = _$v ??
        new _$TileMessageModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TileMessageModel', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'TileMessageModel', 'type'),
            header: header,
            title: title,
            subtitle: subtitle,
            buttonText: buttonText,
            buttonUrl: buttonUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
