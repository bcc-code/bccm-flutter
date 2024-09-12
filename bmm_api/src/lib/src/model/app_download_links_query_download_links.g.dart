// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_download_links_query_download_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppDownloadLinksQueryDownloadLinks
    extends AppDownloadLinksQueryDownloadLinks {
  @override
  final String? windows;
  @override
  final String? macIntel;
  @override
  final String? macArm;
  @override
  final String? ios;
  @override
  final String? android;

  factory _$AppDownloadLinksQueryDownloadLinks(
          [void Function(AppDownloadLinksQueryDownloadLinksBuilder)?
              updates]) =>
      (new AppDownloadLinksQueryDownloadLinksBuilder()..update(updates))
          ._build();

  _$AppDownloadLinksQueryDownloadLinks._(
      {this.windows, this.macIntel, this.macArm, this.ios, this.android})
      : super._();

  @override
  AppDownloadLinksQueryDownloadLinks rebuild(
          void Function(AppDownloadLinksQueryDownloadLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppDownloadLinksQueryDownloadLinksBuilder toBuilder() =>
      new AppDownloadLinksQueryDownloadLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppDownloadLinksQueryDownloadLinks &&
        windows == other.windows &&
        macIntel == other.macIntel &&
        macArm == other.macArm &&
        ios == other.ios &&
        android == other.android;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, windows.hashCode);
    _$hash = $jc(_$hash, macIntel.hashCode);
    _$hash = $jc(_$hash, macArm.hashCode);
    _$hash = $jc(_$hash, ios.hashCode);
    _$hash = $jc(_$hash, android.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppDownloadLinksQueryDownloadLinks')
          ..add('windows', windows)
          ..add('macIntel', macIntel)
          ..add('macArm', macArm)
          ..add('ios', ios)
          ..add('android', android))
        .toString();
  }
}

class AppDownloadLinksQueryDownloadLinksBuilder
    implements
        Builder<AppDownloadLinksQueryDownloadLinks,
            AppDownloadLinksQueryDownloadLinksBuilder> {
  _$AppDownloadLinksQueryDownloadLinks? _$v;

  String? _windows;
  String? get windows => _$this._windows;
  set windows(String? windows) => _$this._windows = windows;

  String? _macIntel;
  String? get macIntel => _$this._macIntel;
  set macIntel(String? macIntel) => _$this._macIntel = macIntel;

  String? _macArm;
  String? get macArm => _$this._macArm;
  set macArm(String? macArm) => _$this._macArm = macArm;

  String? _ios;
  String? get ios => _$this._ios;
  set ios(String? ios) => _$this._ios = ios;

  String? _android;
  String? get android => _$this._android;
  set android(String? android) => _$this._android = android;

  AppDownloadLinksQueryDownloadLinksBuilder() {
    AppDownloadLinksQueryDownloadLinks._defaults(this);
  }

  AppDownloadLinksQueryDownloadLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _windows = $v.windows;
      _macIntel = $v.macIntel;
      _macArm = $v.macArm;
      _ios = $v.ios;
      _android = $v.android;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppDownloadLinksQueryDownloadLinks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppDownloadLinksQueryDownloadLinks;
  }

  @override
  void update(
      void Function(AppDownloadLinksQueryDownloadLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppDownloadLinksQueryDownloadLinks build() => _build();

  _$AppDownloadLinksQueryDownloadLinks _build() {
    final _$result = _$v ??
        new _$AppDownloadLinksQueryDownloadLinks._(
            windows: windows,
            macIntel: macIntel,
            macArm: macArm,
            ios: ios,
            android: android);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
