import 'package:bccm_core/src/features/webview/manager/js_manager.dart';
import 'package:bccm_core/src/features/webview/manager/navigation_manager.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewManager {
  WebViewManager._(this.controller, this.js, this.navigation, this.initialUri);

  final WebViewController controller;
  final WebViewJsManager js;
  final WebviewNavigationManager navigation;
  Uri initialUri;

  void dispose() {
    navigation.dispose();
  }

  Future<void> load() async {
    return await controller.loadRequest(initialUri);
  }

  static WebViewManager setup(WebViewController controller, {required Uri initialUri}) {
    final navigation = WebviewNavigationManager(controller);
    final js = WebViewJsManager(controller, navigation);
    final plugins = WebViewManager._(controller, js, navigation, initialUri);
    return plugins;
  }
}
