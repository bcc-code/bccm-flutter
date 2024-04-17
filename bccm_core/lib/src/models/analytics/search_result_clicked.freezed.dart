// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_clicked.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResultClickedEvent _$SearchResultClickedEventFromJson(
    Map<String, dynamic> json) {
  return _SectionClickedEvent.fromJson(json);
}

/// @nodoc
mixin _$SearchResultClickedEvent {
  String get searchText => throw _privateConstructorUsedError;
  int get elementPosition => throw _privateConstructorUsedError;
  String get elementType => throw _privateConstructorUsedError;
  String get elementId => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultClickedEventCopyWith<SearchResultClickedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultClickedEventCopyWith<$Res> {
  factory $SearchResultClickedEventCopyWith(SearchResultClickedEvent value,
          $Res Function(SearchResultClickedEvent) then) =
      _$SearchResultClickedEventCopyWithImpl<$Res, SearchResultClickedEvent>;
  @useResult
  $Res call(
      {String searchText,
      int elementPosition,
      String elementType,
      String elementId,
      String group});
}

/// @nodoc
class _$SearchResultClickedEventCopyWithImpl<$Res,
        $Val extends SearchResultClickedEvent>
    implements $SearchResultClickedEventCopyWith<$Res> {
  _$SearchResultClickedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
    Object? elementPosition = null,
    Object? elementType = null,
    Object? elementId = null,
    Object? group = null,
  }) {
    return _then(_value.copyWith(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      elementPosition: null == elementPosition
          ? _value.elementPosition
          : elementPosition // ignore: cast_nullable_to_non_nullable
              as int,
      elementType: null == elementType
          ? _value.elementType
          : elementType // ignore: cast_nullable_to_non_nullable
              as String,
      elementId: null == elementId
          ? _value.elementId
          : elementId // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionClickedEventImplCopyWith<$Res>
    implements $SearchResultClickedEventCopyWith<$Res> {
  factory _$$SectionClickedEventImplCopyWith(_$SectionClickedEventImpl value,
          $Res Function(_$SectionClickedEventImpl) then) =
      __$$SectionClickedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String searchText,
      int elementPosition,
      String elementType,
      String elementId,
      String group});
}

/// @nodoc
class __$$SectionClickedEventImplCopyWithImpl<$Res>
    extends _$SearchResultClickedEventCopyWithImpl<$Res,
        _$SectionClickedEventImpl>
    implements _$$SectionClickedEventImplCopyWith<$Res> {
  __$$SectionClickedEventImplCopyWithImpl(_$SectionClickedEventImpl _value,
      $Res Function(_$SectionClickedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
    Object? elementPosition = null,
    Object? elementType = null,
    Object? elementId = null,
    Object? group = null,
  }) {
    return _then(_$SectionClickedEventImpl(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      elementPosition: null == elementPosition
          ? _value.elementPosition
          : elementPosition // ignore: cast_nullable_to_non_nullable
              as int,
      elementType: null == elementType
          ? _value.elementType
          : elementType // ignore: cast_nullable_to_non_nullable
              as String,
      elementId: null == elementId
          ? _value.elementId
          : elementId // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionClickedEventImpl implements _SectionClickedEvent {
  const _$SectionClickedEventImpl(
      {required this.searchText,
      required this.elementPosition,
      required this.elementType,
      required this.elementId,
      required this.group});

  factory _$SectionClickedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionClickedEventImplFromJson(json);

  @override
  final String searchText;
  @override
  final int elementPosition;
  @override
  final String elementType;
  @override
  final String elementId;
  @override
  final String group;

  @override
  String toString() {
    return 'SearchResultClickedEvent(searchText: $searchText, elementPosition: $elementPosition, elementType: $elementType, elementId: $elementId, group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionClickedEventImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.elementPosition, elementPosition) ||
                other.elementPosition == elementPosition) &&
            (identical(other.elementType, elementType) ||
                other.elementType == elementType) &&
            (identical(other.elementId, elementId) ||
                other.elementId == elementId) &&
            (identical(other.group, group) || other.group == group));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, searchText, elementPosition, elementType, elementId, group);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionClickedEventImplCopyWith<_$SectionClickedEventImpl> get copyWith =>
      __$$SectionClickedEventImplCopyWithImpl<_$SectionClickedEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionClickedEventImplToJson(
      this,
    );
  }
}

abstract class _SectionClickedEvent implements SearchResultClickedEvent {
  const factory _SectionClickedEvent(
      {required final String searchText,
      required final int elementPosition,
      required final String elementType,
      required final String elementId,
      required final String group}) = _$SectionClickedEventImpl;

  factory _SectionClickedEvent.fromJson(Map<String, dynamic> json) =
      _$SectionClickedEventImpl.fromJson;

  @override
  String get searchText;
  @override
  int get elementPosition;
  @override
  String get elementType;
  @override
  String get elementId;
  @override
  String get group;
  @override
  @JsonKey(ignore: true)
  _$$SectionClickedEventImplCopyWith<_$SectionClickedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchAnalytics {
  String get searchText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchAnalyticsCopyWith<SearchAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAnalyticsCopyWith<$Res> {
  factory $SearchAnalyticsCopyWith(
          SearchAnalytics value, $Res Function(SearchAnalytics) then) =
      _$SearchAnalyticsCopyWithImpl<$Res, SearchAnalytics>;
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class _$SearchAnalyticsCopyWithImpl<$Res, $Val extends SearchAnalytics>
    implements $SearchAnalyticsCopyWith<$Res> {
  _$SearchAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_value.copyWith(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchAnalyticsImplCopyWith<$Res>
    implements $SearchAnalyticsCopyWith<$Res> {
  factory _$$SearchAnalyticsImplCopyWith(_$SearchAnalyticsImpl value,
          $Res Function(_$SearchAnalyticsImpl) then) =
      __$$SearchAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$SearchAnalyticsImplCopyWithImpl<$Res>
    extends _$SearchAnalyticsCopyWithImpl<$Res, _$SearchAnalyticsImpl>
    implements _$$SearchAnalyticsImplCopyWith<$Res> {
  __$$SearchAnalyticsImplCopyWithImpl(
      _$SearchAnalyticsImpl _value, $Res Function(_$SearchAnalyticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$SearchAnalyticsImpl(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchAnalyticsImpl implements _SearchAnalytics {
  const _$SearchAnalyticsImpl({required this.searchText});

  @override
  final String searchText;

  @override
  String toString() {
    return 'SearchAnalytics(searchText: $searchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAnalyticsImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAnalyticsImplCopyWith<_$SearchAnalyticsImpl> get copyWith =>
      __$$SearchAnalyticsImplCopyWithImpl<_$SearchAnalyticsImpl>(
          this, _$identity);
}

abstract class _SearchAnalytics implements SearchAnalytics {
  const factory _SearchAnalytics({required final String searchText}) =
      _$SearchAnalyticsImpl;

  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  _$$SearchAnalyticsImplCopyWith<_$SearchAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchItemAnalytics {
  int get position => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchItemAnalyticsCopyWith<SearchItemAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchItemAnalyticsCopyWith<$Res> {
  factory $SearchItemAnalyticsCopyWith(
          SearchItemAnalytics value, $Res Function(SearchItemAnalytics) then) =
      _$SearchItemAnalyticsCopyWithImpl<$Res, SearchItemAnalytics>;
  @useResult
  $Res call({int position, String type, String id, String group});
}

/// @nodoc
class _$SearchItemAnalyticsCopyWithImpl<$Res, $Val extends SearchItemAnalytics>
    implements $SearchItemAnalyticsCopyWith<$Res> {
  _$SearchItemAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? type = null,
    Object? id = null,
    Object? group = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchItemAnalyticsImplCopyWith<$Res>
    implements $SearchItemAnalyticsCopyWith<$Res> {
  factory _$$SearchItemAnalyticsImplCopyWith(_$SearchItemAnalyticsImpl value,
          $Res Function(_$SearchItemAnalyticsImpl) then) =
      __$$SearchItemAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int position, String type, String id, String group});
}

/// @nodoc
class __$$SearchItemAnalyticsImplCopyWithImpl<$Res>
    extends _$SearchItemAnalyticsCopyWithImpl<$Res, _$SearchItemAnalyticsImpl>
    implements _$$SearchItemAnalyticsImplCopyWith<$Res> {
  __$$SearchItemAnalyticsImplCopyWithImpl(_$SearchItemAnalyticsImpl _value,
      $Res Function(_$SearchItemAnalyticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? type = null,
    Object? id = null,
    Object? group = null,
  }) {
    return _then(_$SearchItemAnalyticsImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchItemAnalyticsImpl implements _SearchItemAnalytics {
  const _$SearchItemAnalyticsImpl(
      {required this.position,
      required this.type,
      required this.id,
      required this.group});

  @override
  final int position;
  @override
  final String type;
  @override
  final String id;
  @override
  final String group;

  @override
  String toString() {
    return 'SearchItemAnalytics(position: $position, type: $type, id: $id, group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchItemAnalyticsImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, type, id, group);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchItemAnalyticsImplCopyWith<_$SearchItemAnalyticsImpl> get copyWith =>
      __$$SearchItemAnalyticsImplCopyWithImpl<_$SearchItemAnalyticsImpl>(
          this, _$identity);
}

abstract class _SearchItemAnalytics implements SearchItemAnalytics {
  const factory _SearchItemAnalytics(
      {required final int position,
      required final String type,
      required final String id,
      required final String group}) = _$SearchItemAnalyticsImpl;

  @override
  int get position;
  @override
  String get type;
  @override
  String get id;
  @override
  String get group;
  @override
  @JsonKey(ignore: true)
  _$$SearchItemAnalyticsImplCopyWith<_$SearchItemAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
