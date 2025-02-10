// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_top_songs_collection_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTopSongsCollectionModel extends GetTopSongsCollectionModel {
  @override
  final String type;
  @override
  final int id;
  @override
  final String? pageTitle;
  @override
  final String? name;
  @override
  final BuiltList<GetTopSongsCollectionModelTrackAndCount>? tracks;

  factory _$GetTopSongsCollectionModel(
          [void Function(GetTopSongsCollectionModelBuilder)? updates]) =>
      (new GetTopSongsCollectionModelBuilder()..update(updates))._build();

  _$GetTopSongsCollectionModel._(
      {required this.type,
      required this.id,
      this.pageTitle,
      this.name,
      this.tracks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'GetTopSongsCollectionModel', 'type');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GetTopSongsCollectionModel', 'id');
  }

  @override
  GetTopSongsCollectionModel rebuild(
          void Function(GetTopSongsCollectionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTopSongsCollectionModelBuilder toBuilder() =>
      new GetTopSongsCollectionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTopSongsCollectionModel &&
        type == other.type &&
        id == other.id &&
        pageTitle == other.pageTitle &&
        name == other.name &&
        tracks == other.tracks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, pageTitle.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, tracks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetTopSongsCollectionModel')
          ..add('type', type)
          ..add('id', id)
          ..add('pageTitle', pageTitle)
          ..add('name', name)
          ..add('tracks', tracks))
        .toString();
  }
}

class GetTopSongsCollectionModelBuilder
    implements
        Builder<GetTopSongsCollectionModel, GetTopSongsCollectionModelBuilder> {
  _$GetTopSongsCollectionModel? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _pageTitle;
  String? get pageTitle => _$this._pageTitle;
  set pageTitle(String? pageTitle) => _$this._pageTitle = pageTitle;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<GetTopSongsCollectionModelTrackAndCount>? _tracks;
  ListBuilder<GetTopSongsCollectionModelTrackAndCount> get tracks =>
      _$this._tracks ??=
          new ListBuilder<GetTopSongsCollectionModelTrackAndCount>();
  set tracks(ListBuilder<GetTopSongsCollectionModelTrackAndCount>? tracks) =>
      _$this._tracks = tracks;

  GetTopSongsCollectionModelBuilder() {
    GetTopSongsCollectionModel._defaults(this);
  }

  GetTopSongsCollectionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _pageTitle = $v.pageTitle;
      _name = $v.name;
      _tracks = $v.tracks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTopSongsCollectionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTopSongsCollectionModel;
  }

  @override
  void update(void Function(GetTopSongsCollectionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTopSongsCollectionModel build() => _build();

  _$GetTopSongsCollectionModel _build() {
    _$GetTopSongsCollectionModel _$result;
    try {
      _$result = _$v ??
          new _$GetTopSongsCollectionModel._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GetTopSongsCollectionModel', 'type'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GetTopSongsCollectionModel', 'id'),
            pageTitle: pageTitle,
            name: name,
            tracks: _tracks?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tracks';
        _tracks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTopSongsCollectionModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
