import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

final featureFlagVariantListProvider = Provider<List<String>>((ref) {
  debugPrint('WARNING: featureFlagVariantListProvider was not overridden. Returning empty list.');
  return [];
});
