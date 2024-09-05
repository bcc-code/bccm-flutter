// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_header_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SectionHeaderModelTypeEnum _$sectionHeaderModelTypeEnum_sectionHeader =
    const SectionHeaderModelTypeEnum._('sectionHeader');

SectionHeaderModelTypeEnum _$sectionHeaderModelTypeEnumValueOf(String name) {
  switch (name) {
    case 'sectionHeader':
      return _$sectionHeaderModelTypeEnum_sectionHeader;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SectionHeaderModelTypeEnum> _$sectionHeaderModelTypeEnumValues =
    new BuiltSet<SectionHeaderModelTypeEnum>(const <SectionHeaderModelTypeEnum>[
  _$sectionHeaderModelTypeEnum_sectionHeader,
]);

Serializer<SectionHeaderModelTypeEnum> _$sectionHeaderModelTypeEnumSerializer =
    new _$SectionHeaderModelTypeEnumSerializer();

class _$SectionHeaderModelTypeEnumSerializer
    implements PrimitiveSerializer<SectionHeaderModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sectionHeader': 'section_header',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'section_header': 'sectionHeader',
  };

  @override
  final Iterable<Type> types = const <Type>[SectionHeaderModelTypeEnum];
  @override
  final String wireName = 'SectionHeaderModelTypeEnum';

  @override
  Object serialize(Serializers serializers, SectionHeaderModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SectionHeaderModelTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SectionHeaderModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SectionHeaderModel extends SectionHeaderModel {
  @override
  final String? title;
  @override
  final String? link;
  @override
  final int id;
  @override
  final bool? useCoverCarousel;
  @override
  final SectionHeaderModelTypeEnum type;

  factory _$SectionHeaderModel(
          [void Function(SectionHeaderModelBuilder)? updates]) =>
      (new SectionHeaderModelBuilder()..update(updates))._build();

  _$SectionHeaderModel._(
      {this.title,
      this.link,
      required this.id,
      this.useCoverCarousel,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'SectionHeaderModel', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'SectionHeaderModel', 'type');
  }

  @override
  SectionHeaderModel rebuild(
          void Function(SectionHeaderModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SectionHeaderModelBuilder toBuilder() =>
      new SectionHeaderModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SectionHeaderModel &&
        title == other.title &&
        link == other.link &&
        id == other.id &&
        useCoverCarousel == other.useCoverCarousel &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, useCoverCarousel.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SectionHeaderModel')
          ..add('title', title)
          ..add('link', link)
          ..add('id', id)
          ..add('useCoverCarousel', useCoverCarousel)
          ..add('type', type))
        .toString();
  }
}

class SectionHeaderModelBuilder
    implements Builder<SectionHeaderModel, SectionHeaderModelBuilder> {
  _$SectionHeaderModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _useCoverCarousel;
  bool? get useCoverCarousel => _$this._useCoverCarousel;
  set useCoverCarousel(bool? useCoverCarousel) =>
      _$this._useCoverCarousel = useCoverCarousel;

  SectionHeaderModelTypeEnum? _type;
  SectionHeaderModelTypeEnum? get type => _$this._type;
  set type(SectionHeaderModelTypeEnum? type) => _$this._type = type;

  SectionHeaderModelBuilder() {
    SectionHeaderModel._defaults(this);
  }

  SectionHeaderModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _link = $v.link;
      _id = $v.id;
      _useCoverCarousel = $v.useCoverCarousel;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SectionHeaderModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SectionHeaderModel;
  }

  @override
  void update(void Function(SectionHeaderModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SectionHeaderModel build() => _build();

  _$SectionHeaderModel _build() {
    final _$result = _$v ??
        new _$SectionHeaderModel._(
            title: title,
            link: link,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'SectionHeaderModel', 'id'),
            useCoverCarousel: useCoverCarousel,
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'SectionHeaderModel', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
