// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_track_collection_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTrackCollectionCommand extends UpdateTrackCollectionCommand {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final BuiltList<String>? access;
  @override
  final BuiltList<TrackReference>? trackReferences;

  factory _$UpdateTrackCollectionCommand(
          [void Function(UpdateTrackCollectionCommandBuilder)? updates]) =>
      (new UpdateTrackCollectionCommandBuilder()..update(updates))._build();

  _$UpdateTrackCollectionCommand._(
      {this.id, this.name, this.access, this.trackReferences})
      : super._();

  @override
  UpdateTrackCollectionCommand rebuild(
          void Function(UpdateTrackCollectionCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTrackCollectionCommandBuilder toBuilder() =>
      new UpdateTrackCollectionCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTrackCollectionCommand &&
        id == other.id &&
        name == other.name &&
        access == other.access &&
        trackReferences == other.trackReferences;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, trackReferences.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateTrackCollectionCommand')
          ..add('id', id)
          ..add('name', name)
          ..add('access', access)
          ..add('trackReferences', trackReferences))
        .toString();
  }
}

class UpdateTrackCollectionCommandBuilder
    implements
        Builder<UpdateTrackCollectionCommand,
            UpdateTrackCollectionCommandBuilder> {
  _$UpdateTrackCollectionCommand? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  UpdateTrackCollectionCommandBuilder() {
    UpdateTrackCollectionCommand._defaults(this);
  }

  UpdateTrackCollectionCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _access = $v.access?.toBuilder();
      _trackReferences = $v.trackReferences?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTrackCollectionCommand other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTrackCollectionCommand;
  }

  @override
  void update(void Function(UpdateTrackCollectionCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTrackCollectionCommand build() => _build();

  _$UpdateTrackCollectionCommand _build() {
    _$UpdateTrackCollectionCommand _$result;
    try {
      _$result = _$v ??
          new _$UpdateTrackCollectionCommand._(
              id: id,
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
            r'UpdateTrackCollectionCommand', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
