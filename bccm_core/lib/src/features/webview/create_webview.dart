import 'dart:ui';

import 'package:bccm_core/bccm_core.dart';
import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

(WebViewController controller, AndroidWebViewController? android, WebKitWebViewController? ios) createStandardWebViewController() {
  final PlatformWebViewControllerCreationParams params;
  if (WebViewPlatform.instance is WebKitWebViewPlatform) {
    params = WebKitWebViewControllerCreationParams(
      allowsInlineMediaPlayback: true,
      mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
    );
  } else {
    params = const PlatformWebViewControllerCreationParams();
  }
  final controller = WebViewController.fromPlatformCreationParams(params)
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000));

  final android = controller.platform.asOrNull<AndroidWebViewController>();
  if (android != null) {
    if (kDebugMode) AndroidWebViewController.enableDebugging(true);
    android.setMediaPlaybackRequiresUserGesture(false);
  }
  final ios = controller.platform.asOrNull<WebKitWebViewController>();
  if (ios != null) {
    if (kDebugMode && !Platform.operatingSystemVersion.contains('Version 16')) ios.setInspectable(true);
  }
  return (controller, android, ios);
}
