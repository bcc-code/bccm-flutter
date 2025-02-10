// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_list_i_achievement_collection_or_chapter_header.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentListIAchievementCollectionOrChapterHeader
    extends DocumentListIAchievementCollectionOrChapterHeader {
  @override
  final String? title;
  @override
  final String? translationParent;
  @override
  final String? translationId;
  @override
  final bool? supportsPaging;
  @override
  final BuiltList<IAchievementCollectionOrChapterHeader>? items;
  @override
  final int? totalItems;

  factory _$DocumentListIAchievementCollectionOrChapterHeader(
          [void Function(
                  DocumentListIAchievementCollectionOrChapterHeaderBuilder)?
              updates]) =>
      (new DocumentListIAchievementCollectionOrChapterHeaderBuilder()
            ..update(updates))
          ._build();

  _$DocumentListIAchievementCollectionOrChapterHeader._(
      {this.title,
      this.translationParent,
      this.translationId,
      this.supportsPaging,
      this.items,
      this.totalItems})
      : super._();

  @override
  DocumentListIAchievementCollectionOrChapterHeader rebuild(
          void Function(
                  DocumentListIAchievementCollectionOrChapterHeaderBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentListIAchievementCollectionOrChapterHeaderBuilder toBuilder() =>
      new DocumentListIAchievementCollectionOrChapterHeaderBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentListIAchievementCollectionOrChapterHeader &&
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
    return (newBuiltValueToStringHelper(
            r'DocumentListIAchievementCollectionOrChapterHeader')
          ..add('title', title)
          ..add('translationParent', translationParent)
          ..add('translationId', translationId)
          ..add('supportsPaging', supportsPaging)
          ..add('items', items)
          ..add('totalItems', totalItems))
        .toString();
  }
}

class DocumentListIAchievementCollectionOrChapterHeaderBuilder
    implements
        Builder<DocumentListIAchievementCollectionOrChapterHeader,
            DocumentListIAchievementCollectionOrChapterHeaderBuilder> {
  _$DocumentListIAchievementCollectionOrChapterHeader? _$v;

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

  ListBuilder<IAchievementCollectionOrChapterHeader>? _items;
  ListBuilder<IAchievementCollectionOrChapterHeader> get items =>
      _$this._items ??=
          new ListBuilder<IAchievementCollectionOrChapterHeader>();
  set items(ListBuilder<IAchievementCollectionOrChapterHeader>? items) =>
      _$this._items = items;

  int? _totalItems;
  int? get totalItems => _$this._totalItems;
  set totalItems(int? totalItems) => _$this._totalItems = totalItems;

  DocumentListIAchievementCollectionOrChapterHeaderBuilder() {
    DocumentListIAchievementCollectionOrChapterHeader._defaults(this);
  }

  DocumentListIAchievementCollectionOrChapterHeaderBuilder get _$this {
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
  void replace(DocumentListIAchievementCollectionOrChapterHeader other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentListIAchievementCollectionOrChapterHeader;
  }

  @override
  void update(
      void Function(DocumentListIAchievementCollectionOrChapterHeaderBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentListIAchievementCollectionOrChapterHeader build() => _build();

  _$DocumentListIAchievementCollectionOrChapterHeader _build() {
    _$DocumentListIAchievementCollectionOrChapterHeader _$result;
    try {
      _$result = _$v ??
          new _$DocumentListIAchievementCollectionOrChapterHeader._(
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
            r'DocumentListIAchievementCollectionOrChapterHeader',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
