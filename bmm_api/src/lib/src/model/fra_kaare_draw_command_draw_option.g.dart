// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fra_kaare_draw_command_draw_option.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FraKaareDrawCommandDrawOption extends FraKaareDrawCommandDrawOption {
  @override
  final String? id;
  @override
  final String? description;
  @override
  final BuiltList<int>? trackIds;

  factory _$FraKaareDrawCommandDrawOption(
          [void Function(FraKaareDrawCommandDrawOptionBuilder)? updates]) =>
      (new FraKaareDrawCommandDrawOptionBuilder()..update(updates))._build();

  _$FraKaareDrawCommandDrawOption._({this.id, this.description, this.trackIds})
      : super._();

  @override
  FraKaareDrawCommandDrawOption rebuild(
          void Function(FraKaareDrawCommandDrawOptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FraKaareDrawCommandDrawOptionBuilder toBuilder() =>
      new FraKaareDrawCommandDrawOptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FraKaareDrawCommandDrawOption &&
        id == other.id &&
        description == other.description &&
        trackIds == other.trackIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, trackIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FraKaareDrawCommandDrawOption')
          ..add('id', id)
          ..add('description', description)
          ..add('trackIds', trackIds))
        .toString();
  }
}

class FraKaareDrawCommandDrawOptionBuilder
    implements
        Builder<FraKaareDrawCommandDrawOption,
            FraKaareDrawCommandDrawOptionBuilder> {
  _$FraKaareDrawCommandDrawOption? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<int>? _trackIds;
  ListBuilder<int> get trackIds => _$this._trackIds ??= new ListBuilder<int>();
  set trackIds(ListBuilder<int>? trackIds) => _$this._trackIds = trackIds;

  FraKaareDrawCommandDrawOptionBuilder() {
    FraKaareDrawCommandDrawOption._defaults(this);
  }

  FraKaareDrawCommandDrawOptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _description = $v.description;
      _trackIds = $v.trackIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FraKaareDrawCommandDrawOption other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FraKaareDrawCommandDrawOption;
  }

  @override
  void update(void Function(FraKaareDrawCommandDrawOptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FraKaareDrawCommandDrawOption build() => _build();

  _$FraKaareDrawCommandDrawOption _build() {
    _$FraKaareDrawCommandDrawOption _$result;
    try {
      _$result = _$v ??
          new _$FraKaareDrawCommandDrawOption._(
            id: id,
            description: description,
            trackIds: _trackIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trackIds';
        _trackIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FraKaareDrawCommandDrawOption', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
