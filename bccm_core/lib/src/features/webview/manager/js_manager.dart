import 'dart:convert';

import 'package:bccm_core/src/features/webview/manager/navigation_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:webview_flutter/webview_flutter.dart';

abstract class WebViewJsHandler {
  Object? handleMessage(List<dynamic> arguments);
}

class SimpleWebViewJsHandler implements WebViewJsHandler {
  SimpleWebViewJsHandler(this.handler);
  final Object? Function(List<dynamic> arguments) handler;

  @override
  Object? handleMessage(List<dynamic> arguments) {
    return handler(arguments);
  }
}

class WebViewJsManager {
  WebViewJsManager(this.controller, WebviewNavigationManager navigation) {
    navigation.addDelegate(
      NavigationDelegate(
        onPageFinished: (url) {
          _injectJs();
        },
      ),
    );
    controller.addJavaScriptChannel(
      'flutter_channel',
      onMessageReceived: handleMessage,
    );
  }

  final WebViewController controller;
  final Map<String, WebViewJsHandler> _handlers = {};
  void registerHandler(String name, WebViewJsHandler handler) {
    _handlers[name] = handler;
  }

  void registerSimpleHandler(String name, Object? Function(List<dynamic> arguments) handler) {
    _handlers[name] = SimpleWebViewJsHandler(handler);
  }

  void _injectJs() {
    controller.runJavaScript('''
console.log('Injecting JS');

window.flutterResponses = {};
window.flutter_webview_manager = {
  callHandler: async (name, ...arguments) => {
    const requestId = Math.random().toString(36).substring(7);
    window.flutter_channel.postMessage(JSON.stringify({
      requestId,
      name,
      arguments,
    }));
    
    while (!(requestId in window.flutterResponses)) {
      await new Promise(resolve => setTimeout(resolve, 100));
    }
    let data = window.flutterResponses[requestId];
    delete window.flutterResponses[requestId];
    if (data instanceof Error) {
      throw data;
    }
    return data;
  },
  respond: (id, result) => {
    window.flutterResponses[id] = result;
  },
  respondError: (id, error) => {
    window.flutterResponses[id] = new Error(error);
  }
};

''');
  }

  void _respond(String requestId, dynamic result) {
    controller.runJavaScript('window.flutter_webview_manager.respond("$requestId", ${jsonEncode(result)})');
  }

  void _respondError(String requestId, Object error) {
    controller.runJavaScript('window.flutter_webview_manager.respondError("$requestId", {error: "${error.toString()}"})');
  }

  void handleMessage(JavaScriptMessage message) {
    final msg = jsonDecode(message.message);
    final requestId = msg['requestId'];
    final handlerName = msg['name'];
    var arguments = msg['arguments'];

    if (requestId is! String) {
      throw Exception('Invalid requestId: $requestId');
    }
    if (handlerName is! String) {
      throw Exception('Invalid command: $handlerName');
    }
    arguments ??= [];
    if (arguments != null && arguments is! List<dynamic>) {
      throw Exception('Invalid type for "arguments": ${arguments.runtimeType} - $arguments');
    }

    final handler = _handlers[handlerName];
    if (handler == null) {
      debugPrint('No handler for command: $handlerName');
      _respondError(requestId, UnimplementedError());
      return;
    }
    try {
      final response = handler.handleMessage(arguments);
      _respond(requestId, response);
    } catch (e) {
      _respondError(requestId, e);
    }
  }
}
