// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

NotificationDeviceTokenUpdatedEvent
    _$NotificationDeviceTokenUpdatedEventFromJson(Map<String, dynamic> json) {
  return _NotificationDeviceTokenUpdatedEvent.fromJson(json);
}

/// @nodoc
mixin _$NotificationDeviceTokenUpdatedEvent {
  /// Serializes this NotificationDeviceTokenUpdatedEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDeviceTokenUpdatedEventCopyWith<$Res> {
  factory $NotificationDeviceTokenUpdatedEventCopyWith(
          NotificationDeviceTokenUpdatedEvent value,
          $Res Function(NotificationDeviceTokenUpdatedEvent) then) =
      _$NotificationDeviceTokenUpdatedEventCopyWithImpl<$Res,
          NotificationDeviceTokenUpdatedEvent>;
}

/// @nodoc
class _$NotificationDeviceTokenUpdatedEventCopyWithImpl<$Res,
        $Val extends NotificationDeviceTokenUpdatedEvent>
    implements $NotificationDeviceTokenUpdatedEventCopyWith<$Res> {
  _$NotificationDeviceTokenUpdatedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationDeviceTokenUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotificationDeviceTokenUpdatedEventImplCopyWith<$Res> {
  factory _$$NotificationDeviceTokenUpdatedEventImplCopyWith(
          _$NotificationDeviceTokenUpdatedEventImpl value,
          $Res Function(_$NotificationDeviceTokenUpdatedEventImpl) then) =
      __$$NotificationDeviceTokenUpdatedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationDeviceTokenUpdatedEventImplCopyWithImpl<$Res>
    extends _$NotificationDeviceTokenUpdatedEventCopyWithImpl<$Res,
        _$NotificationDeviceTokenUpdatedEventImpl>
    implements _$$NotificationDeviceTokenUpdatedEventImplCopyWith<$Res> {
  __$$NotificationDeviceTokenUpdatedEventImplCopyWithImpl(
      _$NotificationDeviceTokenUpdatedEventImpl _value,
      $Res Function(_$NotificationDeviceTokenUpdatedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationDeviceTokenUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$NotificationDeviceTokenUpdatedEventImpl
    implements _NotificationDeviceTokenUpdatedEvent {
  const _$NotificationDeviceTokenUpdatedEventImpl();

  factory _$NotificationDeviceTokenUpdatedEventImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationDeviceTokenUpdatedEventImplFromJson(json);

  @override
  String toString() {
    return 'NotificationDeviceTokenUpdatedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDeviceTokenUpdatedEventImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDeviceTokenUpdatedEventImplToJson(
      this,
    );
  }
}

abstract class _NotificationDeviceTokenUpdatedEvent
    implements NotificationDeviceTokenUpdatedEvent {
  const factory _NotificationDeviceTokenUpdatedEvent() =
      _$NotificationDeviceTokenUpdatedEventImpl;

  factory _NotificationDeviceTokenUpdatedEvent.fromJson(
          Map<String, dynamic> json) =
      _$NotificationDeviceTokenUpdatedEventImpl.fromJson;
}

NotificationsStatusEvent _$NotificationsStatusEventFromJson(
    Map<String, dynamic> json) {
  return _NotificationsStatusEvent.fromJson(json);
}

/// @nodoc
mixin _$NotificationsStatusEvent {
  String? get recipientId => throw _privateConstructorUsedError;
  bool? get enabled => throw _privateConstructorUsedError;

  /// Serializes this NotificationsStatusEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationsStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationsStatusEventCopyWith<NotificationsStatusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStatusEventCopyWith<$Res> {
  factory $NotificationsStatusEventCopyWith(NotificationsStatusEvent value,
          $Res Function(NotificationsStatusEvent) then) =
      _$NotificationsStatusEventCopyWithImpl<$Res, NotificationsStatusEvent>;
  @useResult
  $Res call({String? recipientId, bool? enabled});
}

/// @nodoc
class _$NotificationsStatusEventCopyWithImpl<$Res,
        $Val extends NotificationsStatusEvent>
    implements $NotificationsStatusEventCopyWith<$Res> {
  _$NotificationsStatusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipientId = freezed,
    Object? enabled = freezed,
  }) {
    return _then(_value.copyWith(
      recipientId: freezed == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationsStatusEventImplCopyWith<$Res>
    implements $NotificationsStatusEventCopyWith<$Res> {
  factory _$$NotificationsStatusEventImplCopyWith(
          _$NotificationsStatusEventImpl value,
          $Res Function(_$NotificationsStatusEventImpl) then) =
      __$$NotificationsStatusEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? recipientId, bool? enabled});
}

/// @nodoc
class __$$NotificationsStatusEventImplCopyWithImpl<$Res>
    extends _$NotificationsStatusEventCopyWithImpl<$Res,
        _$NotificationsStatusEventImpl>
    implements _$$NotificationsStatusEventImplCopyWith<$Res> {
  __$$NotificationsStatusEventImplCopyWithImpl(
      _$NotificationsStatusEventImpl _value,
      $Res Function(_$NotificationsStatusEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipientId = freezed,
    Object? enabled = freezed,
  }) {
    return _then(_$NotificationsStatusEventImpl(
      recipientId: freezed == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: freezed == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationsStatusEventImpl implements _NotificationsStatusEvent {
  const _$NotificationsStatusEventImpl({this.recipientId, this.enabled});

  factory _$NotificationsStatusEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationsStatusEventImplFromJson(json);

  @override
  final String? recipientId;
  @override
  final bool? enabled;

  @override
  String toString() {
    return 'NotificationsStatusEvent(recipientId: $recipientId, enabled: $enabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsStatusEventImpl &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, recipientId, enabled);

  /// Create a copy of NotificationsStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsStatusEventImplCopyWith<_$NotificationsStatusEventImpl>
      get copyWith => __$$NotificationsStatusEventImplCopyWithImpl<
          _$NotificationsStatusEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationsStatusEventImplToJson(
      this,
    );
  }
}

abstract class _NotificationsStatusEvent implements NotificationsStatusEvent {
  const factory _NotificationsStatusEvent(
      {final String? recipientId,
      final bool? enabled}) = _$NotificationsStatusEventImpl;

  factory _NotificationsStatusEvent.fromJson(Map<String, dynamic> json) =
      _$NotificationsStatusEventImpl.fromJson;

  @override
  String? get recipientId;
  @override
  bool? get enabled;

  /// Create a copy of NotificationsStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsStatusEventImplCopyWith<_$NotificationsStatusEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
