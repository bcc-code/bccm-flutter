import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

abstract class CommonSettings {
  Locale get appLanguage;
  List<String> get audioLanguages;
  List<String> get subtitleLanguages;
  int? get sessionId;
}

final commonSettingsProvider = Provider<CommonSettings>((ref) {
  throw UnimplementedError('commonSettingsProvider was not overridden.');
});
