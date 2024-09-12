// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_album_or_track.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IAlbumOrTrackTypeEnum _$iAlbumOrTrackTypeEnum_album =
    const IAlbumOrTrackTypeEnum._('album');
const IAlbumOrTrackTypeEnum _$iAlbumOrTrackTypeEnum_track =
    const IAlbumOrTrackTypeEnum._('track');

IAlbumOrTrackTypeEnum _$iAlbumOrTrackTypeEnumValueOf(String name) {
  switch (name) {
    case 'album':
      return _$iAlbumOrTrackTypeEnum_album;
    case 'track':
      return _$iAlbumOrTrackTypeEnum_track;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<IAlbumOrTrackTypeEnum> _$iAlbumOrTrackTypeEnumValues =
    new BuiltSet<IAlbumOrTrackTypeEnum>(const <IAlbumOrTrackTypeEnum>[
  _$iAlbumOrTrackTypeEnum_album,
  _$iAlbumOrTrackTypeEnum_track,
]);

Serializer<IAlbumOrTrackTypeEnum> _$iAlbumOrTrackTypeEnumSerializer =
    new _$IAlbumOrTrackTypeEnumSerializer();

class _$IAlbumOrTrackTypeEnumSerializer
    implements PrimitiveSerializer<IAlbumOrTrackTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'album': 'album',
    'track': 'track',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'album': 'album',
    'track': 'track',
  };

  @override
  final Iterable<Type> types = const <Type>[IAlbumOrTrackTypeEnum];
  @override
  final String wireName = 'IAlbumOrTrackTypeEnum';

  @override
  Object serialize(Serializers serializers, IAlbumOrTrackTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IAlbumOrTrackTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IAlbumOrTrackTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IAlbumOrTrack extends IAlbumOrTrack {
  @override
  final OneOf oneOf;

  factory _$IAlbumOrTrack([void Function(IAlbumOrTrackBuilder)? updates]) =>
      (new IAlbumOrTrackBuilder()..update(updates))._build();

  _$IAlbumOrTrack._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(oneOf, r'IAlbumOrTrack', 'oneOf');
  }

  @override
  IAlbumOrTrack rebuild(void Function(IAlbumOrTrackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IAlbumOrTrackBuilder toBuilder() => new IAlbumOrTrackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IAlbumOrTrack && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IAlbumOrTrack')..add('oneOf', oneOf))
        .toString();
  }
}

class IAlbumOrTrackBuilder
    implements Builder<IAlbumOrTrack, IAlbumOrTrackBuilder> {
  _$IAlbumOrTrack? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  IAlbumOrTrackBuilder() {
    IAlbumOrTrack._defaults(this);
  }

  IAlbumOrTrackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IAlbumOrTrack other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IAlbumOrTrack;
  }

  @override
  void update(void Function(IAlbumOrTrackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IAlbumOrTrack build() => _build();

  _$IAlbumOrTrack _build() {
    final _$result = _$v ??
        new _$IAlbumOrTrack._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'IAlbumOrTrack', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
