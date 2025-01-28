// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TileModelTypeEnum _$tileModelTypeEnum_tile =
    const TileModelTypeEnum._('tile');

TileModelTypeEnum _$tileModelTypeEnumValueOf(String name) {
  switch (name) {
    case 'tile':
      return _$tileModelTypeEnum_tile;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TileModelTypeEnum> _$tileModelTypeEnumValues =
    new BuiltSet<TileModelTypeEnum>(const <TileModelTypeEnum>[
  _$tileModelTypeEnum_tile,
]);

Serializer<TileModelTypeEnum> _$tileModelTypeEnumSerializer =
    new _$TileModelTypeEnumSerializer();

class _$TileModelTypeEnumSerializer
    implements PrimitiveSerializer<TileModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'tile': 'Tile',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Tile': 'tile',
  };

  @override
  final Iterable<Type> types = const <Type>[TileModelTypeEnum];
  @override
  final String wireName = 'TileModelTypeEnum';

  @override
  Object serialize(Serializers serializers, TileModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TileModelTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TileModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TileModel extends TileModel {
  @override
  final int id;
  @override
  final TileModelTypeEnum type;
  @override
  final String? backgroundColor;
  @override
  final String? coverUrl;
  @override
  final String? title;
  @override
  final String? label;
  @override
  final DateTime? date;
  @override
  final String? subtitle;
  @override
  final int? percentage;
  @override
  final String? showAllLink;
  @override
  final int? shufflePodcastId;
  @override
  final int? lastPositionInMs;
  @override
  final TrackModel? track;

  factory _$TileModel([void Function(TileModelBuilder)? updates]) =>
      (new TileModelBuilder()..update(updates))._build();

  _$TileModel._(
      {required this.id,
      required this.type,
      this.backgroundColor,
      this.coverUrl,
      this.title,
      this.label,
      this.date,
      this.subtitle,
      this.percentage,
      this.showAllLink,
      this.shufflePodcastId,
      this.lastPositionInMs,
      this.track})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TileModel', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'TileModel', 'type');
  }

  @override
  TileModel rebuild(void Function(TileModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TileModelBuilder toBuilder() => new TileModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TileModel &&
        id == other.id &&
        type == other.type &&
        backgroundColor == other.backgroundColor &&
        coverUrl == other.coverUrl &&
        title == other.title &&
        label == other.label &&
        date == other.date &&
        subtitle == other.subtitle &&
        percentage == other.percentage &&
        showAllLink == other.showAllLink &&
        shufflePodcastId == other.shufflePodcastId &&
        lastPositionInMs == other.lastPositionInMs &&
        track == other.track;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, backgroundColor.hashCode);
    _$hash = $jc(_$hash, coverUrl.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, subtitle.hashCode);
    _$hash = $jc(_$hash, percentage.hashCode);
    _$hash = $jc(_$hash, showAllLink.hashCode);
    _$hash = $jc(_$hash, shufflePodcastId.hashCode);
    _$hash = $jc(_$hash, lastPositionInMs.hashCode);
    _$hash = $jc(_$hash, track.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TileModel')
          ..add('id', id)
          ..add('type', type)
          ..add('backgroundColor', backgroundColor)
          ..add('coverUrl', coverUrl)
          ..add('title', title)
          ..add('label', label)
          ..add('date', date)
          ..add('subtitle', subtitle)
          ..add('percentage', percentage)
          ..add('showAllLink', showAllLink)
          ..add('shufflePodcastId', shufflePodcastId)
          ..add('lastPositionInMs', lastPositionInMs)
          ..add('track', track))
        .toString();
  }
}

class TileModelBuilder implements Builder<TileModel, TileModelBuilder> {
  _$TileModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  TileModelTypeEnum? _type;
  TileModelTypeEnum? get type => _$this._type;
  set type(TileModelTypeEnum? type) => _$this._type = type;

  String? _backgroundColor;
  String? get backgroundColor => _$this._backgroundColor;
  set backgroundColor(String? backgroundColor) =>
      _$this._backgroundColor = backgroundColor;

  String? _coverUrl;
  String? get coverUrl => _$this._coverUrl;
  set coverUrl(String? coverUrl) => _$this._coverUrl = coverUrl;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(String? subtitle) => _$this._subtitle = subtitle;

  int? _percentage;
  int? get percentage => _$this._percentage;
  set percentage(int? percentage) => _$this._percentage = percentage;

  String? _showAllLink;
  String? get showAllLink => _$this._showAllLink;
  set showAllLink(String? showAllLink) => _$this._showAllLink = showAllLink;

  int? _shufflePodcastId;
  int? get shufflePodcastId => _$this._shufflePodcastId;
  set shufflePodcastId(int? shufflePodcastId) =>
      _$this._shufflePodcastId = shufflePodcastId;

  int? _lastPositionInMs;
  int? get lastPositionInMs => _$this._lastPositionInMs;
  set lastPositionInMs(int? lastPositionInMs) =>
      _$this._lastPositionInMs = lastPositionInMs;

  TrackModelBuilder? _track;
  TrackModelBuilder get track => _$this._track ??= new TrackModelBuilder();
  set track(TrackModelBuilder? track) => _$this._track = track;

  TileModelBuilder() {
    TileModel._defaults(this);
  }

  TileModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _backgroundColor = $v.backgroundColor;
      _coverUrl = $v.coverUrl;
      _title = $v.title;
      _label = $v.label;
      _date = $v.date;
      _subtitle = $v.subtitle;
      _percentage = $v.percentage;
      _showAllLink = $v.showAllLink;
      _shufflePodcastId = $v.shufflePodcastId;
      _lastPositionInMs = $v.lastPositionInMs;
      _track = $v.track?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TileModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TileModel;
  }

  @override
  void update(void Function(TileModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TileModel build() => _build();

  _$TileModel _build() {
    _$TileModel _$result;
    try {
      _$result = _$v ??
          new _$TileModel._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'TileModel', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'TileModel', 'type'),
            backgroundColor: backgroundColor,
            coverUrl: coverUrl,
            title: title,
            label: label,
            date: date,
            subtitle: subtitle,
            percentage: percentage,
            showAllLink: showAllLink,
            shufflePodcastId: shufflePodcastId,
            lastPositionInMs: lastPositionInMs,
            track: _track?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'track';
        _track?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TileModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
