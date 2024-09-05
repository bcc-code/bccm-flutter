// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_list_podcast_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentListPodcastModel extends DocumentListPodcastModel {
  @override
  final String? title;
  @override
  final String? translationParent;
  @override
  final String? translationId;
  @override
  final bool? supportsPaging;
  @override
  final BuiltList<PodcastModel>? items;
  @override
  final int? totalItems;

  factory _$DocumentListPodcastModel(
          [void Function(DocumentListPodcastModelBuilder)? updates]) =>
      (new DocumentListPodcastModelBuilder()..update(updates))._build();

  _$DocumentListPodcastModel._(
      {this.title,
      this.translationParent,
      this.translationId,
      this.supportsPaging,
      this.items,
      this.totalItems})
      : super._();

  @override
  DocumentListPodcastModel rebuild(
          void Function(DocumentListPodcastModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentListPodcastModelBuilder toBuilder() =>
      new DocumentListPodcastModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentListPodcastModel &&
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
    return (newBuiltValueToStringHelper(r'DocumentListPodcastModel')
          ..add('title', title)
          ..add('translationParent', translationParent)
          ..add('translationId', translationId)
          ..add('supportsPaging', supportsPaging)
          ..add('items', items)
          ..add('totalItems', totalItems))
        .toString();
  }
}

class DocumentListPodcastModelBuilder
    implements
        Builder<DocumentListPodcastModel, DocumentListPodcastModelBuilder> {
  _$DocumentListPodcastModel? _$v;

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

  ListBuilder<PodcastModel>? _items;
  ListBuilder<PodcastModel> get items =>
      _$this._items ??= new ListBuilder<PodcastModel>();
  set items(ListBuilder<PodcastModel>? items) => _$this._items = items;

  int? _totalItems;
  int? get totalItems => _$this._totalItems;
  set totalItems(int? totalItems) => _$this._totalItems = totalItems;

  DocumentListPodcastModelBuilder() {
    DocumentListPodcastModel._defaults(this);
  }

  DocumentListPodcastModelBuilder get _$this {
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
  void replace(DocumentListPodcastModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentListPodcastModel;
  }

  @override
  void update(void Function(DocumentListPodcastModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentListPodcastModel build() => _build();

  _$DocumentListPodcastModel _build() {
    _$DocumentListPodcastModel _$result;
    try {
      _$result = _$v ??
          new _$DocumentListPodcastModel._(
              title: title,
              translationParent: translationParent,
              translationId: translationId,
              supportsPaging: supportsPaging,
              items: _items?.build(),
              totalItems: totalItems);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DocumentListPodcastModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
