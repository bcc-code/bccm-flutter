//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/person_gender_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fra_kaare_draw_command_response.g.dart';

/// FraKaareDrawCommandResponse
///
/// Properties:
/// * [isSuccess] 
/// * [winnerDisplayName] 
/// * [winnerGender] 
/// * [winnerBirthYear] 
/// * [errorMessage] 
/// * [drawsLeft] 
@BuiltValue()
abstract class FraKaareDrawCommandResponse implements Built<FraKaareDrawCommandResponse, FraKaareDrawCommandResponseBuilder> {
  @BuiltValueField(wireName: r'is_success')
  bool? get isSuccess;

  @BuiltValueField(wireName: r'winner_display_name')
  String? get winnerDisplayName;

  @BuiltValueField(wireName: r'winner_gender')
  PersonGenderEnum? get winnerGender;
  // enum winnerGenderEnum {  Male,  Female,  Unknown,  };

  @BuiltValueField(wireName: r'winner_birth_year')
  int? get winnerBirthYear;

  @BuiltValueField(wireName: r'error_message')
  String? get errorMessage;

  @BuiltValueField(wireName: r'draws_left')
  int? get drawsLeft;

  FraKaareDrawCommandResponse._();

  factory FraKaareDrawCommandResponse([void updates(FraKaareDrawCommandResponseBuilder b)]) = _$FraKaareDrawCommandResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FraKaareDrawCommandResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FraKaareDrawCommandResponse> get serializer => _$FraKaareDrawCommandResponseSerializer();
}

class _$FraKaareDrawCommandResponseSerializer implements PrimitiveSerializer<FraKaareDrawCommandResponse> {
  @override
  final Iterable<Type> types = const [FraKaareDrawCommandResponse, _$FraKaareDrawCommandResponse];

  @override
  final String wireName = r'FraKaareDrawCommandResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FraKaareDrawCommandResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.isSuccess != null) {
      yield r'is_success';
      yield serializers.serialize(
        object.isSuccess,
        specifiedType: const FullType(bool),
      );
    }
    if (object.winnerDisplayName != null) {
      yield r'winner_display_name';
      yield serializers.serialize(
        object.winnerDisplayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.winnerGender != null) {
      yield r'winner_gender';
      yield serializers.serialize(
        object.winnerGender,
        specifiedType: const FullType(PersonGenderEnum),
      );
    }
    if (object.winnerBirthYear != null) {
      yield r'winner_birth_year';
      yield serializers.serialize(
        object.winnerBirthYear,
        specifiedType: const FullType(int),
      );
    }
    if (object.errorMessage != null) {
      yield r'error_message';
      yield serializers.serialize(
        object.errorMessage,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.drawsLeft != null) {
      yield r'draws_left';
      yield serializers.serialize(
        object.drawsLeft,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FraKaareDrawCommandResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FraKaareDrawCommandResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'is_success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSuccess = valueDes;
          break;
        case r'winner_display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.winnerDisplayName = valueDes;
          break;
        case r'winner_gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PersonGenderEnum),
          ) as PersonGenderEnum;
          result.winnerGender = valueDes;
          break;
        case r'winner_birth_year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.winnerBirthYear = valueDes;
          break;
        case r'error_message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.errorMessage = valueDes;
          break;
        case r'draws_left':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.drawsLeft = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FraKaareDrawCommandResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FraKaareDrawCommandResponseBuilder();
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

