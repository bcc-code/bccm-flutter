// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contributor_contributor_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContributorContributorMeta extends ContributorContributorMeta {
  @override
  final String? modifiedBy;
  @override
  final DateTime? modifiedAt;

  factory _$ContributorContributorMeta(
          [void Function(ContributorContributorMetaBuilder)? updates]) =>
      (new ContributorContributorMetaBuilder()..update(updates))._build();

  _$ContributorContributorMeta._({this.modifiedBy, this.modifiedAt})
      : super._();

  @override
  ContributorContributorMeta rebuild(
          void Function(ContributorContributorMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContributorContributorMetaBuilder toBuilder() =>
      new ContributorContributorMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContributorContributorMeta &&
        modifiedBy == other.modifiedBy &&
        modifiedAt == other.modifiedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, modifiedBy.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContributorContributorMeta')
          ..add('modifiedBy', modifiedBy)
          ..add('modifiedAt', modifiedAt))
        .toString();
  }
}

class ContributorContributorMetaBuilder
    implements
        Builder<ContributorContributorMeta, ContributorContributorMetaBuilder> {
  _$ContributorContributorMeta? _$v;

  String? _modifiedBy;
  String? get modifiedBy => _$this._modifiedBy;
  set modifiedBy(String? modifiedBy) => _$this._modifiedBy = modifiedBy;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  ContributorContributorMetaBuilder() {
    ContributorContributorMeta._defaults(this);
  }

  ContributorContributorMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _modifiedBy = $v.modifiedBy;
      _modifiedAt = $v.modifiedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContributorContributorMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContributorContributorMeta;
  }

  @override
  void update(void Function(ContributorContributorMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContributorContributorMeta build() => _build();

  _$ContributorContributorMeta _build() {
    final _$result = _$v ??
        new _$ContributorContributorMeta._(
          modifiedBy: modifiedBy,
          modifiedAt: modifiedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
