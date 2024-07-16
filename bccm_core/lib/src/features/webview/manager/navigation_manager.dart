import 'package:flutter/foundation.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewNavigationManager extends NavigationDelegate {
  WebviewNavigationManager(WebViewController controller) {
    controller.setNavigationDelegate(this);
  }

  final List<NavigationDelegate> _delegates = [];
  void addDelegate(NavigationDelegate delegate) {
    _delegates.add(delegate);
  }

  ValueNotifier<bool> initialLoadDone = ValueNotifier(false);

  void dispose() {
    initialLoadDone.dispose();
  }

  @override
  NavigationRequestCallback? get onNavigationRequest {
    return (request) {
      for (final delegate in _delegates) {
        if (delegate.onNavigationRequest?.call(request) == NavigationDecision.prevent) {
          return NavigationDecision.prevent;
        }
      }
      return NavigationDecision.navigate;
    };
  }

  @override
  PageEventCallback? get onPageFinished {
    initialLoadDone.value = true;
    return (url) {
      for (final delegate in _delegates) {
        delegate.onPageFinished?.call(url);
      }
    };
  }

  @override
  PageEventCallback? get onPageStarted {
    return (url) {
      for (final delegate in _delegates) {
        delegate.onPageStarted?.call(url);
      }
    };
  }

  @override
  ProgressCallback? get onProgress {
    return (progress) {
      for (final delegate in _delegates) {
        delegate.onProgress?.call(progress);
      }
    };
  }

  @override
  WebResourceErrorCallback? get onWebResourceError {
    return (error) {
      for (final delegate in _delegates) {
        delegate.onWebResourceError?.call(error);
      }
    };
  }
}
