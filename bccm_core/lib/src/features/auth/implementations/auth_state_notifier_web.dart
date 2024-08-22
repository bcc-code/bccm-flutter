import 'package:bccm_core/bccm_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Careful. This line is very important,
// but because it's conditionally imported (see auth_state_notifier_interface.dart)
// IDEs don't show any errors when you remove it..
AuthStateNotifier getPlatformSpecificAuthStateNotifier(AuthConfig config, Ref ref) => AuthStateNotifierDisabled();

// Removed because started to have package version issues, check this file @ commit 16d4100f975e33d334345d94aff1b7dd88a32150 too see how this was implemented.