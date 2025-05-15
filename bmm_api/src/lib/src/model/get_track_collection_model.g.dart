// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_track_collection_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTrackCollectionModel extends GetTrackCollectionModel {
  @override
  final String type;
  @override
  final int id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? followerCount;
  @override
  final String? shareLink;
  @override
  final String? authorName;
  @override
  final bool? canEdit;
  @override
  final BuiltList<TrackModel>? tracks;
  @override
  final bool? useLikeIcon;
  @override
  final int trackCount;
  @override
  final int totalSeconds;

  factory _$GetTrackCollectionModel(
          [void Function(GetTrackCollectionModelBuilder)? updates]) =>
      (new GetTrackCollectionModelBuilder()..update(updates))._build();

  _$GetTrackCollectionModel._(
      {required this.type,
      required this.id,
      this.name,
      this.description,
      this.followerCount,
      this.shareLink,
      this.authorName,
      this.canEdit,
      this.tracks,
      this.useLikeIcon,
      required this.trackCount,
      required this.totalSeconds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'GetTrackCollectionModel', 'type');
    BuiltValueNullFieldError.checkNotNull(id, r'GetTrackCollectionModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        trackCount, r'GetTrackCollectionModel', 'trackCount');
    BuiltValueNullFieldError.checkNotNull(
        totalSeconds, r'GetTrackCollectionModel', 'totalSeconds');
  }

  @override
  GetTrackCollectionModel rebuild(
          void Function(GetTrackCollectionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTrackCollectionModelBuilder toBuilder() =>
      new GetTrackCollectionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTrackCollectionModel &&
        type == other.type &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        followerCount == other.followerCount &&
        shareLink == other.shareLink &&
        authorName == other.authorName &&
        canEdit == other.canEdit &&
        tracks == other.tracks &&
        useLikeIcon == other.useLikeIcon &&
        trackCount == other.trackCount &&
        totalSeconds == other.totalSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, followerCount.hashCode);
    _$hash = $jc(_$hash, shareLink.hashCode);
    _$hash = $jc(_$hash, authorName.hashCode);
    _$hash = $jc(_$hash, canEdit.hashCode);
    _$hash = $jc(_$hash, tracks.hashCode);
    _$hash = $jc(_$hash, useLikeIcon.hashCode);
    _$hash = $jc(_$hash, trackCount.hashCode);
    _$hash = $jc(_$hash, totalSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetTrackCollectionModel')
          ..add('type', type)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('followerCount', followerCount)
          ..add('shareLink', shareLink)
          ..add('authorName', authorName)
          ..add('canEdit', canEdit)
          ..add('tracks', tracks)
          ..add('useLikeIcon', useLikeIcon)
          ..add('trackCount', trackCount)
          ..add('totalSeconds', totalSeconds))
        .toString();
  }
}

class GetTrackCollectionModelBuilder
    implements
        Builder<GetTrackCollectionModel, GetTrackCollectionModelBuilder> {
  _$GetTrackCollectionModel? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _followerCount;
  int? get followerCount => _$this._followerCount;
  set followerCount(int? followerCount) =>
      _$this._followerCount = followerCount;

  String? _shareLink;
  String? get shareLink => _$this._shareLink;
  set shareLink(String? shareLink) => _$this._shareLink = shareLink;

  String? _authorName;
  String? get authorName => _$this._authorName;
  set authorName(String? authorName) => _$this._authorName = authorName;

  bool? _canEdit;
  bool? get canEdit => _$this._canEdit;
  set canEdit(bool? canEdit) => _$this._canEdit = canEdit;

  ListBuilder<TrackModel>? _tracks;
  ListBuilder<TrackModel> get tracks =>
      _$this._tracks ??= new ListBuilder<TrackModel>();
  set tracks(ListBuilder<TrackModel>? tracks) => _$this._tracks = tracks;

  bool? _useLikeIcon;
  bool? get useLikeIcon => _$this._useLikeIcon;
  set useLikeIcon(bool? useLikeIcon) => _$this._useLikeIcon = useLikeIcon;

  int? _trackCount;
  int? get trackCount => _$this._trackCount;
  set trackCount(int? trackCount) => _$this._trackCount = trackCount;

  int? _totalSeconds;
  int? get totalSeconds => _$this._totalSeconds;
  set totalSeconds(int? totalSeconds) => _$this._totalSeconds = totalSeconds;

  GetTrackCollectionModelBuilder() {
    GetTrackCollectionModel._defaults(this);
  }

  GetTrackCollectionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _followerCount = $v.followerCount;
      _shareLink = $v.shareLink;
      _authorName = $v.authorName;
      _canEdit = $v.canEdit;
      _tracks = $v.tracks?.toBuilder();
      _useLikeIcon = $v.useLikeIcon;
      _trackCount = $v.trackCount;
      _totalSeconds = $v.totalSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTrackCollectionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTrackCollectionModel;
  }

  @override
  void update(void Function(GetTrackCollectionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTrackCollectionModel build() => _build();

  _$GetTrackCollectionModel _build() {
    _$GetTrackCollectionModel _$result;
    try {
      _$result = _$v ??
          new _$GetTrackCollectionModel._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GetTrackCollectionModel', 'type'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GetTrackCollectionModel', 'id'),
            name: name,
            description: description,
            followerCount: followerCount,
            shareLink: shareLink,
            authorName: authorName,
            canEdit: canEdit,
            tracks: _tracks?.build(),
            useLikeIcon: useLikeIcon,
            trackCount: BuiltValueNullFieldError.checkNotNull(
                trackCount, r'GetTrackCollectionModel', 'trackCount'),
            totalSeconds: BuiltValueNullFieldError.checkNotNull(
                totalSeconds, r'GetTrackCollectionModel', 'totalSeconds'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tracks';
        _tracks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTrackCollectionModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
