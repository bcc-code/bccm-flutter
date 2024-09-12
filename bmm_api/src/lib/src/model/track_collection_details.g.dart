// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_collection_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackCollectionDetails extends TrackCollectionDetails {
  @override
  final int id;
  @override
  final String? name;
  @override
  final int? trackCount;
  @override
  final int followerCount;
  @override
  final String? authorName;
  @override
  final bool canEdit;
  @override
  final bool? useLikeIcon;

  factory _$TrackCollectionDetails(
          [void Function(TrackCollectionDetailsBuilder)? updates]) =>
      (new TrackCollectionDetailsBuilder()..update(updates))._build();

  _$TrackCollectionDetails._(
      {required this.id,
      this.name,
      this.trackCount,
      required this.followerCount,
      this.authorName,
      required this.canEdit,
      this.useLikeIcon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TrackCollectionDetails', 'id');
    BuiltValueNullFieldError.checkNotNull(
        followerCount, r'TrackCollectionDetails', 'followerCount');
    BuiltValueNullFieldError.checkNotNull(
        canEdit, r'TrackCollectionDetails', 'canEdit');
  }

  @override
  TrackCollectionDetails rebuild(
          void Function(TrackCollectionDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackCollectionDetailsBuilder toBuilder() =>
      new TrackCollectionDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackCollectionDetails &&
        id == other.id &&
        name == other.name &&
        trackCount == other.trackCount &&
        followerCount == other.followerCount &&
        authorName == other.authorName &&
        canEdit == other.canEdit &&
        useLikeIcon == other.useLikeIcon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, trackCount.hashCode);
    _$hash = $jc(_$hash, followerCount.hashCode);
    _$hash = $jc(_$hash, authorName.hashCode);
    _$hash = $jc(_$hash, canEdit.hashCode);
    _$hash = $jc(_$hash, useLikeIcon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackCollectionDetails')
          ..add('id', id)
          ..add('name', name)
          ..add('trackCount', trackCount)
          ..add('followerCount', followerCount)
          ..add('authorName', authorName)
          ..add('canEdit', canEdit)
          ..add('useLikeIcon', useLikeIcon))
        .toString();
  }
}

class TrackCollectionDetailsBuilder
    implements Builder<TrackCollectionDetails, TrackCollectionDetailsBuilder> {
  _$TrackCollectionDetails? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _trackCount;
  int? get trackCount => _$this._trackCount;
  set trackCount(int? trackCount) => _$this._trackCount = trackCount;

  int? _followerCount;
  int? get followerCount => _$this._followerCount;
  set followerCount(int? followerCount) =>
      _$this._followerCount = followerCount;

  String? _authorName;
  String? get authorName => _$this._authorName;
  set authorName(String? authorName) => _$this._authorName = authorName;

  bool? _canEdit;
  bool? get canEdit => _$this._canEdit;
  set canEdit(bool? canEdit) => _$this._canEdit = canEdit;

  bool? _useLikeIcon;
  bool? get useLikeIcon => _$this._useLikeIcon;
  set useLikeIcon(bool? useLikeIcon) => _$this._useLikeIcon = useLikeIcon;

  TrackCollectionDetailsBuilder() {
    TrackCollectionDetails._defaults(this);
  }

  TrackCollectionDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _trackCount = $v.trackCount;
      _followerCount = $v.followerCount;
      _authorName = $v.authorName;
      _canEdit = $v.canEdit;
      _useLikeIcon = $v.useLikeIcon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackCollectionDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackCollectionDetails;
  }

  @override
  void update(void Function(TrackCollectionDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackCollectionDetails build() => _build();

  _$TrackCollectionDetails _build() {
    final _$result = _$v ??
        new _$TrackCollectionDetails._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TrackCollectionDetails', 'id'),
            name: name,
            trackCount: trackCount,
            followerCount: BuiltValueNullFieldError.checkNotNull(
                followerCount, r'TrackCollectionDetails', 'followerCount'),
            authorName: authorName,
            canEdit: BuiltValueNullFieldError.checkNotNull(
                canEdit, r'TrackCollectionDetails', 'canEdit'),
            useLikeIcon: useLikeIcon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
