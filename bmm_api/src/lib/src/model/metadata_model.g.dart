// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetadataModel extends MetadataModel {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? coverUrl;

  factory _$MetadataModel([void Function(MetadataModelBuilder)? updates]) =>
      (new MetadataModelBuilder()..update(updates))._build();

  _$MetadataModel._({this.title, this.description, this.coverUrl}) : super._();

  @override
  MetadataModel rebuild(void Function(MetadataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetadataModelBuilder toBuilder() => new MetadataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetadataModel &&
        title == other.title &&
        description == other.description &&
        coverUrl == other.coverUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, coverUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MetadataModel')
          ..add('title', title)
          ..add('description', description)
          ..add('coverUrl', coverUrl))
        .toString();
  }
}

class MetadataModelBuilder
    implements Builder<MetadataModel, MetadataModelBuilder> {
  _$MetadataModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _coverUrl;
  String? get coverUrl => _$this._coverUrl;
  set coverUrl(String? coverUrl) => _$this._coverUrl = coverUrl;

  MetadataModelBuilder() {
    MetadataModel._defaults(this);
  }

  MetadataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _coverUrl = $v.coverUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetadataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MetadataModel;
  }

  @override
  void update(void Function(MetadataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetadataModel build() => _build();

  _$MetadataModel _build() {
    final _$result = _$v ??
        new _$MetadataModel._(
            title: title, description: description, coverUrl: coverUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
