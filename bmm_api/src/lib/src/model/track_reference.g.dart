// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_reference.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackReference extends TrackReference {
  @override
  final int? id;
  @override
  final LanguageEnum? language;

  factory _$TrackReference([void Function(TrackReferenceBuilder)? updates]) =>
      (new TrackReferenceBuilder()..update(updates))._build();

  _$TrackReference._({this.id, this.language}) : super._();

  @override
  TrackReference rebuild(void Function(TrackReferenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackReferenceBuilder toBuilder() =>
      new TrackReferenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackReference &&
        id == other.id &&
        language == other.language;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackReference')
          ..add('id', id)
          ..add('language', language))
        .toString();
  }
}

class TrackReferenceBuilder
    implements Builder<TrackReference, TrackReferenceBuilder> {
  _$TrackReference? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  LanguageEnum? _language;
  LanguageEnum? get language => _$this._language;
  set language(LanguageEnum? language) => _$this._language = language;

  TrackReferenceBuilder() {
    TrackReference._defaults(this);
  }

  TrackReferenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _language = $v.language;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackReference other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackReference;
  }

  @override
  void update(void Function(TrackReferenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackReference build() => _build();

  _$TrackReference _build() {
    final _$result = _$v ?? new _$TrackReference._(id: id, language: language);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
