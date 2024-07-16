import 'package:bccm_core/platform.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:webview_flutter/webview_flutter.dart';

WebViewManager? useWebViewManager(Uri? uri, {void Function(WebViewManager)? setup, bool Function(Uri)? strictUriCheck}) {
  final manager = useState<WebViewManager?>(null);
  useEffect(() {
    if (uri == null) {
      return null;
    }
    final (controller, _, _) = createStandardWebViewController();
    final m = manager.value = WebViewManager.setup(controller, initialUri: uri);
    int retries = 0;
    m.navigation.addDelegate(
      NavigationDelegate(
          onNavigationRequest: strictNavigationCallback(uri, strictUriCheck: strictUriCheck),
          onWebResourceError: (error) {
            if (error.isForMainFrame == true && retries == 0) {
              m.load();
              retries++;
            }
          }),
    );
    setup?.call(m);
    m.load();
    return m.dispose;
  }, [uri]);
  return manager.value;
}
