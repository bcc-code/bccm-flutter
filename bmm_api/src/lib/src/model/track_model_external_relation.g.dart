// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model_external_relation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackModelExternalRelation extends TrackModelExternalRelation {
  @override
  final String? url;
  @override
  final String? name;
  @override
  final bool? hasListened;

  factory _$TrackModelExternalRelation(
          [void Function(TrackModelExternalRelationBuilder)? updates]) =>
      (new TrackModelExternalRelationBuilder()..update(updates))._build();

  _$TrackModelExternalRelation._({this.url, this.name, this.hasListened})
      : super._();

  @override
  TrackModelExternalRelation rebuild(
          void Function(TrackModelExternalRelationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackModelExternalRelationBuilder toBuilder() =>
      new TrackModelExternalRelationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackModelExternalRelation &&
        url == other.url &&
        name == other.name &&
        hasListened == other.hasListened;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, hasListened.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackModelExternalRelation')
          ..add('url', url)
          ..add('name', name)
          ..add('hasListened', hasListened))
        .toString();
  }
}

class TrackModelExternalRelationBuilder
    implements
        Builder<TrackModelExternalRelation, TrackModelExternalRelationBuilder> {
  _$TrackModelExternalRelation? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _hasListened;
  bool? get hasListened => _$this._hasListened;
  set hasListened(bool? hasListened) => _$this._hasListened = hasListened;

  TrackModelExternalRelationBuilder() {
    TrackModelExternalRelation._defaults(this);
  }

  TrackModelExternalRelationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _name = $v.name;
      _hasListened = $v.hasListened;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackModelExternalRelation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackModelExternalRelation;
  }

  @override
  void update(void Function(TrackModelExternalRelationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackModelExternalRelation build() => _build();

  _$TrackModelExternalRelation _build() {
    final _$result = _$v ??
        new _$TrackModelExternalRelation._(
            url: url, name: name, hasListened: hasListened);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
