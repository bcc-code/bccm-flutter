import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// A callback that decides whether to navigate to a new page or not.
///
/// Restricts opening URLs with a different host than the original.
/// - If the URL has a query parameter `load_in_app` set to `true`, it should open in the app.
/// - If the URL has a query parameter `launch_url` set to `true`, it should open in an external application.
NavigationRequestCallback strictNavigationCallback(Uri originalUri) => (request) async {
      var navigationUri = Uri.tryParse(request.url);
      if (navigationUri?.queryParameters['load_in_app']?.toLowerCase() == 'true' ||
          navigationUri?.host == originalUri.host && navigationUri?.queryParameters['launch_url'] != 'true') {
        return NavigationDecision.navigate;
      }

      if (navigationUri != null && navigationUri.queryParameters['launch_url'] == 'true' && await canLaunchUrl(navigationUri)) {
        await launchUrl(navigationUri, mode: LaunchMode.externalApplication);
        return NavigationDecision.prevent;
      }
      debugPrint("Error: Couldn't open URL as it didnt pass the security check (shouldOverrideUrlLoading): ${navigationUri?.toString()}");
      return NavigationDecision.prevent;
    };
