// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_video_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TileVideoModelTypeEnum _$tileVideoModelTypeEnum_tileVideo =
    const TileVideoModelTypeEnum._('tileVideo');

TileVideoModelTypeEnum _$tileVideoModelTypeEnumValueOf(String name) {
  switch (name) {
    case 'tileVideo':
      return _$tileVideoModelTypeEnum_tileVideo;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TileVideoModelTypeEnum> _$tileVideoModelTypeEnumValues =
    new BuiltSet<TileVideoModelTypeEnum>(const <TileVideoModelTypeEnum>[
  _$tileVideoModelTypeEnum_tileVideo,
]);

Serializer<TileVideoModelTypeEnum> _$tileVideoModelTypeEnumSerializer =
    new _$TileVideoModelTypeEnumSerializer();

class _$TileVideoModelTypeEnumSerializer
    implements PrimitiveSerializer<TileVideoModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'tileVideo': 'tile_video',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'tile_video': 'tileVideo',
  };

  @override
  final Iterable<Type> types = const <Type>[TileVideoModelTypeEnum];
  @override
  final String wireName = 'TileVideoModelTypeEnum';

  @override
  Object serialize(Serializers serializers, TileVideoModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TileVideoModelTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TileVideoModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TileVideoModel extends TileVideoModel {
  @override
  final int id;
  @override
  final TileVideoModelTypeEnum type;
  @override
  final String? header;
  @override
  final String? buttonText;
  @override
  final String? buttonUrl;
  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? videoFileName;

  factory _$TileVideoModel([void Function(TileVideoModelBuilder)? updates]) =>
      (new TileVideoModelBuilder()..update(updates))._build();

  _$TileVideoModel._(
      {required this.id,
      required this.type,
      this.header,
      this.buttonText,
      this.buttonUrl,
      this.title,
      this.subtitle,
      this.videoFileName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TileVideoModel', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'TileVideoModel', 'type');
  }

  @override
  TileVideoModel rebuild(void Function(TileVideoModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TileVideoModelBuilder toBuilder() =>
      new TileVideoModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TileVideoModel &&
        id == other.id &&
        type == other.type &&
        header == other.header &&
        buttonText == other.buttonText &&
        buttonUrl == other.buttonUrl &&
        title == other.title &&
        subtitle == other.subtitle &&
        videoFileName == other.videoFileName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, buttonText.hashCode);
    _$hash = $jc(_$hash, buttonUrl.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, subtitle.hashCode);
    _$hash = $jc(_$hash, videoFileName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TileVideoModel')
          ..add('id', id)
          ..add('type', type)
          ..add('header', header)
          ..add('buttonText', buttonText)
          ..add('buttonUrl', buttonUrl)
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('videoFileName', videoFileName))
        .toString();
  }
}

class TileVideoModelBuilder
    implements Builder<TileVideoModel, TileVideoModelBuilder> {
  _$TileVideoModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  TileVideoModelTypeEnum? _type;
  TileVideoModelTypeEnum? get type => _$this._type;
  set type(TileVideoModelTypeEnum? type) => _$this._type = type;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  String? _buttonText;
  String? get buttonText => _$this._buttonText;
  set buttonText(String? buttonText) => _$this._buttonText = buttonText;

  String? _buttonUrl;
  String? get buttonUrl => _$this._buttonUrl;
  set buttonUrl(String? buttonUrl) => _$this._buttonUrl = buttonUrl;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(String? subtitle) => _$this._subtitle = subtitle;

  String? _videoFileName;
  String? get videoFileName => _$this._videoFileName;
  set videoFileName(String? videoFileName) =>
      _$this._videoFileName = videoFileName;

  TileVideoModelBuilder() {
    TileVideoModel._defaults(this);
  }

  TileVideoModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _header = $v.header;
      _buttonText = $v.buttonText;
      _buttonUrl = $v.buttonUrl;
      _title = $v.title;
      _subtitle = $v.subtitle;
      _videoFileName = $v.videoFileName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TileVideoModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TileVideoModel;
  }

  @override
  void update(void Function(TileVideoModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TileVideoModel build() => _build();

  _$TileVideoModel _build() {
    final _$result = _$v ??
        new _$TileVideoModel._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'TileVideoModel', 'id'),
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'TileVideoModel', 'type'),
          header: header,
          buttonText: buttonText,
          buttonUrl: buttonUrl,
          title: title,
          subtitle: subtitle,
          videoFileName: videoFileName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
