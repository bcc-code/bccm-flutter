// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hvhe_controller_hvhe_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HvheControllerHvheStatus extends HvheControllerHvheStatus {
  @override
  final int? boys;
  @override
  final int? girls;

  factory _$HvheControllerHvheStatus(
          [void Function(HvheControllerHvheStatusBuilder)? updates]) =>
      (new HvheControllerHvheStatusBuilder()..update(updates))._build();

  _$HvheControllerHvheStatus._({this.boys, this.girls}) : super._();

  @override
  HvheControllerHvheStatus rebuild(
          void Function(HvheControllerHvheStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HvheControllerHvheStatusBuilder toBuilder() =>
      new HvheControllerHvheStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HvheControllerHvheStatus &&
        boys == other.boys &&
        girls == other.girls;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, boys.hashCode);
    _$hash = $jc(_$hash, girls.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HvheControllerHvheStatus')
          ..add('boys', boys)
          ..add('girls', girls))
        .toString();
  }
}

class HvheControllerHvheStatusBuilder
    implements
        Builder<HvheControllerHvheStatus, HvheControllerHvheStatusBuilder> {
  _$HvheControllerHvheStatus? _$v;

  int? _boys;
  int? get boys => _$this._boys;
  set boys(int? boys) => _$this._boys = boys;

  int? _girls;
  int? get girls => _$this._girls;
  set girls(int? girls) => _$this._girls = girls;

  HvheControllerHvheStatusBuilder() {
    HvheControllerHvheStatus._defaults(this);
  }

  HvheControllerHvheStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _boys = $v.boys;
      _girls = $v.girls;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HvheControllerHvheStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HvheControllerHvheStatus;
  }

  @override
  void update(void Function(HvheControllerHvheStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HvheControllerHvheStatus build() => _build();

  _$HvheControllerHvheStatus _build() {
    final _$result = _$v ??
        new _$HvheControllerHvheStatus._(
          boys: boys,
          girls: girls,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
