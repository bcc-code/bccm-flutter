// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'misc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InteractionEvent _$InteractionEventFromJson(Map<String, dynamic> json) {
  return _InteractionEvent.fromJson(json);
}

/// @nodoc
mixin _$InteractionEvent {
  String? get interaction => throw _privateConstructorUsedError;
  String? get pageCode => throw _privateConstructorUsedError;
  String? get contextElementType => throw _privateConstructorUsedError;
  String? get contextElementId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get meta => throw _privateConstructorUsedError;

  /// Serializes this InteractionEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InteractionEventCopyWith<InteractionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionEventCopyWith<$Res> {
  factory $InteractionEventCopyWith(
          InteractionEvent value, $Res Function(InteractionEvent) then) =
      _$InteractionEventCopyWithImpl<$Res, InteractionEvent>;
  @useResult
  $Res call(
      {String? interaction,
      String? pageCode,
      String? contextElementType,
      String? contextElementId,
      Map<String, dynamic>? meta});
}

/// @nodoc
class _$InteractionEventCopyWithImpl<$Res, $Val extends InteractionEvent>
    implements $InteractionEventCopyWith<$Res> {
  _$InteractionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interaction = freezed,
    Object? pageCode = freezed,
    Object? contextElementType = freezed,
    Object? contextElementId = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      interaction: freezed == interaction
          ? _value.interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCode: freezed == pageCode
          ? _value.pageCode
          : pageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      contextElementType: freezed == contextElementType
          ? _value.contextElementType
          : contextElementType // ignore: cast_nullable_to_non_nullable
              as String?,
      contextElementId: freezed == contextElementId
          ? _value.contextElementId
          : contextElementId // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InteractionEventImplCopyWith<$Res>
    implements $InteractionEventCopyWith<$Res> {
  factory _$$InteractionEventImplCopyWith(_$InteractionEventImpl value,
          $Res Function(_$InteractionEventImpl) then) =
      __$$InteractionEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? interaction,
      String? pageCode,
      String? contextElementType,
      String? contextElementId,
      Map<String, dynamic>? meta});
}

/// @nodoc
class __$$InteractionEventImplCopyWithImpl<$Res>
    extends _$InteractionEventCopyWithImpl<$Res, _$InteractionEventImpl>
    implements _$$InteractionEventImplCopyWith<$Res> {
  __$$InteractionEventImplCopyWithImpl(_$InteractionEventImpl _value,
      $Res Function(_$InteractionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interaction = freezed,
    Object? pageCode = freezed,
    Object? contextElementType = freezed,
    Object? contextElementId = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$InteractionEventImpl(
      interaction: freezed == interaction
          ? _value.interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCode: freezed == pageCode
          ? _value.pageCode
          : pageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      contextElementType: freezed == contextElementType
          ? _value.contextElementType
          : contextElementType // ignore: cast_nullable_to_non_nullable
              as String?,
      contextElementId: freezed == contextElementId
          ? _value.contextElementId
          : contextElementId // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InteractionEventImpl implements _InteractionEvent {
  const _$InteractionEventImpl(
      {this.interaction,
      this.pageCode,
      this.contextElementType,
      this.contextElementId,
      final Map<String, dynamic>? meta})
      : _meta = meta;

  factory _$InteractionEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$InteractionEventImplFromJson(json);

  @override
  final String? interaction;
  @override
  final String? pageCode;
  @override
  final String? contextElementType;
  @override
  final String? contextElementId;
  final Map<String, dynamic>? _meta;
  @override
  Map<String, dynamic>? get meta {
    final value = _meta;
    if (value == null) return null;
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'InteractionEvent(interaction: $interaction, pageCode: $pageCode, contextElementType: $contextElementType, contextElementId: $contextElementId, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InteractionEventImpl &&
            (identical(other.interaction, interaction) ||
                other.interaction == interaction) &&
            (identical(other.pageCode, pageCode) ||
                other.pageCode == pageCode) &&
            (identical(other.contextElementType, contextElementType) ||
                other.contextElementType == contextElementType) &&
            (identical(other.contextElementId, contextElementId) ||
                other.contextElementId == contextElementId) &&
            const DeepCollectionEquality().equals(other._meta, _meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      interaction,
      pageCode,
      contextElementType,
      contextElementId,
      const DeepCollectionEquality().hash(_meta));

  /// Create a copy of InteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InteractionEventImplCopyWith<_$InteractionEventImpl> get copyWith =>
      __$$InteractionEventImplCopyWithImpl<_$InteractionEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InteractionEventImplToJson(
      this,
    );
  }
}

abstract class _InteractionEvent implements InteractionEvent {
  const factory _InteractionEvent(
      {final String? interaction,
      final String? pageCode,
      final String? contextElementType,
      final String? contextElementId,
      final Map<String, dynamic>? meta}) = _$InteractionEventImpl;

  factory _InteractionEvent.fromJson(Map<String, dynamic> json) =
      _$InteractionEventImpl.fromJson;

  @override
  String? get interaction;
  @override
  String? get pageCode;
  @override
  String? get contextElementType;
  @override
  String? get contextElementId;
  @override
  Map<String, dynamic>? get meta;

  /// Create a copy of InteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InteractionEventImplCopyWith<_$InteractionEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImpressionEvent _$ImpressionEventFromJson(Map<String, dynamic> json) {
  return _ImpressionEvent.fromJson(json);
}

/// @nodoc
mixin _$ImpressionEvent {
  String? get name => throw _privateConstructorUsedError;
  String? get pageCode => throw _privateConstructorUsedError;
  String? get contextElementType => throw _privateConstructorUsedError;
  String? get contextElementId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get meta => throw _privateConstructorUsedError;

  /// Serializes this ImpressionEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImpressionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImpressionEventCopyWith<ImpressionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImpressionEventCopyWith<$Res> {
  factory $ImpressionEventCopyWith(
          ImpressionEvent value, $Res Function(ImpressionEvent) then) =
      _$ImpressionEventCopyWithImpl<$Res, ImpressionEvent>;
  @useResult
  $Res call(
      {String? name,
      String? pageCode,
      String? contextElementType,
      String? contextElementId,
      Map<String, dynamic>? meta});
}

/// @nodoc
class _$ImpressionEventCopyWithImpl<$Res, $Val extends ImpressionEvent>
    implements $ImpressionEventCopyWith<$Res> {
  _$ImpressionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImpressionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? pageCode = freezed,
    Object? contextElementType = freezed,
    Object? contextElementId = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCode: freezed == pageCode
          ? _value.pageCode
          : pageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      contextElementType: freezed == contextElementType
          ? _value.contextElementType
          : contextElementType // ignore: cast_nullable_to_non_nullable
              as String?,
      contextElementId: freezed == contextElementId
          ? _value.contextElementId
          : contextElementId // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImpressionEventImplCopyWith<$Res>
    implements $ImpressionEventCopyWith<$Res> {
  factory _$$ImpressionEventImplCopyWith(_$ImpressionEventImpl value,
          $Res Function(_$ImpressionEventImpl) then) =
      __$$ImpressionEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? pageCode,
      String? contextElementType,
      String? contextElementId,
      Map<String, dynamic>? meta});
}

/// @nodoc
class __$$ImpressionEventImplCopyWithImpl<$Res>
    extends _$ImpressionEventCopyWithImpl<$Res, _$ImpressionEventImpl>
    implements _$$ImpressionEventImplCopyWith<$Res> {
  __$$ImpressionEventImplCopyWithImpl(
      _$ImpressionEventImpl _value, $Res Function(_$ImpressionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImpressionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? pageCode = freezed,
    Object? contextElementType = freezed,
    Object? contextElementId = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$ImpressionEventImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCode: freezed == pageCode
          ? _value.pageCode
          : pageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      contextElementType: freezed == contextElementType
          ? _value.contextElementType
          : contextElementType // ignore: cast_nullable_to_non_nullable
              as String?,
      contextElementId: freezed == contextElementId
          ? _value.contextElementId
          : contextElementId // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImpressionEventImpl implements _ImpressionEvent {
  const _$ImpressionEventImpl(
      {this.name,
      this.pageCode,
      this.contextElementType,
      this.contextElementId,
      final Map<String, dynamic>? meta})
      : _meta = meta;

  factory _$ImpressionEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImpressionEventImplFromJson(json);

  @override
  final String? name;
  @override
  final String? pageCode;
  @override
  final String? contextElementType;
  @override
  final String? contextElementId;
  final Map<String, dynamic>? _meta;
  @override
  Map<String, dynamic>? get meta {
    final value = _meta;
    if (value == null) return null;
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ImpressionEvent(name: $name, pageCode: $pageCode, contextElementType: $contextElementType, contextElementId: $contextElementId, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImpressionEventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pageCode, pageCode) ||
                other.pageCode == pageCode) &&
            (identical(other.contextElementType, contextElementType) ||
                other.contextElementType == contextElementType) &&
            (identical(other.contextElementId, contextElementId) ||
                other.contextElementId == contextElementId) &&
            const DeepCollectionEquality().equals(other._meta, _meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      pageCode,
      contextElementType,
      contextElementId,
      const DeepCollectionEquality().hash(_meta));

  /// Create a copy of ImpressionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImpressionEventImplCopyWith<_$ImpressionEventImpl> get copyWith =>
      __$$ImpressionEventImplCopyWithImpl<_$ImpressionEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImpressionEventImplToJson(
      this,
    );
  }
}

abstract class _ImpressionEvent implements ImpressionEvent {
  const factory _ImpressionEvent(
      {final String? name,
      final String? pageCode,
      final String? contextElementType,
      final String? contextElementId,
      final Map<String, dynamic>? meta}) = _$ImpressionEventImpl;

  factory _ImpressionEvent.fromJson(Map<String, dynamic> json) =
      _$ImpressionEventImpl.fromJson;

  @override
  String? get name;
  @override
  String? get pageCode;
  @override
  String? get contextElementType;
  @override
  String? get contextElementId;
  @override
  Map<String, dynamic>? get meta;

  /// Create a copy of ImpressionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImpressionEventImplCopyWith<_$ImpressionEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuideShownEvent _$GuideShownEventFromJson(Map<String, dynamic> json) {
  return _GuideShownEvent.fromJson(json);
}

/// @nodoc
mixin _$GuideShownEvent {
  String? get guide => throw _privateConstructorUsedError;
  Map<String, dynamic>? get meta => throw _privateConstructorUsedError;

  /// Serializes this GuideShownEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GuideShownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuideShownEventCopyWith<GuideShownEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuideShownEventCopyWith<$Res> {
  factory $GuideShownEventCopyWith(
          GuideShownEvent value, $Res Function(GuideShownEvent) then) =
      _$GuideShownEventCopyWithImpl<$Res, GuideShownEvent>;
  @useResult
  $Res call({String? guide, Map<String, dynamic>? meta});
}

/// @nodoc
class _$GuideShownEventCopyWithImpl<$Res, $Val extends GuideShownEvent>
    implements $GuideShownEventCopyWith<$Res> {
  _$GuideShownEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuideShownEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guide = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      guide: freezed == guide
          ? _value.guide
          : guide // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuideShownEventImplCopyWith<$Res>
    implements $GuideShownEventCopyWith<$Res> {
  factory _$$GuideShownEventImplCopyWith(_$GuideShownEventImpl value,
          $Res Function(_$GuideShownEventImpl) then) =
      __$$GuideShownEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? guide, Map<String, dynamic>? meta});
}

/// @nodoc
class __$$GuideShownEventImplCopyWithImpl<$Res>
    extends _$GuideShownEventCopyWithImpl<$Res, _$GuideShownEventImpl>
    implements _$$GuideShownEventImplCopyWith<$Res> {
  __$$GuideShownEventImplCopyWithImpl(
      _$GuideShownEventImpl _value, $Res Function(_$GuideShownEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuideShownEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guide = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$GuideShownEventImpl(
      guide: freezed == guide
          ? _value.guide
          : guide // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuideShownEventImpl implements _GuideShownEvent {
  const _$GuideShownEventImpl({this.guide, final Map<String, dynamic>? meta})
      : _meta = meta;

  factory _$GuideShownEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuideShownEventImplFromJson(json);

  @override
  final String? guide;
  final Map<String, dynamic>? _meta;
  @override
  Map<String, dynamic>? get meta {
    final value = _meta;
    if (value == null) return null;
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'GuideShownEvent(guide: $guide, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuideShownEventImpl &&
            (identical(other.guide, guide) || other.guide == guide) &&
            const DeepCollectionEquality().equals(other._meta, _meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, guide, const DeepCollectionEquality().hash(_meta));

  /// Create a copy of GuideShownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuideShownEventImplCopyWith<_$GuideShownEventImpl> get copyWith =>
      __$$GuideShownEventImplCopyWithImpl<_$GuideShownEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuideShownEventImplToJson(
      this,
    );
  }
}

abstract class _GuideShownEvent implements GuideShownEvent {
  const factory _GuideShownEvent(
      {final String? guide,
      final Map<String, dynamic>? meta}) = _$GuideShownEventImpl;

  factory _GuideShownEvent.fromJson(Map<String, dynamic> json) =
      _$GuideShownEventImpl.fromJson;

  @override
  String? get guide;
  @override
  Map<String, dynamic>? get meta;

  /// Create a copy of GuideShownEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuideShownEventImplCopyWith<_$GuideShownEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeMeasurementEvent _$TimeMeasurementEventFromJson(Map<String, dynamic> json) {
  return _TimeMeasurementEvent.fromJson(json);
}

/// @nodoc
mixin _$TimeMeasurementEvent {
  String? get key => throw _privateConstructorUsedError;
  double? get seconds => throw _privateConstructorUsedError;
  Map<String, dynamic>? get meta => throw _privateConstructorUsedError;

  /// Serializes this TimeMeasurementEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeMeasurementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeMeasurementEventCopyWith<TimeMeasurementEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeMeasurementEventCopyWith<$Res> {
  factory $TimeMeasurementEventCopyWith(TimeMeasurementEvent value,
          $Res Function(TimeMeasurementEvent) then) =
      _$TimeMeasurementEventCopyWithImpl<$Res, TimeMeasurementEvent>;
  @useResult
  $Res call({String? key, double? seconds, Map<String, dynamic>? meta});
}

/// @nodoc
class _$TimeMeasurementEventCopyWithImpl<$Res,
        $Val extends TimeMeasurementEvent>
    implements $TimeMeasurementEventCopyWith<$Res> {
  _$TimeMeasurementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeMeasurementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? seconds = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as double?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeMeasurementEventImplCopyWith<$Res>
    implements $TimeMeasurementEventCopyWith<$Res> {
  factory _$$TimeMeasurementEventImplCopyWith(_$TimeMeasurementEventImpl value,
          $Res Function(_$TimeMeasurementEventImpl) then) =
      __$$TimeMeasurementEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? key, double? seconds, Map<String, dynamic>? meta});
}

/// @nodoc
class __$$TimeMeasurementEventImplCopyWithImpl<$Res>
    extends _$TimeMeasurementEventCopyWithImpl<$Res, _$TimeMeasurementEventImpl>
    implements _$$TimeMeasurementEventImplCopyWith<$Res> {
  __$$TimeMeasurementEventImplCopyWithImpl(_$TimeMeasurementEventImpl _value,
      $Res Function(_$TimeMeasurementEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeMeasurementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? seconds = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$TimeMeasurementEventImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as double?,
      meta: freezed == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeMeasurementEventImpl implements _TimeMeasurementEvent {
  const _$TimeMeasurementEventImpl(
      {this.key, this.seconds, final Map<String, dynamic>? meta})
      : _meta = meta;

  factory _$TimeMeasurementEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeMeasurementEventImplFromJson(json);

  @override
  final String? key;
  @override
  final double? seconds;
  final Map<String, dynamic>? _meta;
  @override
  Map<String, dynamic>? get meta {
    final value = _meta;
    if (value == null) return null;
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TimeMeasurementEvent(key: $key, seconds: $seconds, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeMeasurementEventImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            const DeepCollectionEquality().equals(other._meta, _meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, seconds, const DeepCollectionEquality().hash(_meta));

  /// Create a copy of TimeMeasurementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeMeasurementEventImplCopyWith<_$TimeMeasurementEventImpl>
      get copyWith =>
          __$$TimeMeasurementEventImplCopyWithImpl<_$TimeMeasurementEventImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeMeasurementEventImplToJson(
      this,
    );
  }
}

abstract class _TimeMeasurementEvent implements TimeMeasurementEvent {
  const factory _TimeMeasurementEvent(
      {final String? key,
      final double? seconds,
      final Map<String, dynamic>? meta}) = _$TimeMeasurementEventImpl;

  factory _TimeMeasurementEvent.fromJson(Map<String, dynamic> json) =
      _$TimeMeasurementEventImpl.fromJson;

  @override
  String? get key;
  @override
  double? get seconds;
  @override
  Map<String, dynamic>? get meta;

  /// Create a copy of TimeMeasurementEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeMeasurementEventImplCopyWith<_$TimeMeasurementEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationReceivedEvent _$NotificationReceivedEventFromJson(
    Map<String, dynamic> json) {
  return _NotificationReceivedEvent.fromJson(json);
}

/// @nodoc
mixin _$NotificationReceivedEvent {
  String? get notificationId => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  String? get deeplink => throw _privateConstructorUsedError;

  /// Serializes this NotificationReceivedEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationReceivedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationReceivedEventCopyWith<NotificationReceivedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationReceivedEventCopyWith<$Res> {
  factory $NotificationReceivedEventCopyWith(NotificationReceivedEvent value,
          $Res Function(NotificationReceivedEvent) then) =
      _$NotificationReceivedEventCopyWithImpl<$Res, NotificationReceivedEvent>;
  @useResult
  $Res call({String? notificationId, String? action, String? deeplink});
}

/// @nodoc
class _$NotificationReceivedEventCopyWithImpl<$Res,
        $Val extends NotificationReceivedEvent>
    implements $NotificationReceivedEventCopyWith<$Res> {
  _$NotificationReceivedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationReceivedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = freezed,
    Object? action = freezed,
    Object? deeplink = freezed,
  }) {
    return _then(_value.copyWith(
      notificationId: freezed == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      deeplink: freezed == deeplink
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationReceivedEventImplCopyWith<$Res>
    implements $NotificationReceivedEventCopyWith<$Res> {
  factory _$$NotificationReceivedEventImplCopyWith(
          _$NotificationReceivedEventImpl value,
          $Res Function(_$NotificationReceivedEventImpl) then) =
      __$$NotificationReceivedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? notificationId, String? action, String? deeplink});
}

/// @nodoc
class __$$NotificationReceivedEventImplCopyWithImpl<$Res>
    extends _$NotificationReceivedEventCopyWithImpl<$Res,
        _$NotificationReceivedEventImpl>
    implements _$$NotificationReceivedEventImplCopyWith<$Res> {
  __$$NotificationReceivedEventImplCopyWithImpl(
      _$NotificationReceivedEventImpl _value,
      $Res Function(_$NotificationReceivedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationReceivedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = freezed,
    Object? action = freezed,
    Object? deeplink = freezed,
  }) {
    return _then(_$NotificationReceivedEventImpl(
      notificationId: freezed == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      deeplink: freezed == deeplink
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationReceivedEventImpl implements _NotificationReceivedEvent {
  const _$NotificationReceivedEventImpl(
      {this.notificationId, this.action, this.deeplink});

  factory _$NotificationReceivedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationReceivedEventImplFromJson(json);

  @override
  final String? notificationId;
  @override
  final String? action;
  @override
  final String? deeplink;

  @override
  String toString() {
    return 'NotificationReceivedEvent(notificationId: $notificationId, action: $action, deeplink: $deeplink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationReceivedEventImpl &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.deeplink, deeplink) ||
                other.deeplink == deeplink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, notificationId, action, deeplink);

  /// Create a copy of NotificationReceivedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationReceivedEventImplCopyWith<_$NotificationReceivedEventImpl>
      get copyWith => __$$NotificationReceivedEventImplCopyWithImpl<
          _$NotificationReceivedEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationReceivedEventImplToJson(
      this,
    );
  }
}

abstract class _NotificationReceivedEvent implements NotificationReceivedEvent {
  const factory _NotificationReceivedEvent(
      {final String? notificationId,
      final String? action,
      final String? deeplink}) = _$NotificationReceivedEventImpl;

  factory _NotificationReceivedEvent.fromJson(Map<String, dynamic> json) =
      _$NotificationReceivedEventImpl.fromJson;

  @override
  String? get notificationId;
  @override
  String? get action;
  @override
  String? get deeplink;

  /// Create a copy of NotificationReceivedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationReceivedEventImplCopyWith<_$NotificationReceivedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationOpenedEvent _$NotificationOpenedEventFromJson(
    Map<String, dynamic> json) {
  return _NotificationOpenedEvent.fromJson(json);
}

/// @nodoc
mixin _$NotificationOpenedEvent {
  String? get notificationId => throw _privateConstructorUsedError;

  /// Serializes this NotificationOpenedEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationOpenedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationOpenedEventCopyWith<NotificationOpenedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationOpenedEventCopyWith<$Res> {
  factory $NotificationOpenedEventCopyWith(NotificationOpenedEvent value,
          $Res Function(NotificationOpenedEvent) then) =
      _$NotificationOpenedEventCopyWithImpl<$Res, NotificationOpenedEvent>;
  @useResult
  $Res call({String? notificationId});
}

/// @nodoc
class _$NotificationOpenedEventCopyWithImpl<$Res,
        $Val extends NotificationOpenedEvent>
    implements $NotificationOpenedEventCopyWith<$Res> {
  _$NotificationOpenedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationOpenedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = freezed,
  }) {
    return _then(_value.copyWith(
      notificationId: freezed == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationOpenedEventImplCopyWith<$Res>
    implements $NotificationOpenedEventCopyWith<$Res> {
  factory _$$NotificationOpenedEventImplCopyWith(
          _$NotificationOpenedEventImpl value,
          $Res Function(_$NotificationOpenedEventImpl) then) =
      __$$NotificationOpenedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? notificationId});
}

/// @nodoc
class __$$NotificationOpenedEventImplCopyWithImpl<$Res>
    extends _$NotificationOpenedEventCopyWithImpl<$Res,
        _$NotificationOpenedEventImpl>
    implements _$$NotificationOpenedEventImplCopyWith<$Res> {
  __$$NotificationOpenedEventImplCopyWithImpl(
      _$NotificationOpenedEventImpl _value,
      $Res Function(_$NotificationOpenedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationOpenedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = freezed,
  }) {
    return _then(_$NotificationOpenedEventImpl(
      notificationId: freezed == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationOpenedEventImpl implements _NotificationOpenedEvent {
  const _$NotificationOpenedEventImpl({this.notificationId});

  factory _$NotificationOpenedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationOpenedEventImplFromJson(json);

  @override
  final String? notificationId;

  @override
  String toString() {
    return 'NotificationOpenedEvent(notificationId: $notificationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationOpenedEventImpl &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notificationId);

  /// Create a copy of NotificationOpenedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationOpenedEventImplCopyWith<_$NotificationOpenedEventImpl>
      get copyWith => __$$NotificationOpenedEventImplCopyWithImpl<
          _$NotificationOpenedEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationOpenedEventImplToJson(
      this,
    );
  }
}

abstract class _NotificationOpenedEvent implements NotificationOpenedEvent {
  const factory _NotificationOpenedEvent({final String? notificationId}) =
      _$NotificationOpenedEventImpl;

  factory _NotificationOpenedEvent.fromJson(Map<String, dynamic> json) =
      _$NotificationOpenedEventImpl.fromJson;

  @override
  String? get notificationId;

  /// Create a copy of NotificationOpenedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationOpenedEventImplCopyWith<_$NotificationOpenedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LogEvent _$LogEventFromJson(Map<String, dynamic> json) {
  return _LogEvent.fromJson(json);
}

/// @nodoc
mixin _$LogEvent {
  String? get name => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get pageCode => throw _privateConstructorUsedError;
  Map<String, dynamic>? get meta => throw _privateConstructorUsedError;

  /// Serializes this LogEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogEventCopyWith<LogEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogEventCopyWith<$Res> {
  factory $LogEventCopyWith(LogEvent value, $Res Function(LogEvent) then) =
      _$LogEventCopyWithImpl<$Res, LogEvent>;
  @useResult
  $Res call(
      {String? name,
      String? message,
      String? pageCode,
      Map<String, dynamic>? meta});
}

/// @nodoc
class _$LogEventCopyWithImpl<$Res, $Val extends LogEvent>
    implements $LogEventCopyWith<$Res> {
  _$LogEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? message = freezed,
    Object? pageCode = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCode: freezed == pageCode
          ? _value.pageCode
          : pageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogEventImplCopyWith<$Res>
    implements $LogEventCopyWith<$Res> {
  factory _$$LogEventImplCopyWith(
          _$LogEventImpl value, $Res Function(_$LogEventImpl) then) =
      __$$LogEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? message,
      String? pageCode,
      Map<String, dynamic>? meta});
}

/// @nodoc
class __$$LogEventImplCopyWithImpl<$Res>
    extends _$LogEventCopyWithImpl<$Res, _$LogEventImpl>
    implements _$$LogEventImplCopyWith<$Res> {
  __$$LogEventImplCopyWithImpl(
      _$LogEventImpl _value, $Res Function(_$LogEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? message = freezed,
    Object? pageCode = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$LogEventImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCode: freezed == pageCode
          ? _value.pageCode
          : pageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogEventImpl implements _LogEvent {
  const _$LogEventImpl(
      {this.name,
      this.message,
      this.pageCode,
      final Map<String, dynamic>? meta})
      : _meta = meta;

  factory _$LogEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogEventImplFromJson(json);

  @override
  final String? name;
  @override
  final String? message;
  @override
  final String? pageCode;
  final Map<String, dynamic>? _meta;
  @override
  Map<String, dynamic>? get meta {
    final value = _meta;
    if (value == null) return null;
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'LogEvent(name: $name, message: $message, pageCode: $pageCode, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogEventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.pageCode, pageCode) ||
                other.pageCode == pageCode) &&
            const DeepCollectionEquality().equals(other._meta, _meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, message, pageCode,
      const DeepCollectionEquality().hash(_meta));

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogEventImplCopyWith<_$LogEventImpl> get copyWith =>
      __$$LogEventImplCopyWithImpl<_$LogEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogEventImplToJson(
      this,
    );
  }
}

abstract class _LogEvent implements LogEvent {
  const factory _LogEvent(
      {final String? name,
      final String? message,
      final String? pageCode,
      final Map<String, dynamic>? meta}) = _$LogEventImpl;

  factory _LogEvent.fromJson(Map<String, dynamic> json) =
      _$LogEventImpl.fromJson;

  @override
  String? get name;
  @override
  String? get message;
  @override
  String? get pageCode;
  @override
  Map<String, dynamic>? get meta;

  /// Create a copy of LogEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogEventImplCopyWith<_$LogEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
