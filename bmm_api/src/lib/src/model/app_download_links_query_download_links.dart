//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_download_links_query_download_links.g.dart';

/// AppDownloadLinksQueryDownloadLinks
///
/// Properties:
/// * [windows] 
/// * [macIntel] 
/// * [macArm] 
/// * [ios] 
/// * [android] 
@BuiltValue()
abstract class AppDownloadLinksQueryDownloadLinks implements Built<AppDownloadLinksQueryDownloadLinks, AppDownloadLinksQueryDownloadLinksBuilder> {
  @BuiltValueField(wireName: r'windows')
  String? get windows;

  @BuiltValueField(wireName: r'mac_intel')
  String? get macIntel;

  @BuiltValueField(wireName: r'mac_arm')
  String? get macArm;

  @BuiltValueField(wireName: r'ios')
  String? get ios;

  @BuiltValueField(wireName: r'android')
  String? get android;

  AppDownloadLinksQueryDownloadLinks._();

  factory AppDownloadLinksQueryDownloadLinks([void updates(AppDownloadLinksQueryDownloadLinksBuilder b)]) = _$AppDownloadLinksQueryDownloadLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AppDownloadLinksQueryDownloadLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AppDownloadLinksQueryDownloadLinks> get serializer => _$AppDownloadLinksQueryDownloadLinksSerializer();
}

class _$AppDownloadLinksQueryDownloadLinksSerializer implements PrimitiveSerializer<AppDownloadLinksQueryDownloadLinks> {
  @override
  final Iterable<Type> types = const [AppDownloadLinksQueryDownloadLinks, _$AppDownloadLinksQueryDownloadLinks];

  @override
  final String wireName = r'AppDownloadLinksQueryDownloadLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AppDownloadLinksQueryDownloadLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.windows != null) {
      yield r'windows';
      yield serializers.serialize(
        object.windows,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.macIntel != null) {
      yield r'mac_intel';
      yield serializers.serialize(
        object.macIntel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.macArm != null) {
      yield r'mac_arm';
      yield serializers.serialize(
        object.macArm,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ios != null) {
      yield r'ios';
      yield serializers.serialize(
        object.ios,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.android != null) {
      yield r'android';
      yield serializers.serialize(
        object.android,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AppDownloadLinksQueryDownloadLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AppDownloadLinksQueryDownloadLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'windows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.windows = valueDes;
          break;
        case r'mac_intel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.macIntel = valueDes;
          break;
        case r'mac_arm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.macArm = valueDes;
          break;
        case r'ios':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ios = valueDes;
          break;
        case r'android':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.android = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AppDownloadLinksQueryDownloadLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AppDownloadLinksQueryDownloadLinksBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

