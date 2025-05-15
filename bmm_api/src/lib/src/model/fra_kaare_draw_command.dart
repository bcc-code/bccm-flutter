//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/person_gender_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fra_kaare_draw_command.g.dart';

/// FraKaareDrawCommand
///
/// Properties:
/// * [drawOptionId] 
/// * [earliestBirthYear] 
/// * [latestBirthYear] 
/// * [churchUid] 
/// * [gender] 
@BuiltValue()
abstract class FraKaareDrawCommand implements Built<FraKaareDrawCommand, FraKaareDrawCommandBuilder> {
  @BuiltValueField(wireName: r'draw_option_id')
  String? get drawOptionId;

  @BuiltValueField(wireName: r'earliest_birth_year')
  int? get earliestBirthYear;

  @BuiltValueField(wireName: r'latest_birth_year')
  int? get latestBirthYear;

  @BuiltValueField(wireName: r'church_uid')
  String? get churchUid;

  @BuiltValueField(wireName: r'gender')
  PersonGenderEnum? get gender;
  // enum genderEnum {  Male,  Female,  Unknown,  };

  FraKaareDrawCommand._();

  factory FraKaareDrawCommand([void updates(FraKaareDrawCommandBuilder b)]) = _$FraKaareDrawCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FraKaareDrawCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FraKaareDrawCommand> get serializer => _$FraKaareDrawCommandSerializer();
}

class _$FraKaareDrawCommandSerializer implements PrimitiveSerializer<FraKaareDrawCommand> {
  @override
  final Iterable<Type> types = const [FraKaareDrawCommand, _$FraKaareDrawCommand];

  @override
  final String wireName = r'FraKaareDrawCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FraKaareDrawCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.drawOptionId != null) {
      yield r'draw_option_id';
      yield serializers.serialize(
        object.drawOptionId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.earliestBirthYear != null) {
      yield r'earliest_birth_year';
      yield serializers.serialize(
        object.earliestBirthYear,
        specifiedType: const FullType(int),
      );
    }
    if (object.latestBirthYear != null) {
      yield r'latest_birth_year';
      yield serializers.serialize(
        object.latestBirthYear,
        specifiedType: const FullType(int),
      );
    }
    if (object.churchUid != null) {
      yield r'church_uid';
      yield serializers.serialize(
        object.churchUid,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType(PersonGenderEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FraKaareDrawCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FraKaareDrawCommandBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'draw_option_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.drawOptionId = valueDes;
          break;
        case r'earliest_birth_year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.earliestBirthYear = valueDes;
          break;
        case r'latest_birth_year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.latestBirthYear = valueDes;
          break;
        case r'church_uid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.churchUid = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PersonGenderEnum),
          ) as PersonGenderEnum;
          result.gender = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FraKaareDrawCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FraKaareDrawCommandBuilder();
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

