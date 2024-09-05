// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_year_in_review_overview_slide.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetYearInReviewOverviewSlide extends GetYearInReviewOverviewSlide {
  @override
  final String? url;
  @override
  final String? subtitle;
  @override
  final String? description;
  @override
  final String? color;

  factory _$GetYearInReviewOverviewSlide(
          [void Function(GetYearInReviewOverviewSlideBuilder)? updates]) =>
      (new GetYearInReviewOverviewSlideBuilder()..update(updates))._build();

  _$GetYearInReviewOverviewSlide._(
      {this.url, this.subtitle, this.description, this.color})
      : super._();

  @override
  GetYearInReviewOverviewSlide rebuild(
          void Function(GetYearInReviewOverviewSlideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetYearInReviewOverviewSlideBuilder toBuilder() =>
      new GetYearInReviewOverviewSlideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetYearInReviewOverviewSlide &&
        url == other.url &&
        subtitle == other.subtitle &&
        description == other.description &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, subtitle.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetYearInReviewOverviewSlide')
          ..add('url', url)
          ..add('subtitle', subtitle)
          ..add('description', description)
          ..add('color', color))
        .toString();
  }
}

class GetYearInReviewOverviewSlideBuilder
    implements
        Builder<GetYearInReviewOverviewSlide,
            GetYearInReviewOverviewSlideBuilder> {
  _$GetYearInReviewOverviewSlide? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(String? subtitle) => _$this._subtitle = subtitle;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  GetYearInReviewOverviewSlideBuilder() {
    GetYearInReviewOverviewSlide._defaults(this);
  }

  GetYearInReviewOverviewSlideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _subtitle = $v.subtitle;
      _description = $v.description;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetYearInReviewOverviewSlide other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetYearInReviewOverviewSlide;
  }

  @override
  void update(void Function(GetYearInReviewOverviewSlideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetYearInReviewOverviewSlide build() => _build();

  _$GetYearInReviewOverviewSlide _build() {
    final _$result = _$v ??
        new _$GetYearInReviewOverviewSlide._(
            url: url,
            subtitle: subtitle,
            description: description,
            color: color);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
