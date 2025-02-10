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
  static const Role ROLE_ADMINISTRATOR = _$ROLE_ADMINISTRATOR;
  @BuiltValueEnumConst(wireName: r'ROLE_ALBUM_MANAGER')
  static const Role ROLE_ALBUM_MANAGER = _$ROLE_ALBUM_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_TRACK_MANAGER')
  static const Role ROLE_TRACK_MANAGER = _$ROLE_TRACK_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_CONTRIBUTOR_MANAGER')
  static const Role ROLE_CONTRIBUTOR_MANAGER = _$ROLE_CONTRIBUTOR_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_PODCAST_MANAGER')
  static const Role ROLE_PODCAST_MANAGER = _$ROLE_PODCAST_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_PLAYLIST_MANAGER')
  static const Role ROLE_PLAYLIST_MANAGER = _$ROLE_PLAYLIST_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_NOTIFICATION_MANAGER')
  static const Role ROLE_NOTIFICATION_MANAGER = _$ROLE_NOTIFICATION_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_FEATURE_PREVIEW')
  static const Role ROLE_FEATURE_PREVIEW = _$ROLE_FEATURE_PREVIEW;
  @BuiltValueEnumConst(wireName: r'ROLE_LIVE_MANAGER')
  static const Role ROLE_LIVE_MANAGER = _$ROLE_LIVE_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_SERVICE_ADMIN')
  static const Role ROLE_SERVICE_ADMIN = _$ROLE_SERVICE_ADMIN;
  @BuiltValueEnumConst(wireName: r'ROLE_DOWNLOADER')
  static const Role ROLE_DOWNLOADER = _$ROLE_DOWNLOADER;
  @BuiltValueEnumConst(wireName: r'ROLE_TRANSCRIPTION_MANAGER')
  static const Role ROLE_TRANSCRIPTION_MANAGER = _$ROLE_TRANSCRIPTION_MANAGER;
  @BuiltValueEnumConst(wireName: r'ROLE_FRAKAARE_DASHBOARD')
  static const Role ROLE_FRAKAARE_DASHBOARD = _$ROLE_FRAKAARE_DASHBOARD;
  @BuiltValueEnumConst(wireName: r'MEMBERS_YOUTH_LEADER')
  static const Role MEMBERS_YOUTH_LEADER = _$MEMBERS_YOUTH_LEADER;
  @BuiltValueEnumConst(wireName: r'ROLE_LYRICS_MANAGER')
  static const Role ROLE_LYRICS_MANAGER = _$ROLE_LYRICS_MANAGER;

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

