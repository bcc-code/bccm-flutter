// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AchievementModel extends AchievementModel {
  @override
  final String? id;
  @override
  final bool? hasAchieved;
  @override
  final bool? hasAcknowledged;
  @override
  final String? url;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? trackId;
  @override
  final String? reward;
  @override
  final String? actionUrl;
  @override
  final String? actionText;

  factory _$AchievementModel(
          [void Function(AchievementModelBuilder)? updates]) =>
      (new AchievementModelBuilder()..update(updates))._build();

  _$AchievementModel._(
      {this.id,
      this.hasAchieved,
      this.hasAcknowledged,
      this.url,
      this.title,
      this.description,
      this.trackId,
      this.reward,
      this.actionUrl,
      this.actionText})
      : super._();

  @override
  AchievementModel rebuild(void Function(AchievementModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AchievementModelBuilder toBuilder() =>
      new AchievementModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AchievementModel &&
        id == other.id &&
        hasAchieved == other.hasAchieved &&
        hasAcknowledged == other.hasAcknowledged &&
        url == other.url &&
        title == other.title &&
        description == other.description &&
        trackId == other.trackId &&
        reward == other.reward &&
        actionUrl == other.actionUrl &&
        actionText == other.actionText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, hasAchieved.hashCode);
    _$hash = $jc(_$hash, hasAcknowledged.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, trackId.hashCode);
    _$hash = $jc(_$hash, reward.hashCode);
    _$hash = $jc(_$hash, actionUrl.hashCode);
    _$hash = $jc(_$hash, actionText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AchievementModel')
          ..add('id', id)
          ..add('hasAchieved', hasAchieved)
          ..add('hasAcknowledged', hasAcknowledged)
          ..add('url', url)
          ..add('title', title)
          ..add('description', description)
          ..add('trackId', trackId)
          ..add('reward', reward)
          ..add('actionUrl', actionUrl)
          ..add('actionText', actionText))
        .toString();
  }
}

class AchievementModelBuilder
    implements Builder<AchievementModel, AchievementModelBuilder> {
  _$AchievementModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _hasAchieved;
  bool? get hasAchieved => _$this._hasAchieved;
  set hasAchieved(bool? hasAchieved) => _$this._hasAchieved = hasAchieved;

  bool? _hasAcknowledged;
  bool? get hasAcknowledged => _$this._hasAcknowledged;
  set hasAcknowledged(bool? hasAcknowledged) =>
      _$this._hasAcknowledged = hasAcknowledged;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _trackId;
  int? get trackId => _$this._trackId;
  set trackId(int? trackId) => _$this._trackId = trackId;

  String? _reward;
  String? get reward => _$this._reward;
  set reward(String? reward) => _$this._reward = reward;

  String? _actionUrl;
  String? get actionUrl => _$this._actionUrl;
  set actionUrl(String? actionUrl) => _$this._actionUrl = actionUrl;

  String? _actionText;
  String? get actionText => _$this._actionText;
  set actionText(String? actionText) => _$this._actionText = actionText;

  AchievementModelBuilder() {
    AchievementModel._defaults(this);
  }

  AchievementModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _hasAchieved = $v.hasAchieved;
      _hasAcknowledged = $v.hasAcknowledged;
      _url = $v.url;
      _title = $v.title;
      _description = $v.description;
      _trackId = $v.trackId;
      _reward = $v.reward;
      _actionUrl = $v.actionUrl;
      _actionText = $v.actionText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AchievementModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AchievementModel;
  }

  @override
  void update(void Function(AchievementModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AchievementModel build() => _build();

  _$AchievementModel _build() {
    final _$result = _$v ??
        new _$AchievementModel._(
          id: id,
          hasAchieved: hasAchieved,
          hasAcknowledged: hasAcknowledged,
          url: url,
          title: title,
          description: description,
          trackId: trackId,
          reward: reward,
          actionUrl: actionUrl,
          actionText: actionText,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
