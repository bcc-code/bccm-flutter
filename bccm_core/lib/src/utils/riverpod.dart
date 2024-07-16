import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

extension KeepAliveRef on WidgetRef {
  /// Make sure the provider is kept alive as long as the widget is mounted.
  ///
  /// Same as doing [watch] without using the return value. Use it to make your intentions more clear.
  void keepAlive(ProviderBase provider) {
    watch(provider);
  }
}

extension ScheduleProviderRefreshX on Ref {
  void scheduleRefresh(Duration duration) {
    final timer = Timer(duration, () {
      invalidateSelf();
    });
    onDispose(() {
      timer.cancel();
    });
  }
}

typedef RefReadFn = T Function<T>(ProviderListenable<T> provider);
