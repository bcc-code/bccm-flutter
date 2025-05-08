// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_prompt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationPromptDismissedEvent _$NotificationPromptDismissedEventFromJson(
    Map<String, dynamic> json) {
  return _NotificationPromptDismissedEvent.fromJson(json);
}

/// @nodoc
mixin _$NotificationPromptDismissedEvent {
  int get timesDismissed => throw _privateConstructorUsedError;

  /// Serializes this NotificationPromptDismissedEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationPromptDismissedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationPromptDismissedEventCopyWith<NotificationPromptDismissedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPromptDismissedEventCopyWith<$Res> {
  factory $NotificationPromptDismissedEventCopyWith(
          NotificationPromptDismissedEvent value,
          $Res Function(NotificationPromptDismissedEvent) then) =
      _$NotificationPromptDismissedEventCopyWithImpl<$Res,
          NotificationPromptDismissedEvent>;
  @useResult
  $Res call({int timesDismissed});
}

/// @nodoc
class _$NotificationPromptDismissedEventCopyWithImpl<$Res,
        $Val extends NotificationPromptDismissedEvent>
    implements $NotificationPromptDismissedEventCopyWith<$Res> {
  _$NotificationPromptDismissedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPromptDismissedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timesDismissed = null,
  }) {
    return _then(_value.copyWith(
      timesDismissed: null == timesDismissed
          ? _value.timesDismissed
          : timesDismissed // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationPromptDismissedEventImplCopyWith<$Res>
    implements $NotificationPromptDismissedEventCopyWith<$Res> {
  factory _$$NotificationPromptDismissedEventImplCopyWith(
          _$NotificationPromptDismissedEventImpl value,
          $Res Function(_$NotificationPromptDismissedEventImpl) then) =
      __$$NotificationPromptDismissedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int timesDismissed});
}

/// @nodoc
class __$$NotificationPromptDismissedEventImplCopyWithImpl<$Res>
    extends _$NotificationPromptDismissedEventCopyWithImpl<$Res,
        _$NotificationPromptDismissedEventImpl>
    implements _$$NotificationPromptDismissedEventImplCopyWith<$Res> {
  __$$NotificationPromptDismissedEventImplCopyWithImpl(
      _$NotificationPromptDismissedEventImpl _value,
      $Res Function(_$NotificationPromptDismissedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPromptDismissedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timesDismissed = null,
  }) {
    return _then(_$NotificationPromptDismissedEventImpl(
      timesDismissed: null == timesDismissed
          ? _value.timesDismissed
          : timesDismissed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationPromptDismissedEventImpl
    implements _NotificationPromptDismissedEvent {
  const _$NotificationPromptDismissedEventImpl({required this.timesDismissed});

  factory _$NotificationPromptDismissedEventImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationPromptDismissedEventImplFromJson(json);

  @override
  final int timesDismissed;

  @override
  String toString() {
    return 'NotificationPromptDismissedEvent(timesDismissed: $timesDismissed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPromptDismissedEventImpl &&
            (identical(other.timesDismissed, timesDismissed) ||
                other.timesDismissed == timesDismissed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timesDismissed);

  /// Create a copy of NotificationPromptDismissedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPromptDismissedEventImplCopyWith<
          _$NotificationPromptDismissedEventImpl>
      get copyWith => __$$NotificationPromptDismissedEventImplCopyWithImpl<
          _$NotificationPromptDismissedEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPromptDismissedEventImplToJson(
      this,
    );
  }
}

abstract class _NotificationPromptDismissedEvent
    implements NotificationPromptDismissedEvent {
  const factory _NotificationPromptDismissedEvent(
          {required final int timesDismissed}) =
      _$NotificationPromptDismissedEventImpl;

  factory _NotificationPromptDismissedEvent.fromJson(
          Map<String, dynamic> json) =
      _$NotificationPromptDismissedEventImpl.fromJson;

  @override
  int get timesDismissed;

  /// Create a copy of NotificationPromptDismissedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPromptDismissedEventImplCopyWith<
          _$NotificationPromptDismissedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationPromptClickedEvent _$NotificationPromptClickedEventFromJson(
    Map<String, dynamic> json) {
  return _NotificationPromptClickedEvent.fromJson(json);
}

/// @nodoc
mixin _$NotificationPromptClickedEvent {
  /// Serializes this NotificationPromptClickedEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPromptClickedEventCopyWith<$Res> {
  factory $NotificationPromptClickedEventCopyWith(
          NotificationPromptClickedEvent value,
          $Res Function(NotificationPromptClickedEvent) then) =
      _$NotificationPromptClickedEventCopyWithImpl<$Res,
          NotificationPromptClickedEvent>;
}

/// @nodoc
class _$NotificationPromptClickedEventCopyWithImpl<$Res,
        $Val extends NotificationPromptClickedEvent>
    implements $NotificationPromptClickedEventCopyWith<$Res> {
  _$NotificationPromptClickedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPromptClickedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotificationPromptClickedEventImplCopyWith<$Res> {
  factory _$$NotificationPromptClickedEventImplCopyWith(
          _$NotificationPromptClickedEventImpl value,
          $Res Function(_$NotificationPromptClickedEventImpl) then) =
      __$$NotificationPromptClickedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationPromptClickedEventImplCopyWithImpl<$Res>
    extends _$NotificationPromptClickedEventCopyWithImpl<$Res,
        _$NotificationPromptClickedEventImpl>
    implements _$$NotificationPromptClickedEventImplCopyWith<$Res> {
  __$$NotificationPromptClickedEventImplCopyWithImpl(
      _$NotificationPromptClickedEventImpl _value,
      $Res Function(_$NotificationPromptClickedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPromptClickedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$NotificationPromptClickedEventImpl
    implements _NotificationPromptClickedEvent {
  const _$NotificationPromptClickedEventImpl();

  factory _$NotificationPromptClickedEventImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationPromptClickedEventImplFromJson(json);

  @override
  String toString() {
    return 'NotificationPromptClickedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPromptClickedEventImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPromptClickedEventImplToJson(
      this,
    );
  }
}

abstract class _NotificationPromptClickedEvent
    implements NotificationPromptClickedEvent {
  const factory _NotificationPromptClickedEvent() =
      _$NotificationPromptClickedEventImpl;

  factory _NotificationPromptClickedEvent.fromJson(Map<String, dynamic> json) =
      _$NotificationPromptClickedEventImpl.fromJson;
}

NotificationPromptDeniedEvent _$NotificationPromptDeniedEventFromJson(
    Map<String, dynamic> json) {
  return _NotificationPromptDeniedEvent.fromJson(json);
}

/// @nodoc
mixin _$NotificationPromptDeniedEvent {
  /// Serializes this NotificationPromptDeniedEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPromptDeniedEventCopyWith<$Res> {
  factory $NotificationPromptDeniedEventCopyWith(
          NotificationPromptDeniedEvent value,
          $Res Function(NotificationPromptDeniedEvent) then) =
      _$NotificationPromptDeniedEventCopyWithImpl<$Res,
          NotificationPromptDeniedEvent>;
}

/// @nodoc
class _$NotificationPromptDeniedEventCopyWithImpl<$Res,
        $Val extends NotificationPromptDeniedEvent>
    implements $NotificationPromptDeniedEventCopyWith<$Res> {
  _$NotificationPromptDeniedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPromptDeniedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotificationPromptDeniedEventImplCopyWith<$Res> {
  factory _$$NotificationPromptDeniedEventImplCopyWith(
          _$NotificationPromptDeniedEventImpl value,
          $Res Function(_$NotificationPromptDeniedEventImpl) then) =
      __$$NotificationPromptDeniedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationPromptDeniedEventImplCopyWithImpl<$Res>
    extends _$NotificationPromptDeniedEventCopyWithImpl<$Res,
        _$NotificationPromptDeniedEventImpl>
    implements _$$NotificationPromptDeniedEventImplCopyWith<$Res> {
  __$$NotificationPromptDeniedEventImplCopyWithImpl(
      _$NotificationPromptDeniedEventImpl _value,
      $Res Function(_$NotificationPromptDeniedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPromptDeniedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$NotificationPromptDeniedEventImpl
    implements _NotificationPromptDeniedEvent {
  const _$NotificationPromptDeniedEventImpl();

  factory _$NotificationPromptDeniedEventImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationPromptDeniedEventImplFromJson(json);

  @override
  String toString() {
    return 'NotificationPromptDeniedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPromptDeniedEventImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPromptDeniedEventImplToJson(
      this,
    );
  }
}

abstract class _NotificationPromptDeniedEvent
    implements NotificationPromptDeniedEvent {
  const factory _NotificationPromptDeniedEvent() =
      _$NotificationPromptDeniedEventImpl;

  factory _NotificationPromptDeniedEvent.fromJson(Map<String, dynamic> json) =
      _$NotificationPromptDeniedEventImpl.fromJson;
}

NotificationPromptAcceptedEvent _$NotificationPromptAcceptedEventFromJson(
    Map<String, dynamic> json) {
  return _NotificationPromptAcceptedEvent.fromJson(json);
}

/// @nodoc
mixin _$NotificationPromptAcceptedEvent {
  /// Serializes this NotificationPromptAcceptedEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPromptAcceptedEventCopyWith<$Res> {
  factory $NotificationPromptAcceptedEventCopyWith(
          NotificationPromptAcceptedEvent value,
          $Res Function(NotificationPromptAcceptedEvent) then) =
      _$NotificationPromptAcceptedEventCopyWithImpl<$Res,
          NotificationPromptAcceptedEvent>;
}

/// @nodoc
class _$NotificationPromptAcceptedEventCopyWithImpl<$Res,
        $Val extends NotificationPromptAcceptedEvent>
    implements $NotificationPromptAcceptedEventCopyWith<$Res> {
  _$NotificationPromptAcceptedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPromptAcceptedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotificationPromptAcceptedEventImplCopyWith<$Res> {
  factory _$$NotificationPromptAcceptedEventImplCopyWith(
          _$NotificationPromptAcceptedEventImpl value,
          $Res Function(_$NotificationPromptAcceptedEventImpl) then) =
      __$$NotificationPromptAcceptedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationPromptAcceptedEventImplCopyWithImpl<$Res>
    extends _$NotificationPromptAcceptedEventCopyWithImpl<$Res,
        _$NotificationPromptAcceptedEventImpl>
    implements _$$NotificationPromptAcceptedEventImplCopyWith<$Res> {
  __$$NotificationPromptAcceptedEventImplCopyWithImpl(
      _$NotificationPromptAcceptedEventImpl _value,
      $Res Function(_$NotificationPromptAcceptedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPromptAcceptedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$NotificationPromptAcceptedEventImpl
    implements _NotificationPromptAcceptedEvent {
  const _$NotificationPromptAcceptedEventImpl();

  factory _$NotificationPromptAcceptedEventImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationPromptAcceptedEventImplFromJson(json);

  @override
  String toString() {
    return 'NotificationPromptAcceptedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPromptAcceptedEventImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPromptAcceptedEventImplToJson(
      this,
    );
  }
}

abstract class _NotificationPromptAcceptedEvent
    implements NotificationPromptAcceptedEvent {
  const factory _NotificationPromptAcceptedEvent() =
      _$NotificationPromptAcceptedEventImpl;

  factory _NotificationPromptAcceptedEvent.fromJson(Map<String, dynamic> json) =
      _$NotificationPromptAcceptedEventImpl.fromJson;
}

NotificationsSettingToggledEvent _$NotificationsSettingToggledEventFromJson(
    Map<String, dynamic> json) {
  return _NotificationsSettingToggledEvent.fromJson(json);
}

/// @nodoc
mixin _$NotificationsSettingToggledEvent {
  bool get enabled => throw _privateConstructorUsedError;

  /// Serializes this NotificationsSettingToggledEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationsSettingToggledEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationsSettingToggledEventCopyWith<NotificationsSettingToggledEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsSettingToggledEventCopyWith<$Res> {
  factory $NotificationsSettingToggledEventCopyWith(
          NotificationsSettingToggledEvent value,
          $Res Function(NotificationsSettingToggledEvent) then) =
      _$NotificationsSettingToggledEventCopyWithImpl<$Res,
          NotificationsSettingToggledEvent>;
  @useResult
  $Res call({bool enabled});
}

/// @nodoc
class _$NotificationsSettingToggledEventCopyWithImpl<$Res,
        $Val extends NotificationsSettingToggledEvent>
    implements $NotificationsSettingToggledEventCopyWith<$Res> {
  _$NotificationsSettingToggledEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsSettingToggledEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
  }) {
    return _then(_value.copyWith(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationsSettingToggledEventImplCopyWith<$Res>
    implements $NotificationsSettingToggledEventCopyWith<$Res> {
  factory _$$NotificationsSettingToggledEventImplCopyWith(
          _$NotificationsSettingToggledEventImpl value,
          $Res Function(_$NotificationsSettingToggledEventImpl) then) =
      __$$NotificationsSettingToggledEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enabled});
}

/// @nodoc
class __$$NotificationsSettingToggledEventImplCopyWithImpl<$Res>
    extends _$NotificationsSettingToggledEventCopyWithImpl<$Res,
        _$NotificationsSettingToggledEventImpl>
    implements _$$NotificationsSettingToggledEventImplCopyWith<$Res> {
  __$$NotificationsSettingToggledEventImplCopyWithImpl(
      _$NotificationsSettingToggledEventImpl _value,
      $Res Function(_$NotificationsSettingToggledEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsSettingToggledEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
  }) {
    return _then(_$NotificationsSettingToggledEventImpl(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationsSettingToggledEventImpl
    implements _NotificationsSettingToggledEvent {
  const _$NotificationsSettingToggledEventImpl({required this.enabled});

  factory _$NotificationsSettingToggledEventImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationsSettingToggledEventImplFromJson(json);

  @override
  final bool enabled;

  @override
  String toString() {
    return 'NotificationsSettingToggledEvent(enabled: $enabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsSettingToggledEventImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, enabled);

  /// Create a copy of NotificationsSettingToggledEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsSettingToggledEventImplCopyWith<
          _$NotificationsSettingToggledEventImpl>
      get copyWith => __$$NotificationsSettingToggledEventImplCopyWithImpl<
          _$NotificationsSettingToggledEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationsSettingToggledEventImplToJson(
      this,
    );
  }
}

abstract class _NotificationsSettingToggledEvent
    implements NotificationsSettingToggledEvent {
  const factory _NotificationsSettingToggledEvent(
      {required final bool enabled}) = _$NotificationsSettingToggledEventImpl;

  factory _NotificationsSettingToggledEvent.fromJson(
          Map<String, dynamic> json) =
      _$NotificationsSettingToggledEventImpl.fromJson;

  @override
  bool get enabled;

  /// Create a copy of NotificationsSettingToggledEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsSettingToggledEventImplCopyWith<
          _$NotificationsSettingToggledEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
