import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class _RouteCallbacks implements AutoRouteAware {
  const _RouteCallbacks({
    this.handleDidPopNext,
    this.handleDidPush,
    this.handleDidPop,
    this.handleDidPushNext,
  });

  final VoidCallback? handleDidPopNext;
  final VoidCallback? handleDidPush;
  final VoidCallback? handleDidPop;
  final VoidCallback? handleDidPushNext;

  @override
  void didPopNext() {
    handleDidPopNext?.call();
  }

  @override
  void didPush() {
    handleDidPush?.call();
  }

  @override
  void didPop() {
    handleDidPop?.call();
  }

  @override
  void didPushNext() {
    handleDidPushNext?.call();
  }

  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {}

  @override
  void didInitTabRoute(TabPageRoute? previousRoute) {}
}

bool useIsRouteActive() {
  final context = useContext();
  final router = AutoRouter.of(context);
  final routeData = RouteDataScope.of(context).routeData;
  final isActive = useState(router.root.topMatch == routeData.route);

  useEffect(() {
    void listener() {
      if (!context.mounted) return;
      final routeData = RouteDataScope.of(context).routeData;
      final newIsActive = router.root.topMatch == routeData.route;
      if (newIsActive == isActive.value) return;
      isActive.value = newIsActive;
    }

    router.root.navigationHistory.addListener(listener);

    return () {
      router.root.navigationHistory.removeListener(listener);
    };
  }, [router.root, router.root.navigationHistory]);

  return isActive.value;
}

AutoRouteObserver? useAutoRouteObserver({
  VoidCallback? didPopNext,
  VoidCallback? didPush,
  VoidCallback? didPop,
  VoidCallback? didPushNext,
  List<Object?> keys = const [],
}) {
  final context = useContext();
  final route = context.routeData;
  final observer = RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();

  useEffect(() {
    if (observer == null) return () {};

    final callbacks = _RouteCallbacks(
      handleDidPop: didPop,
      handleDidPopNext: didPopNext,
      handleDidPush: didPush,
      handleDidPushNext: didPushNext,
    );
    debugPrint('SHRT: observer.subscribe');
    observer.subscribe(callbacks, route);
    return () => observer.unsubscribe(callbacks);
  }, [route, observer, ...keys]);

  return observer;
}
