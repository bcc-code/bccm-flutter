// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubscriptionModel extends SubscriptionModel {
  @override
  final String token;
  @override
  final BuiltList<TrackListReference>? podcastReferences;

  factory _$SubscriptionModel(
          [void Function(SubscriptionModelBuilder)? updates]) =>
      (new SubscriptionModelBuilder()..update(updates))._build();

  _$SubscriptionModel._({required this.token, this.podcastReferences})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(token, r'SubscriptionModel', 'token');
  }

  @override
  SubscriptionModel rebuild(void Function(SubscriptionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionModelBuilder toBuilder() =>
      new SubscriptionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionModel &&
        token == other.token &&
        podcastReferences == other.podcastReferences;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, podcastReferences.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionModel')
          ..add('token', token)
          ..add('podcastReferences', podcastReferences))
        .toString();
  }
}

class SubscriptionModelBuilder
    implements Builder<SubscriptionModel, SubscriptionModelBuilder> {
  _$SubscriptionModel? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  ListBuilder<TrackListReference>? _podcastReferences;
  ListBuilder<TrackListReference> get podcastReferences =>
      _$this._podcastReferences ??= new ListBuilder<TrackListReference>();
  set podcastReferences(ListBuilder<TrackListReference>? podcastReferences) =>
      _$this._podcastReferences = podcastReferences;

  SubscriptionModelBuilder() {
    SubscriptionModel._defaults(this);
  }

  SubscriptionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _podcastReferences = $v.podcastReferences?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubscriptionModel;
  }

  @override
  void update(void Function(SubscriptionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionModel build() => _build();

  _$SubscriptionModel _build() {
    _$SubscriptionModel _$result;
    try {
      _$result = _$v ??
          new _$SubscriptionModel._(
              token: BuiltValueNullFieldError.checkNotNull(
                  token, r'SubscriptionModel', 'token'),
              podcastReferences: _podcastReferences?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'podcastReferences';
        _podcastReferences?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SubscriptionModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint