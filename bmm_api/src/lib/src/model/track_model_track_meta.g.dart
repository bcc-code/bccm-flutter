// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model_track_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackModelTrackMeta extends TrackModelTrackMeta {
  @override
  final TrackModelParent? parent;
  @override
  final TrackModelParent? rootParent;
  @override
  final int? rootParentId;
  @override
  final DateTime? modifiedAt;
  @override
  final String? modifiedBy;
  @override
  final bool? isVisible;
  @override
  final String? title;
  @override
  final String? language;
  @override
  final String? album;
  @override
  final int? tracknumber;
  @override
  final String? artist;
  @override
  final String? lyricist;
  @override
  final String? composer;
  @override
  final String? publisher;
  @override
  final int? itunescompilation;
  @override
  final String? attachedPicture;
  @override
  final String? time;
  @override
  final String? date;
  @override
  final String? year;
  @override
  final String? copyright;

  factory _$TrackModelTrackMeta(
          [void Function(TrackModelTrackMetaBuilder)? updates]) =>
      (new TrackModelTrackMetaBuilder()..update(updates))._build();

  _$TrackModelTrackMeta._(
      {this.parent,
      this.rootParent,
      this.rootParentId,
      this.modifiedAt,
      this.modifiedBy,
      this.isVisible,
      this.title,
      this.language,
      this.album,
      this.tracknumber,
      this.artist,
      this.lyricist,
      this.composer,
      this.publisher,
      this.itunescompilation,
      this.attachedPicture,
      this.time,
      this.date,
      this.year,
      this.copyright})
      : super._();

  @override
  TrackModelTrackMeta rebuild(
          void Function(TrackModelTrackMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackModelTrackMetaBuilder toBuilder() =>
      new TrackModelTrackMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackModelTrackMeta &&
        parent == other.parent &&
        rootParent == other.rootParent &&
        rootParentId == other.rootParentId &&
        modifiedAt == other.modifiedAt &&
        modifiedBy == other.modifiedBy &&
        isVisible == other.isVisible &&
        title == other.title &&
        language == other.language &&
        album == other.album &&
        tracknumber == other.tracknumber &&
        artist == other.artist &&
        lyricist == other.lyricist &&
        composer == other.composer &&
        publisher == other.publisher &&
        itunescompilation == other.itunescompilation &&
        attachedPicture == other.attachedPicture &&
        time == other.time &&
        date == other.date &&
        year == other.year &&
        copyright == other.copyright;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parent.hashCode);
    _$hash = $jc(_$hash, rootParent.hashCode);
    _$hash = $jc(_$hash, rootParentId.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, modifiedBy.hashCode);
    _$hash = $jc(_$hash, isVisible.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, album.hashCode);
    _$hash = $jc(_$hash, tracknumber.hashCode);
    _$hash = $jc(_$hash, artist.hashCode);
    _$hash = $jc(_$hash, lyricist.hashCode);
    _$hash = $jc(_$hash, composer.hashCode);
    _$hash = $jc(_$hash, publisher.hashCode);
    _$hash = $jc(_$hash, itunescompilation.hashCode);
    _$hash = $jc(_$hash, attachedPicture.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, copyright.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackModelTrackMeta')
          ..add('parent', parent)
          ..add('rootParent', rootParent)
          ..add('rootParentId', rootParentId)
          ..add('modifiedAt', modifiedAt)
          ..add('modifiedBy', modifiedBy)
          ..add('isVisible', isVisible)
          ..add('title', title)
          ..add('language', language)
          ..add('album', album)
          ..add('tracknumber', tracknumber)
          ..add('artist', artist)
          ..add('lyricist', lyricist)
          ..add('composer', composer)
          ..add('publisher', publisher)
          ..add('itunescompilation', itunescompilation)
          ..add('attachedPicture', attachedPicture)
          ..add('time', time)
          ..add('date', date)
          ..add('year', year)
          ..add('copyright', copyright))
        .toString();
  }
}

class TrackModelTrackMetaBuilder
    implements Builder<TrackModelTrackMeta, TrackModelTrackMetaBuilder> {
  _$TrackModelTrackMeta? _$v;

  TrackModelParentBuilder? _parent;
  TrackModelParentBuilder get parent =>
      _$this._parent ??= new TrackModelParentBuilder();
  set parent(TrackModelParentBuilder? parent) => _$this._parent = parent;

  TrackModelParentBuilder? _rootParent;
  TrackModelParentBuilder get rootParent =>
      _$this._rootParent ??= new TrackModelParentBuilder();
  set rootParent(TrackModelParentBuilder? rootParent) =>
      _$this._rootParent = rootParent;

  int? _rootParentId;
  int? get rootParentId => _$this._rootParentId;
  set rootParentId(int? rootParentId) => _$this._rootParentId = rootParentId;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  String? _modifiedBy;
  String? get modifiedBy => _$this._modifiedBy;
  set modifiedBy(String? modifiedBy) => _$this._modifiedBy = modifiedBy;

  bool? _isVisible;
  bool? get isVisible => _$this._isVisible;
  set isVisible(bool? isVisible) => _$this._isVisible = isVisible;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _album;
  String? get album => _$this._album;
  set album(String? album) => _$this._album = album;

  int? _tracknumber;
  int? get tracknumber => _$this._tracknumber;
  set tracknumber(int? tracknumber) => _$this._tracknumber = tracknumber;

  String? _artist;
  String? get artist => _$this._artist;
  set artist(String? artist) => _$this._artist = artist;

  String? _lyricist;
  String? get lyricist => _$this._lyricist;
  set lyricist(String? lyricist) => _$this._lyricist = lyricist;

  String? _composer;
  String? get composer => _$this._composer;
  set composer(String? composer) => _$this._composer = composer;

  String? _publisher;
  String? get publisher => _$this._publisher;
  set publisher(String? publisher) => _$this._publisher = publisher;

  int? _itunescompilation;
  int? get itunescompilation => _$this._itunescompilation;
  set itunescompilation(int? itunescompilation) =>
      _$this._itunescompilation = itunescompilation;

  String? _attachedPicture;
  String? get attachedPicture => _$this._attachedPicture;
  set attachedPicture(String? attachedPicture) =>
      _$this._attachedPicture = attachedPicture;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _year;
  String? get year => _$this._year;
  set year(String? year) => _$this._year = year;

  String? _copyright;
  String? get copyright => _$this._copyright;
  set copyright(String? copyright) => _$this._copyright = copyright;

  TrackModelTrackMetaBuilder() {
    TrackModelTrackMeta._defaults(this);
  }

  TrackModelTrackMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parent = $v.parent?.toBuilder();
      _rootParent = $v.rootParent?.toBuilder();
      _rootParentId = $v.rootParentId;
      _modifiedAt = $v.modifiedAt;
      _modifiedBy = $v.modifiedBy;
      _isVisible = $v.isVisible;
      _title = $v.title;
      _language = $v.language;
      _album = $v.album;
      _tracknumber = $v.tracknumber;
      _artist = $v.artist;
      _lyricist = $v.lyricist;
      _composer = $v.composer;
      _publisher = $v.publisher;
      _itunescompilation = $v.itunescompilation;
      _attachedPicture = $v.attachedPicture;
      _time = $v.time;
      _date = $v.date;
      _year = $v.year;
      _copyright = $v.copyright;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackModelTrackMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackModelTrackMeta;
  }

  @override
  void update(void Function(TrackModelTrackMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackModelTrackMeta build() => _build();

  _$TrackModelTrackMeta _build() {
    _$TrackModelTrackMeta _$result;
    try {
      _$result = _$v ??
          new _$TrackModelTrackMeta._(
              parent: _parent?.build(),
              rootParent: _rootParent?.build(),
              rootParentId: rootParentId,
              modifiedAt: modifiedAt,
              modifiedBy: modifiedBy,
              isVisible: isVisible,
              title: title,
              language: language,
              album: album,
              tracknumber: tracknumber,
              artist: artist,
              lyricist: lyricist,
              composer: composer,
              publisher: publisher,
              itunescompilation: itunescompilation,
              attachedPicture: attachedPicture,
              time: time,
              date: date,
              year: year,
              copyright: copyright);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parent';
        _parent?.build();
        _$failedField = 'rootParent';
        _rootParent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TrackModelTrackMeta', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
