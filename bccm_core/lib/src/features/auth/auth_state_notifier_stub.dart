import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_state.dart';

AuthStateNotifier getPlatformSpecificAuthStateNotifier(AuthConfig config, Ref ref) => throw UnsupportedError('Cannot create AuthStateNotifier');
