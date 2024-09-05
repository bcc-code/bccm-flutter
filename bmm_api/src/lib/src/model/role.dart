//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'role.g.dart';

class Role extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ROLE_ADMINISTRATOR')
  static const Role ADMINISTRATOR = _$ADMINISTRATOR;
  @BuiltValueEnumConst(wireName: r'ROLE_ALBUM_MANAGER')
  static const Role ALBUM_MANAGER = _$ALBUM_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_TRACK_MANAGER')
  static const Role TRACK_MANAGER = _$TRACK_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_CONTRIBUTOR_MANAGER')
  static const Role CONTRIBUTOR_MANAGER = _$CONTRIBUTOR_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_PODCAST_MANAGER')
  static const Role PODCAST_MANAGER = _$PODCAST_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_PLAYLIST_MANAGER')
  static const Role PLAYLIST_MANAGER = _$PLAYLIST_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_NOTIFICATION_MANAGER')
  static const Role NOTIFICATION_MANAGER = _$NOTIFICATION_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_FEATURE_PREVIEW')
  static const Role FEATURE_PREVIEW = _$FEATURE_PREVIEW;
  @BuiltValueEnumConst(wireName: r'ROLE_LIVE_MANAGER')
  static const Role LIVE_MANAGER = _$LIVE_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_SERVICE_ADMIN')
  static const Role SERVICE_ADMIN = _$SERVICE_ADMIN;
  @BuiltValueEnumConst(wireName: r'ROLE_DOWNLOADER')
  static const Role DOWNLOADER = _$DOWNLOADER;

  static Serializer<Role> get serializer => _$roleSerializer;

  const Role._(String name): super(name);

  static BuiltSet<Role> get values => _$values;
  static Role valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RoleMixin = Object with _$RoleMixin;

