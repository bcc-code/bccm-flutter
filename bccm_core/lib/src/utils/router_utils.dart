import 'package:auto_route/auto_route.dart';
import 'package:bccm_core/src/features/providers/special_routes_handler_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UnknownNavigationFailure implements NavigationFailure {
  UnknownNavigationFailure();
}

extension StackRouterCustomNavigation on StackRouter {
  Future<bool> navigateNamedFromRoot(String path, {OnNavigationFailure? onFailure}) async {
    final context = navigatorKey.currentState?.context;
    if (context != null) {
      final ref = ProviderScope.containerOf(context, listen: false);
      if (await ref.read(specialRoutesHandlerProvider).handle(context, path)) {
        debugPrint('Route handled by SpecialRoutesHandler');
        return true;
      }
    }
    var result = root.matcher.match(path, includePrefixMatches: true);
    if (result != null) {
      var success = true;
      try {
        await navigateAll(result, onFailure: (f) {
          success = false;
          onFailure?.call(f);
        });
      } catch (e) {
        success = false;
        onFailure?.call(UnknownNavigationFailure());
      }
      return success;
    }
    return false;
  }
}

extension ToQueryString on Parameters {
  String toQueryString() {
    return mapToQueryString(rawMap);
  }
}

String mapToQueryString(Map<String, dynamic> rawMap) {
  if (rawMap.isEmpty) {
    return '';
  }
  var queryString = '?';
  queryString += rawMap.entries.map((kv) => '${kv.key}=${kv.value}').join('&');
  return queryString;
}

String uriStringWithoutHost(Uri uri) {
  var result = uri.path;
  if (uri.query.isNotEmpty) {
    result += '?${uri.query}';
  }
  if (uri.fragment.isNotEmpty) {
    result += '#${uri.fragment}';
  }
  return result;
}
