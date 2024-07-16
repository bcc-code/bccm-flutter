import 'package:bccm_core/src/features/webview/manager/js_manager.dart';
import 'package:bccm_core/src/features/webview/manager/navigation_manager.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewManager {
  WebViewManager._(this.controller, this.js, this.navigation);

  final WebViewController controller;
  final WebViewJsManager js;
  final WebviewNavigationManager navigation;

  void dispose() {
    navigation.dispose();
  }

  static WebViewManager setup(WebViewController controller) {
    final navigation = WebviewNavigationManager(controller);
    final js = WebViewJsManager(controller, navigation);
    final plugins = WebViewManager._(controller, js, navigation);
    return plugins;
  }
}
