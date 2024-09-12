// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_message_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InfoMessageModelTypeEnum _$infoMessageModelTypeEnum_infoMessage =
    const InfoMessageModelTypeEnum._('infoMessage');

InfoMessageModelTypeEnum _$infoMessageModelTypeEnumValueOf(String name) {
  switch (name) {
    case 'infoMessage':
      return _$infoMessageModelTypeEnum_infoMessage;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InfoMessageModelTypeEnum> _$infoMessageModelTypeEnumValues =
    new BuiltSet<InfoMessageModelTypeEnum>(const <InfoMessageModelTypeEnum>[
  _$infoMessageModelTypeEnum_infoMessage,
]);

Serializer<InfoMessageModelTypeEnum> _$infoMessageModelTypeEnumSerializer =
    new _$InfoMessageModelTypeEnumSerializer();

class _$InfoMessageModelTypeEnumSerializer
    implements PrimitiveSerializer<InfoMessageModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'infoMessage': 'InfoMessage',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InfoMessage': 'infoMessage',
  };

  @override
  final Iterable<Type> types = const <Type>[InfoMessageModelTypeEnum];
  @override
  final String wireName = 'InfoMessageModelTypeEnum';

  @override
  Object serialize(Serializers serializers, InfoMessageModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InfoMessageModelTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InfoMessageModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InfoMessageModel extends InfoMessageModel {
  @override
  final int id;
  @override
  final InfoMessageModelTypeEnum type;
  @override
  final String? translatedMessage;
  @override
  final String? messageText;
  @override
  final String? link;

  factory _$InfoMessageModel(
          [void Function(InfoMessageModelBuilder)? updates]) =>
      (new InfoMessageModelBuilder()..update(updates))._build();

  _$InfoMessageModel._(
      {required this.id,
      required this.type,
      this.translatedMessage,
      this.messageText,
      this.link})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'InfoMessageModel', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'InfoMessageModel', 'type');
  }

  @override
  InfoMessageModel rebuild(void Function(InfoMessageModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfoMessageModelBuilder toBuilder() =>
      new InfoMessageModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfoMessageModel &&
        id == other.id &&
        type == other.type &&
        translatedMessage == other.translatedMessage &&
        messageText == other.messageText &&
        link == other.link;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, translatedMessage.hashCode);
    _$hash = $jc(_$hash, messageText.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfoMessageModel')
          ..add('id', id)
          ..add('type', type)
          ..add('translatedMessage', translatedMessage)
          ..add('messageText', messageText)
          ..add('link', link))
        .toString();
  }
}

class InfoMessageModelBuilder
    implements Builder<InfoMessageModel, InfoMessageModelBuilder> {
  _$InfoMessageModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  InfoMessageModelTypeEnum? _type;
  InfoMessageModelTypeEnum? get type => _$this._type;
  set type(InfoMessageModelTypeEnum? type) => _$this._type = type;

  String? _translatedMessage;
  String? get translatedMessage => _$this._translatedMessage;
  set translatedMessage(String? translatedMessage) =>
      _$this._translatedMessage = translatedMessage;

  String? _messageText;
  String? get messageText => _$this._messageText;
  set messageText(String? messageText) => _$this._messageText = messageText;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  InfoMessageModelBuilder() {
    InfoMessageModel._defaults(this);
  }

  InfoMessageModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _translatedMessage = $v.translatedMessage;
      _messageText = $v.messageText;
      _link = $v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfoMessageModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InfoMessageModel;
  }

  @override
  void update(void Function(InfoMessageModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfoMessageModel build() => _build();

  _$InfoMessageModel _build() {
    final _$result = _$v ??
        new _$InfoMessageModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'InfoMessageModel', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'InfoMessageModel', 'type'),
            translatedMessage: translatedMessage,
            messageText: messageText,
            link: link);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
