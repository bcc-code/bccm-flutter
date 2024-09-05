// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_results.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchResults extends SearchResults {
  @override
  final int? nextPageFromPosition;
  @override
  final BuiltList<IAlbumContributorPodcastPlaylistOrTrack>? items;
  @override
  final bool? isFullyLoaded;
  @override
  final BuiltList<Highlighting>? highlightings;
  @override
  final int? totalResults;

  factory _$SearchResults([void Function(SearchResultsBuilder)? updates]) =>
      (new SearchResultsBuilder()..update(updates))._build();

  _$SearchResults._(
      {this.nextPageFromPosition,
      this.items,
      this.isFullyLoaded,
      this.highlightings,
      this.totalResults})
      : super._();

  @override
  SearchResults rebuild(void Function(SearchResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchResultsBuilder toBuilder() => new SearchResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchResults &&
        nextPageFromPosition == other.nextPageFromPosition &&
        items == other.items &&
        isFullyLoaded == other.isFullyLoaded &&
        highlightings == other.highlightings &&
        totalResults == other.totalResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextPageFromPosition.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, isFullyLoaded.hashCode);
    _$hash = $jc(_$hash, highlightings.hashCode);
    _$hash = $jc(_$hash, totalResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchResults')
          ..add('nextPageFromPosition', nextPageFromPosition)
          ..add('items', items)
          ..add('isFullyLoaded', isFullyLoaded)
          ..add('highlightings', highlightings)
          ..add('totalResults', totalResults))
        .toString();
  }
}

class SearchResultsBuilder
    implements Builder<SearchResults, SearchResultsBuilder> {
  _$SearchResults? _$v;

  int? _nextPageFromPosition;
  int? get nextPageFromPosition => _$this._nextPageFromPosition;
  set nextPageFromPosition(int? nextPageFromPosition) =>
      _$this._nextPageFromPosition = nextPageFromPosition;

  ListBuilder<IAlbumContributorPodcastPlaylistOrTrack>? _items;
  ListBuilder<IAlbumContributorPodcastPlaylistOrTrack> get items =>
      _$this._items ??=
          new ListBuilder<IAlbumContributorPodcastPlaylistOrTrack>();
  set items(ListBuilder<IAlbumContributorPodcastPlaylistOrTrack>? items) =>
      _$this._items = items;

  bool? _isFullyLoaded;
  bool? get isFullyLoaded => _$this._isFullyLoaded;
  set isFullyLoaded(bool? isFullyLoaded) =>
      _$this._isFullyLoaded = isFullyLoaded;

  ListBuilder<Highlighting>? _highlightings;
  ListBuilder<Highlighting> get highlightings =>
      _$this._highlightings ??= new ListBuilder<Highlighting>();
  set highlightings(ListBuilder<Highlighting>? highlightings) =>
      _$this._highlightings = highlightings;

  int? _totalResults;
  int? get totalResults => _$this._totalResults;
  set totalResults(int? totalResults) => _$this._totalResults = totalResults;

  SearchResultsBuilder() {
    SearchResults._defaults(this);
  }

  SearchResultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextPageFromPosition = $v.nextPageFromPosition;
      _items = $v.items?.toBuilder();
      _isFullyLoaded = $v.isFullyLoaded;
      _highlightings = $v.highlightings?.toBuilder();
      _totalResults = $v.totalResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchResults other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchResults;
  }

  @override
  void update(void Function(SearchResultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchResults build() => _build();

  _$SearchResults _build() {
    _$SearchResults _$result;
    try {
      _$result = _$v ??
          new _$SearchResults._(
              nextPageFromPosition: nextPageFromPosition,
              items: _items?.build(),
              isFullyLoaded: isFullyLoaded,
              highlightings: _highlightings?.build(),
              totalResults: totalResults);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();

        _$failedField = 'highlightings';
        _highlightings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchResults', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
