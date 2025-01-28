// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topbar_search_query_topbar_search_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TopbarSearchQueryTopbarSearchResult
    extends TopbarSearchQueryTopbarSearchResult {
  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? image;
  @override
  final String? url;

  factory _$TopbarSearchQueryTopbarSearchResult(
          [void Function(TopbarSearchQueryTopbarSearchResultBuilder)?
              updates]) =>
      (new TopbarSearchQueryTopbarSearchResultBuilder()..update(updates))
          ._build();

  _$TopbarSearchQueryTopbarSearchResult._(
      {this.title, this.subtitle, this.image, this.url})
      : super._();

  @override
  TopbarSearchQueryTopbarSearchResult rebuild(
          void Function(TopbarSearchQueryTopbarSearchResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopbarSearchQueryTopbarSearchResultBuilder toBuilder() =>
      new TopbarSearchQueryTopbarSearchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopbarSearchQueryTopbarSearchResult &&
        title == other.title &&
        subtitle == other.subtitle &&
        image == other.image &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, subtitle.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TopbarSearchQueryTopbarSearchResult')
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('image', image)
          ..add('url', url))
        .toString();
  }
}

class TopbarSearchQueryTopbarSearchResultBuilder
    implements
        Builder<TopbarSearchQueryTopbarSearchResult,
            TopbarSearchQueryTopbarSearchResultBuilder> {
  _$TopbarSearchQueryTopbarSearchResult? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(String? subtitle) => _$this._subtitle = subtitle;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  TopbarSearchQueryTopbarSearchResultBuilder() {
    TopbarSearchQueryTopbarSearchResult._defaults(this);
  }

  TopbarSearchQueryTopbarSearchResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _subtitle = $v.subtitle;
      _image = $v.image;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopbarSearchQueryTopbarSearchResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TopbarSearchQueryTopbarSearchResult;
  }

  @override
  void update(
      void Function(TopbarSearchQueryTopbarSearchResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TopbarSearchQueryTopbarSearchResult build() => _build();

  _$TopbarSearchQueryTopbarSearchResult _build() {
    final _$result = _$v ??
        new _$TopbarSearchQueryTopbarSearchResult._(
          title: title,
          subtitle: subtitle,
          image: image,
          url: url,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
