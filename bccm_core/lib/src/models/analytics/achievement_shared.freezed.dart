// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievement_shared.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AchievementSharedEvent _$AchievementSharedEventFromJson(
    Map<String, dynamic> json) {
  return _AchievementSharedEvent.fromJson(json);
}

/// @nodoc
mixin _$AchievementSharedEvent {
  String get elementTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AchievementSharedEventCopyWith<AchievementSharedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementSharedEventCopyWith<$Res> {
  factory $AchievementSharedEventCopyWith(AchievementSharedEvent value,
          $Res Function(AchievementSharedEvent) then) =
      _$AchievementSharedEventCopyWithImpl<$Res, AchievementSharedEvent>;
  @useResult
  $Res call({String elementTitle});
}

/// @nodoc
class _$AchievementSharedEventCopyWithImpl<$Res,
        $Val extends AchievementSharedEvent>
    implements $AchievementSharedEventCopyWith<$Res> {
  _$AchievementSharedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elementTitle = null,
  }) {
    return _then(_value.copyWith(
      elementTitle: null == elementTitle
          ? _value.elementTitle
          : elementTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AchievementSharedEventImplCopyWith<$Res>
    implements $AchievementSharedEventCopyWith<$Res> {
  factory _$$AchievementSharedEventImplCopyWith(
          _$AchievementSharedEventImpl value,
          $Res Function(_$AchievementSharedEventImpl) then) =
      __$$AchievementSharedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String elementTitle});
}

/// @nodoc
class __$$AchievementSharedEventImplCopyWithImpl<$Res>
    extends _$AchievementSharedEventCopyWithImpl<$Res,
        _$AchievementSharedEventImpl>
    implements _$$AchievementSharedEventImplCopyWith<$Res> {
  __$$AchievementSharedEventImplCopyWithImpl(
      _$AchievementSharedEventImpl _value,
      $Res Function(_$AchievementSharedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elementTitle = null,
  }) {
    return _then(_$AchievementSharedEventImpl(
      elementTitle: null == elementTitle
          ? _value.elementTitle
          : elementTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AchievementSharedEventImpl implements _AchievementSharedEvent {
  const _$AchievementSharedEventImpl({required this.elementTitle});

  factory _$AchievementSharedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementSharedEventImplFromJson(json);

  @override
  final String elementTitle;

  @override
  String toString() {
    return 'AchievementSharedEvent(elementTitle: $elementTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementSharedEventImpl &&
            (identical(other.elementTitle, elementTitle) ||
                other.elementTitle == elementTitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, elementTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementSharedEventImplCopyWith<_$AchievementSharedEventImpl>
      get copyWith => __$$AchievementSharedEventImplCopyWithImpl<
          _$AchievementSharedEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementSharedEventImplToJson(
      this,
    );
  }
}

abstract class _AchievementSharedEvent implements AchievementSharedEvent {
  const factory _AchievementSharedEvent({required final String elementTitle}) =
      _$AchievementSharedEventImpl;

  factory _AchievementSharedEvent.fromJson(Map<String, dynamic> json) =
      _$AchievementSharedEventImpl.fromJson;

  @override
  String get elementTitle;
  @override
  @JsonKey(ignore: true)
  _$$AchievementSharedEventImplCopyWith<_$AchievementSharedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
