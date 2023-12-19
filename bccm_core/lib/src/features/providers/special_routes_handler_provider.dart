import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

final specialRoutesHandlerProvider = Provider<SpecialRoutesHandler>((ref) {
  throw UnimplementedError('specialRoutesHandlerProvider not implemented');
});

abstract class SpecialRoutesHandler {
  /// Handles special routes, e.g. /r/ redirects, legacy routes, etc.
  /// Returns true if the route was handled (and in that case the caller should prevent any default navigation if relevant)
  Future<bool> handle(BuildContext context, String path);
}
