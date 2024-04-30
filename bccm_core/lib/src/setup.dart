import 'package:bccm_core/src/features/globals/globals.dart';
import 'package:bccm_core/src/features/providers/package_info_provider.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_io/io.dart';

import 'features/providers/shared_preferences_provider.dart';

class BccmCore {
  BccmCore._internal();
  factory BccmCore() => _instance;
  static final BccmCore _instance = BccmCore._internal();

  /// Sets up core features and returns a list of overrides that should be passed to ProviderScope.
  /// This method should be called early in main(), after WidgetsFlutterBinding.ensureInitialized().
  ///
  /// Example:
  /// ```
  /// void main() async {
  ///   WidgetsFlutterBinding.ensureInitialized();
  ///   await BccmCore().setup();
  /// }
  /// ```

  Future<void> setup() async {
    if (Platform.isAndroid) {
      final androidDeviceInfo = await DeviceInfoPlugin().androidInfo;
      setIsAndroidTv(androidDeviceInfo.systemFeatures.contains('android.software.leanback'));
    }
  }

  /// This sets up some core features but is also a helper to provide the overrides needed.
  /// Otherwise we would have to manually remember to override each provider in main.dart.
  ///
  /// Example:
  /// ```
  /// void main() async {
  /// final coreOverrides = await BccmCore().setupRiverpod();
  /// runApp(ProviderScope(overrides: coreOverrides, child: MyApp()));
  /// }
  /// ```
  Future<List<Override>> setupCoreOverrides({
    required Override analyticsMetaEnricherProviderOverride,
    required Override? specialRoutesHandlerProviderOverride,
    required Override rootRouterProviderOverride,
    required Override? commonSettingsProviderOverride,
    required Override? bccmGraphQLProviderOverride,
    required Override? authStateProviderOverride,
    required Override? analyticsProviderOverride,
    required Override? featureFlagVariantListProviderOverride,
    required Override? rawUnleashProviderOverride,
    required Override? unleashContextProviderOverride,
    required Override? notificationServiceProviderOverride,
  }) async {
    return [
      ...await _setupCoreProviders(),
      analyticsMetaEnricherProviderOverride,
      specialRoutesHandlerProviderOverride,
      rootRouterProviderOverride,
      commonSettingsProviderOverride,
      bccmGraphQLProviderOverride,
      authStateProviderOverride,
      analyticsProviderOverride,
      rawUnleashProviderOverride,
      unleashContextProviderOverride,
      featureFlagVariantListProviderOverride,
      notificationServiceProviderOverride,
    ].where((element) => element != null).cast<Override>().toList();
  }

  Future<List<Override>> _setupCoreProviders() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final packageInfo = await PackageInfo.fromPlatform();
    return [
      sharedPreferencesProvider.overrideWith((ref) => sharedPrefs),
      packageInfoProvider.overrideWith((ref) => packageInfo),
    ];
  }
}
