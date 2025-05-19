import 'package:device_info_plus/device_info_plus.dart';
import 'package:riverpod/riverpod.dart';

final deviceInfoProvider = StateProvider<BaseDeviceInfo>(
  (ref) => throw UnimplementedError('deviceInfoProvider should be overriden in main()'),
);
