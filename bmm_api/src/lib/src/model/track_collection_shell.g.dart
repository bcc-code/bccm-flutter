// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_collection_shell.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackCollectionShell extends TrackCollectionShell {
  @override
  final int id;
  @override
  final String? name;
  @override
  final int trackCount;
  @override
  final int followerCount;
  @override
  final String? authorName;
  @override
  final bool canEdit;
  @override
  final bool? useLikeIcon;

  factory _$TrackCollectionShell(
          [void Function(TrackCollectionShellBuilder)? updates]) =>
      (new TrackCollectionShellBuilder()..update(updates))._build();

  _$TrackCollectionShell._(
      {required this.id,
      this.name,
      required this.trackCount,
      required this.followerCount,
      this.authorName,
      required this.canEdit,
      this.useLikeIcon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TrackCollectionShell', 'id');
    BuiltValueNullFieldError.checkNotNull(
        trackCount, r'TrackCollectionShell', 'trackCount');
    BuiltValueNullFieldError.checkNotNull(
        followerCount, r'TrackCollectionShell', 'followerCount');
    BuiltValueNullFieldError.checkNotNull(
        canEdit, r'TrackCollectionShell', 'canEdit');
  }

  @override
  TrackCollectionShell rebuild(
          void Function(TrackCollectionShellBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackCollectionShellBuilder toBuilder() =>
      new TrackCollectionShellBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackCollectionShell &&
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
    return (newBuiltValueToStringHelper(r'TrackCollectionShell')
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

class TrackCollectionShellBuilder
    implements Builder<TrackCollectionShell, TrackCollectionShellBuilder> {
  _$TrackCollectionShell? _$v;

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

  TrackCollectionShellBuilder() {
    TrackCollectionShell._defaults(this);
  }

  TrackCollectionShellBuilder get _$this {
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
  void replace(TrackCollectionShell other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackCollectionShell;
  }

  @override
  void update(void Function(TrackCollectionShellBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackCollectionShell build() => _build();

  _$TrackCollectionShell _build() {
    final _$result = _$v ??
        new _$TrackCollectionShell._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'TrackCollectionShell', 'id'),
          name: name,
          trackCount: BuiltValueNullFieldError.checkNotNull(
              trackCount, r'TrackCollectionShell', 'trackCount'),
          followerCount: BuiltValueNullFieldError.checkNotNull(
              followerCount, r'TrackCollectionShell', 'followerCount'),
          authorName: authorName,
          canEdit: BuiltValueNullFieldError.checkNotNull(
              canEdit, r'TrackCollectionShell', 'canEdit'),
          useLikeIcon: useLikeIcon,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
