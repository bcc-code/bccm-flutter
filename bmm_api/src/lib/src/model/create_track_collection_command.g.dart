// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_track_collection_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTrackCollectionCommand extends CreateTrackCollectionCommand {
  @override
  final String? name;
  @override
  final BuiltList<String>? access;
  @override
  final BuiltList<TrackReference>? trackReferences;

  factory _$CreateTrackCollectionCommand(
          [void Function(CreateTrackCollectionCommandBuilder)? updates]) =>
      (new CreateTrackCollectionCommandBuilder()..update(updates))._build();

  _$CreateTrackCollectionCommand._(
      {this.name, this.access, this.trackReferences})
      : super._();

  @override
  CreateTrackCollectionCommand rebuild(
          void Function(CreateTrackCollectionCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTrackCollectionCommandBuilder toBuilder() =>
      new CreateTrackCollectionCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTrackCollectionCommand &&
        name == other.name &&
        access == other.access &&
        trackReferences == other.trackReferences;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, trackReferences.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTrackCollectionCommand')
          ..add('name', name)
          ..add('access', access)
          ..add('trackReferences', trackReferences))
        .toString();
  }
}

class CreateTrackCollectionCommandBuilder
    implements
        Builder<CreateTrackCollectionCommand,
            CreateTrackCollectionCommandBuilder> {
  _$CreateTrackCollectionCommand? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _access;
  ListBuilder<String> get access =>
      _$this._access ??= new ListBuilder<String>();
  set access(ListBuilder<String>? access) => _$this._access = access;

  ListBuilder<TrackReference>? _trackReferences;
  ListBuilder<TrackReference> get trackReferences =>
      _$this._trackReferences ??= new ListBuilder<TrackReference>();
  set trackReferences(ListBuilder<TrackReference>? trackReferences) =>
      _$this._trackReferences = trackReferences;

  CreateTrackCollectionCommandBuilder() {
    CreateTrackCollectionCommand._defaults(this);
  }

  CreateTrackCollectionCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _access = $v.access?.toBuilder();
      _trackReferences = $v.trackReferences?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTrackCollectionCommand other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTrackCollectionCommand;
  }

  @override
  void update(void Function(CreateTrackCollectionCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTrackCollectionCommand build() => _build();

  _$CreateTrackCollectionCommand _build() {
    _$CreateTrackCollectionCommand _$result;
    try {
      _$result = _$v ??
          new _$CreateTrackCollectionCommand._(
              name: name,
              access: _access?.build(),
              trackReferences: _trackReferences?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'access';
        _access?.build();
        _$failedField = 'trackReferences';
        _trackReferences?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTrackCollectionCommand', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
