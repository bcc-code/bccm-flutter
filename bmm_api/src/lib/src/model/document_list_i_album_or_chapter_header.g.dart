// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_list_i_album_or_chapter_header.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentListIAlbumOrChapterHeader
    extends DocumentListIAlbumOrChapterHeader {
  @override
  final String? title;
  @override
  final String? translationParent;
  @override
  final String? translationId;
  @override
  final bool? supportsPaging;
  @override
  final BuiltList<IAlbumOrChapterHeader>? items;
  @override
  final int? totalItems;

  factory _$DocumentListIAlbumOrChapterHeader(
          [void Function(DocumentListIAlbumOrChapterHeaderBuilder)? updates]) =>
      (new DocumentListIAlbumOrChapterHeaderBuilder()..update(updates))
          ._build();

  _$DocumentListIAlbumOrChapterHeader._(
      {this.title,
      this.translationParent,
      this.translationId,
      this.supportsPaging,
      this.items,
      this.totalItems})
      : super._();

  @override
  DocumentListIAlbumOrChapterHeader rebuild(
          void Function(DocumentListIAlbumOrChapterHeaderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentListIAlbumOrChapterHeaderBuilder toBuilder() =>
      new DocumentListIAlbumOrChapterHeaderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentListIAlbumOrChapterHeader &&
        title == other.title &&
        translationParent == other.translationParent &&
        translationId == other.translationId &&
        supportsPaging == other.supportsPaging &&
        items == other.items &&
        totalItems == other.totalItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, translationParent.hashCode);
    _$hash = $jc(_$hash, translationId.hashCode);
    _$hash = $jc(_$hash, supportsPaging.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, totalItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DocumentListIAlbumOrChapterHeader')
          ..add('title', title)
          ..add('translationParent', translationParent)
          ..add('translationId', translationId)
          ..add('supportsPaging', supportsPaging)
          ..add('items', items)
          ..add('totalItems', totalItems))
        .toString();
  }
}

class DocumentListIAlbumOrChapterHeaderBuilder
    implements
        Builder<DocumentListIAlbumOrChapterHeader,
            DocumentListIAlbumOrChapterHeaderBuilder> {
  _$DocumentListIAlbumOrChapterHeader? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _translationParent;
  String? get translationParent => _$this._translationParent;
  set translationParent(String? translationParent) =>
      _$this._translationParent = translationParent;

  String? _translationId;
  String? get translationId => _$this._translationId;
  set translationId(String? translationId) =>
      _$this._translationId = translationId;

  bool? _supportsPaging;
  bool? get supportsPaging => _$this._supportsPaging;
  set supportsPaging(bool? supportsPaging) =>
      _$this._supportsPaging = supportsPaging;

  ListBuilder<IAlbumOrChapterHeader>? _items;
  ListBuilder<IAlbumOrChapterHeader> get items =>
      _$this._items ??= new ListBuilder<IAlbumOrChapterHeader>();
  set items(ListBuilder<IAlbumOrChapterHeader>? items) => _$this._items = items;

  int? _totalItems;
  int? get totalItems => _$this._totalItems;
  set totalItems(int? totalItems) => _$this._totalItems = totalItems;

  DocumentListIAlbumOrChapterHeaderBuilder() {
    DocumentListIAlbumOrChapterHeader._defaults(this);
  }

  DocumentListIAlbumOrChapterHeaderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _translationParent = $v.translationParent;
      _translationId = $v.translationId;
      _supportsPaging = $v.supportsPaging;
      _items = $v.items?.toBuilder();
      _totalItems = $v.totalItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentListIAlbumOrChapterHeader other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentListIAlbumOrChapterHeader;
  }

  @override
  void update(
      void Function(DocumentListIAlbumOrChapterHeaderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentListIAlbumOrChapterHeader build() => _build();

  _$DocumentListIAlbumOrChapterHeader _build() {
    _$DocumentListIAlbumOrChapterHeader _$result;
    try {
      _$result = _$v ??
          new _$DocumentListIAlbumOrChapterHeader._(
            title: title,
            translationParent: translationParent,
            translationId: translationId,
            supportsPaging: supportsPaging,
            items: _items?.build(),
            totalItems: totalItems,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DocumentListIAlbumOrChapterHeader', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
