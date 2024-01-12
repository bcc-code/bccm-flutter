import 'package:app_links/app_links.dart';
import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onDeepLinkProvider = StreamProvider<Uri>((ref) {
  return AppLinks().uriLinkStream;
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
    ref.listen<AsyncValue<Uri>>(onDeepLinkProvider, (previous, next) {
      final uri = next.valueOrNull;
      if (uri == null) return;
      ref.read(rootRouterProvider).navigateNamedFromRoot(uriStringWithoutHost(uri));
      ref.read(analyticsProvider).deepLinkOpened(
            DeepLinkOpenedEvent(
              url: uri.toString(),
              source: uri.queryParameters['cs'] ?? '',
              campaignId: uri.queryParameters['cid'] ?? '',
            ),
          );
    });
  }
}
