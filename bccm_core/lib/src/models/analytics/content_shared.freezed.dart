// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_shared.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentSharedEvent _$ContentSharedEventFromJson(Map<String, dynamic> json) {
  return _ContentSharedEvent.fromJson(json);
}

/// @nodoc
mixin _$ContentSharedEvent {
  String get pageCode => throw _privateConstructorUsedError;
  String get elementType => throw _privateConstructorUsedError;
  String get elementId => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentSharedEventCopyWith<ContentSharedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentSharedEventCopyWith<$Res> {
  factory $ContentSharedEventCopyWith(
          ContentSharedEvent value, $Res Function(ContentSharedEvent) then) =
      _$ContentSharedEventCopyWithImpl<$Res, ContentSharedEvent>;
  @useResult
  $Res call(
      {String pageCode, String elementType, String elementId, int? position});
}

/// @nodoc
class _$ContentSharedEventCopyWithImpl<$Res, $Val extends ContentSharedEvent>
    implements $ContentSharedEventCopyWith<$Res> {
  _$ContentSharedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCode = null,
    Object? elementType = null,
    Object? elementId = null,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      pageCode: null == pageCode
          ? _value.pageCode
          : pageCode // ignore: cast_nullable_to_non_nullable
              as String,
      elementType: null == elementType
          ? _value.elementType
          : elementType // ignore: cast_nullable_to_non_nullable
              as String,
      elementId: null == elementId
          ? _value.elementId
          : elementId // ignore: cast_nullable_to_non_nullable
              as String,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentSharedEventImplCopyWith<$Res>
    implements $ContentSharedEventCopyWith<$Res> {
  factory _$$ContentSharedEventImplCopyWith(_$ContentSharedEventImpl value,
          $Res Function(_$ContentSharedEventImpl) then) =
      __$$ContentSharedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pageCode, String elementType, String elementId, int? position});
}

/// @nodoc
class __$$ContentSharedEventImplCopyWithImpl<$Res>
    extends _$ContentSharedEventCopyWithImpl<$Res, _$ContentSharedEventImpl>
    implements _$$ContentSharedEventImplCopyWith<$Res> {
  __$$ContentSharedEventImplCopyWithImpl(_$ContentSharedEventImpl _value,
      $Res Function(_$ContentSharedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageCode = null,
    Object? elementType = null,
    Object? elementId = null,
    Object? position = freezed,
  }) {
    return _then(_$ContentSharedEventImpl(
      pageCode: null == pageCode
          ? _value.pageCode
          : pageCode // ignore: cast_nullable_to_non_nullable
              as String,
      elementType: null == elementType
          ? _value.elementType
          : elementType // ignore: cast_nullable_to_non_nullable
              as String,
      elementId: null == elementId
          ? _value.elementId
          : elementId // ignore: cast_nullable_to_non_nullable
              as String,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentSharedEventImpl implements _ContentSharedEvent {
  const _$ContentSharedEventImpl(
      {required this.pageCode,
      required this.elementType,
      required this.elementId,
      this.position});

  factory _$ContentSharedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentSharedEventImplFromJson(json);

  @override
  final String pageCode;
  @override
  final String elementType;
  @override
  final String elementId;
  @override
  final int? position;

  @override
  String toString() {
    return 'ContentSharedEvent(pageCode: $pageCode, elementType: $elementType, elementId: $elementId, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentSharedEventImpl &&
            (identical(other.pageCode, pageCode) ||
                other.pageCode == pageCode) &&
            (identical(other.elementType, elementType) ||
                other.elementType == elementType) &&
            (identical(other.elementId, elementId) ||
                other.elementId == elementId) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pageCode, elementType, elementId, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentSharedEventImplCopyWith<_$ContentSharedEventImpl> get copyWith =>
      __$$ContentSharedEventImplCopyWithImpl<_$ContentSharedEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentSharedEventImplToJson(
      this,
    );
  }
}

abstract class _ContentSharedEvent implements ContentSharedEvent {
  const factory _ContentSharedEvent(
      {required final String pageCode,
      required final String elementType,
      required final String elementId,
      final int? position}) = _$ContentSharedEventImpl;

  factory _ContentSharedEvent.fromJson(Map<String, dynamic> json) =
      _$ContentSharedEventImpl.fromJson;

  @override
  String get pageCode;
  @override
  String get elementType;
  @override
  String get elementId;
  @override
  int? get position;
  @override
  @JsonKey(ignore: true)
  _$$ContentSharedEventImplCopyWith<_$ContentSharedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
