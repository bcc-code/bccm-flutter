// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Role _$ADMINISTRATOR = const Role._('ADMINISTRATOR');
const Role _$ALBUM_MANAGER = const Role._('ALBUM_MANAGER');
const Role _$TRACK_MANAGER = const Role._('TRACK_MANAGER');
const Role _$CONTRIBUTOR_MANAGER = const Role._('CONTRIBUTOR_MANAGER');
const Role _$PODCAST_MANAGER = const Role._('PODCAST_MANAGER');
const Role _$PLAYLIST_MANAGER = const Role._('PLAYLIST_MANAGER');
const Role _$NOTIFICATION_MANAGER = const Role._('NOTIFICATION_MANAGER');
const Role _$FEATURE_PREVIEW = const Role._('FEATURE_PREVIEW');
const Role _$LIVE_MANAGER = const Role._('LIVE_MANAGER');
const Role _$SERVICE_ADMIN = const Role._('SERVICE_ADMIN');
const Role _$DOWNLOADER = const Role._('DOWNLOADER');

Role _$valueOf(String name) {
  switch (name) {
    case 'ADMINISTRATOR':
      return _$ADMINISTRATOR;
    case 'ALBUM_MANAGER':
      return _$ALBUM_MANAGER;
    case 'TRACK_MANAGER':
      return _$TRACK_MANAGER;
    case 'CONTRIBUTOR_MANAGER':
      return _$CONTRIBUTOR_MANAGER;
    case 'PODCAST_MANAGER':
      return _$PODCAST_MANAGER;
    case 'PLAYLIST_MANAGER':
      return _$PLAYLIST_MANAGER;
    case 'NOTIFICATION_MANAGER':
      return _$NOTIFICATION_MANAGER;
    case 'FEATURE_PREVIEW':
      return _$FEATURE_PREVIEW;
    case 'LIVE_MANAGER':
      return _$LIVE_MANAGER;
    case 'SERVICE_ADMIN':
      return _$SERVICE_ADMIN;
    case 'DOWNLOADER':
      return _$DOWNLOADER;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Role> _$values = new BuiltSet<Role>(const <Role>[
  _$ADMINISTRATOR,
  _$ALBUM_MANAGER,
  _$TRACK_MANAGER,
  _$CONTRIBUTOR_MANAGER,
  _$PODCAST_MANAGER,
  _$PLAYLIST_MANAGER,
  _$NOTIFICATION_MANAGER,
  _$FEATURE_PREVIEW,
  _$LIVE_MANAGER,
  _$SERVICE_ADMIN,
  _$DOWNLOADER,
]);

class _$RoleMeta {
  const _$RoleMeta();
  Role get ADMINISTRATOR => _$ADMINISTRATOR;
  Role get ALBUM_MANAGER => _$ALBUM_MANAGER;
  Role get TRACK_MANAGER => _$TRACK_MANAGER;
  Role get CONTRIBUTOR_MANAGER => _$CONTRIBUTOR_MANAGER;
  Role get PODCAST_MANAGER => _$PODCAST_MANAGER;
  Role get PLAYLIST_MANAGER => _$PLAYLIST_MANAGER;
  Role get NOTIFICATION_MANAGER => _$NOTIFICATION_MANAGER;
  Role get FEATURE_PREVIEW => _$FEATURE_PREVIEW;
  Role get LIVE_MANAGER => _$LIVE_MANAGER;
  Role get SERVICE_ADMIN => _$SERVICE_ADMIN;
  Role get DOWNLOADER => _$DOWNLOADER;
  Role valueOf(String name) => _$valueOf(name);
  BuiltSet<Role> get values => _$values;
}

abstract class _$RoleMixin {
  // ignore: non_constant_identifier_names
  _$RoleMeta get Role => const _$RoleMeta();
}

Serializer<Role> _$roleSerializer = new _$RoleSerializer();

class _$RoleSerializer implements PrimitiveSerializer<Role> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ADMINISTRATOR': 'ROLE_ADMINISTRATOR',
    'ALBUM_MANAGER': 'ROLE_ALBUM_MANAGER',
    'TRACK_MANAGER': 'ROLE_TRACK_MANAGER',
    'CONTRIBUTOR_MANAGER': 'ROLE_CONTRIBUTOR_MANAGER',
    'PODCAST_MANAGER': 'ROLE_PODCAST_MANAGER',
    'PLAYLIST_MANAGER': 'ROLE_PLAYLIST_MANAGER',
    'NOTIFICATION_MANAGER': 'ROLE_NOTIFICATION_MANAGER',
    'FEATURE_PREVIEW': 'ROLE_FEATURE_PREVIEW',
    'LIVE_MANAGER': 'ROLE_LIVE_MANAGER',
    'SERVICE_ADMIN': 'ROLE_SERVICE_ADMIN',
    'DOWNLOADER': 'ROLE_DOWNLOADER',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ROLE_ADMINISTRATOR': 'ADMINISTRATOR',
    'ROLE_ALBUM_MANAGER': 'ALBUM_MANAGER',
    'ROLE_TRACK_MANAGER': 'TRACK_MANAGER',
    'ROLE_CONTRIBUTOR_MANAGER': 'CONTRIBUTOR_MANAGER',
    'ROLE_PODCAST_MANAGER': 'PODCAST_MANAGER',
    'ROLE_PLAYLIST_MANAGER': 'PLAYLIST_MANAGER',
    'ROLE_NOTIFICATION_MANAGER': 'NOTIFICATION_MANAGER',
    'ROLE_FEATURE_PREVIEW': 'FEATURE_PREVIEW',
    'ROLE_LIVE_MANAGER': 'LIVE_MANAGER',
    'ROLE_SERVICE_ADMIN': 'SERVICE_ADMIN',
    'ROLE_DOWNLOADER': 'DOWNLOADER',
  };

  @override
  final Iterable<Type> types = const <Type>[Role];
  @override
  final String wireName = 'Role';

  @override
  Object serialize(Serializers serializers, Role object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Role deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Role.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
