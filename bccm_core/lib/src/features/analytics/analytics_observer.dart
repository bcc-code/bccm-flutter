import 'package:auto_route/auto_route.dart';
import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Enriches the analytics metadata with extra properties.
///
/// Different apps have different routers, so this needs to be
/// implemented per app. E.g. kids app has a different router than bccm app.
final analyticsMetaEnricherProvider = Provider<AnalyticsMetaEnricher>((ref) {
  throw UnimplementedError('analyticsMetaEnricherProvider was not overridden');
});

abstract class AnalyticsMetaEnricher {
  /// Used for the `screen` event, to override the screen name.
  /// If null is returned, we use a default value e.g. the route path.
  String? getScreenName(Route<dynamic> route);

  /// Use to add extra properties to the analytics event
  /// Stuff like: `extraProperties['meta']['episodeId'] = episodeRouteArgs.episodeId;`
  Map<String, dynamic>? getExtraPropertiesForRoute(Route<dynamic> route);
}

const String kRouteMetaIgnoreAnalytics = 'ignore_analytics';
const String kRouteMetaNavTab = 'nav_tab_route';
const String kRouteMetaAnalyticsName = 'analytics_name';
const String kRouteMetaSettingsName = 'settings_name';

class AnalyticsNavigatorObserver extends NavigatorObserver {
  bool _routeFilter(Route<dynamic> route) {
    final routeData = route.settings.asOrNull<AutoRoutePage>()?.routeData;
    if (routeData == null) return true;
    if (routeData.meta[kRouteMetaNavTab] != null && routeData.meta[kRouteMetaNavTab]) {
      return false;
    }
    if (routeData.meta[kRouteMetaIgnoreAnalytics] != null && routeData.meta[kRouteMetaIgnoreAnalytics]) {
      return false;
    }
    return true;
  }

  void _sendScreenView(Route<dynamic> route, {bool isPop = false}) {
    final context = navigator?.context;
    if (context == null) {
      return;
    }
    final ref = ProviderScope.containerOf(context, listen: false);

    Map<String, dynamic> extraProperties = {
      'pop': isPop,
      ...?ref.read(analyticsMetaEnricherProvider).getExtraPropertiesForRoute(route),
    };

    final screenName = ref.read(analyticsMetaEnricherProvider).getScreenName(route) ??
        route.data?.meta[kRouteMetaAnalyticsName] ??
        route.data?.path ??
        route.settings.name;

    if (screenName?.isNotEmpty == true) {
      SchedulerBinding.instance.scheduleFrameCallback((_) => ref.read(analyticsProvider).screen(screenName!, properties: extraProperties));
    }
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didPush ${route.settings.name}');
    super.didPush(route, previousRoute);
    if (_routeFilter(route)) {
      _sendScreenView(route);
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    debugPrint('didReplace ${newRoute?.settings.name}');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute != null && _routeFilter(newRoute)) {
      _sendScreenView(newRoute);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didPop ${route.settings.name}');
    super.didPop(route, previousRoute);
    if (previousRoute != null && _routeFilter(previousRoute) && _routeFilter(route)) {
      _sendScreenView(previousRoute, isPop: true);
    }
  }
}
