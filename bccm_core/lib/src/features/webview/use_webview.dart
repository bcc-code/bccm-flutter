import 'package:bccm_core/platform.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:webview_flutter/webview_flutter.dart';

WebViewManager? useWebView(Uri? uri, {void Function(WebViewManager)? setup}) {
  final manager = useState<WebViewManager?>(null);
  useEffect(() {
    if (uri == null) {
      return null;
    }
    final (controller, _, _) = createStandardWebViewController();
    final m = manager.value = WebViewManager.setup(controller);
    m.navigation.addDelegate(NavigationDelegate(onNavigationRequest: strictNavigationCallback(uri)));
    setup?.call(m);
    controller.loadRequest(uri);
    return m.dispose;
  }, [uri]);
  return manager.value;
}
