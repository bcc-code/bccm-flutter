import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/widgets.dart';

// Gets a stream of all deeplinks, excluding the initial link.
final onDeepLinkProvider = StreamProvider<Uri>((ref) {
  final s = _getAppLinkStreamWithoutInitialLink();

  ref.onDispose(() {
    s.cancel();
  });

  return s.stream;
});

final deepLinkServiceProvider = Provider<DeepLinkService>((ref) {
  return DeepLinkService(ref: ref);
});

/// Service that listens to deep links and navigates to the correct screen
///
/// Note on android: Deep links will not work on debug builds, as the debug
/// signtature is not verified via https://app.bcc.media/.well-known/assetlinks.json.
class DeepLinkService {
  Ref ref;
  DeepLinkService({required this.ref}) {
    _init();
  }

  void _init() {
    ref.listen<AsyncValue<Uri>>(onDeepLinkProvider, (previous, next) async {
      final uri = next.valueOrNull;
      if (uri == null) return;
      debugPrint('Deep link received: $uri');
      final success = await ref.read(rootRouterProvider).navigateNamedFromRoot(uriStringWithoutHost(uri));
      if (success) {
        debugPrint('Deep link opened: $uri');
        ref.read(analyticsProvider).deepLinkOpened(
              DeepLinkOpenedEvent(
                url: uri.toString(),
                source: uri.queryParameters['cs'] ?? '',
                campaignId: uri.queryParameters['cid'] ?? '',
              ),
            );
      }
    });
  }
}

/// Gets a stream of deep links, excluding the initial link
({Stream<Uri> stream, void Function() cancel}) _getAppLinkStreamWithoutInitialLink() {
  final streamController = StreamController<Uri>.broadcast();
  StreamSubscription? listener;

  AppLinks().getInitialLink().then((initialLink) {
    var stream = AppLinks().uriLinkStream;
    if (initialLink != null) {
      stream = stream.skip(1);
    }
    listener = stream.listen((uri) {
      streamController.add(uri);
    });
  });

  return (
    stream: streamController.stream,
    cancel: () {
      listener?.cancel();
      streamController.close();
    }
  );
}
