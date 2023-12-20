import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:bccm_core/src/features/feature_flags/feature_flags.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rudder_sdk_flutter/RudderController.dart';
import 'package:rudder_sdk_flutter_platform_interface/platform.dart';

const kMinimumSessionTimeout = Duration(minutes: 30);

final analyticsProvider = Provider<Analytics>((ref) {
  debugPrint('WARNING: analyticsProvider not overriden. Disabling analytics.');
  return Analytics();
});

class Analytics {
  @mustBeOverridden
  void checkSession() {}
  @mustBeOverridden
  void heyJustHereToTellYouIBelieveTheSessionIsStillAlive() {}
  @mustBeOverridden
  void sectionItemClicked(
    BuildContext context, {
    SectionAnalytics? sectionAnalyticsOverride,
    SectionItemAnalytics? itemAnalyticsOverride,
  }) {}
  @mustBeOverridden
  void myListTabEntryClicked(BuildContext context) {}
  @mustBeOverridden
  void searchPerformed(SearchPerformedEvent event) {}
  @mustBeOverridden
  void searchResultClicked(
    BuildContext context, {
    SearchAnalytics? searchAnalyticsOverride,
    SearchItemAnalytics? itemAnalyticsOverride,
  }) {}
  @mustBeOverridden
  void deepLinkOpened(DeepLinkOpenedEvent event) {}
  @mustBeOverridden
  void languageChanged(LanguageChangedEvent event) {}
  @mustBeOverridden
  void contentShared(ContentSharedEvent event) {}
  @mustBeOverridden
  void achievementClicked(AchievementClickedEvent event) {}
  @mustBeOverridden
  void achievementShared(AchievementSharedEvent event) {}
  @mustBeOverridden
  void chapterClicked(ChapterClickedEvent event) {}
  @mustBeOverridden
  void identify(Auth0IdToken profile, String analyticsId) {}
  @mustBeOverridden
  void screen(String screenName, {Map<String, Object?>? properties}) {}
  @mustBeOverridden
  void audioOnlyClicked(AudioOnlyClickedEvent event) {}
  @mustBeOverridden
  void calendarDayClicked(CalendarDayClickedEvent event) {}
  @mustBeOverridden
  void gameClosed(GameClosedEvent event) {}
  @mustBeOverridden
  void videoDownloadStarted(VideoDownloadStartedEvent event) {}
  @mustBeOverridden
  void videoDownloadRemoved(VideoDownloadRemovedEvent event) {}
  @mustBeOverridden
  void videoDownloadPlayed(VideoDownloadPlayedEvent event) {}
  @mustBeOverridden
  void shortStarted(ShortStartedEvent event) {}
  @mustBeOverridden
  void shortStopped(ShortStoppedEvent event) {}
  @mustBeOverridden
  void interaction(InteractionEvent event) {}
  @mustBeOverridden
  void guideShown(GuideShownEvent event) {}
  @mustBeOverridden
  void reset() {}
}

class RudderAnalytics extends Analytics {
  PackageInfo? packageInfo;
  final Ref ref;
  DateTime _lastAlive = DateTime.now();
  void Function() onShouldRefreshSessionId;

  RudderAnalytics({
    required this.ref,
    required String rudderstackWriteKey,
    required this.onShouldRefreshSessionId,
    bool? strictAnonymousAnalytics,
  }) {
    final RudderController controller = RudderController.instance;
    RudderLogger.init(RudderLogger.VERBOSE);
    RudderConfigBuilder builder = RudderConfigBuilder();
    builder.withDataPlaneUrl('https://rs.bcc.media/');
    builder.withMobileConfig(MobileConfig(
      recordScreenViews: false,
      collectDeviceId: strictAnonymousAnalytics != true,
    ));
    controller.initialize(rudderstackWriteKey, config: builder.build());
    PackageInfo.fromPlatform().then((value) => packageInfo = value);
  }

  @override
  void checkSession() {
    final now = DateTime.now();
    final shouldRefreshSession = now.difference(_lastAlive) > kMinimumSessionTimeout;

    if (shouldRefreshSession) {
      print('Analytics: Session dead, refreshing sessionId. Now: ${now.toIso8601String()}, lastAlive: ${_lastAlive.toIso8601String()}.');
      onShouldRefreshSessionId();
    }
    _lastAlive = now;
    debugPrint('checkSession _lastAlive: $_lastAlive');
  }

  @override
  void heyJustHereToTellYouIBelieveTheSessionIsStillAlive() {
    _lastAlive = DateTime.now();
  }

  RudderProperty getCommonData() {
    checkSession();
    final settings = ref.read(commonSettingsProvider);
    final androidTv = ref.read(isAndroidTvProvider);
    var commonData = RudderProperty.fromMap({
      'channel': androidTv ? 'androidtv' : 'mobile',
      'appLanguage': settings.appLanguage.languageCode,
      'releaseVersion': packageInfo == null ? null : formatAppVersion(packageInfo!),
      'sessionId': settings.sessionId,
      'featureFlags': ref.read(featureFlagVariantListProvider).join(','),
    });

    return commonData;
  }

  @override
  void sectionItemClicked(
    BuildContext context, {
    SectionAnalytics? sectionAnalyticsOverride,
    SectionItemAnalytics? itemAnalyticsOverride,
  }) {
    var sectionAnalytics = sectionAnalyticsOverride ?? InheritedData.read<SectionAnalytics>(context);
    if (sectionAnalytics == null) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: Exception('Missing SectionAnalytics.'),
        stack: StackTrace.current,
        library: 'bccm_core',
        context: ErrorDescription('analytics'),
      ));
      return;
    }
    var sectionItemAnalytics = itemAnalyticsOverride ?? InheritedData.read<SectionItemAnalytics>(context);
    if (sectionItemAnalytics == null) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: Exception('Missing sectionItemAnalytics.'),
        stack: StackTrace.current,
        library: 'bccm_core',
        context: ErrorDescription('analytics'),
      ));
      return;
    }
    var event = SectionClickedEvent(
      sectionId: sectionAnalytics.id,
      sectionName: sectionAnalytics.name,
      sectionPosition: sectionAnalytics.position,
      sectionType: sectionAnalytics.type,
      pageCode: sectionAnalytics.pageCode,
      elementName: sectionItemAnalytics.name,
      elementPosition: sectionItemAnalytics.position,
      elementType: sectionItemAnalytics.type,
      elementId: sectionItemAnalytics.id,
    );
    RudderController.instance.track('section_clicked', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void myListTabEntryClicked(BuildContext context) {
    var sectionItemAnalytics = InheritedData.read<SectionItemAnalytics>(context);
    if (sectionItemAnalytics == null) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: Exception('Missing sectionItemAnalytics.'),
        stack: StackTrace.current,
        library: 'bccm_core',
        context: ErrorDescription('analytics'),
      ));
      return;
    }

    var event = SectionClickedEvent(
      sectionId: 'my-list',
      sectionName: 'My-List',
      sectionPosition: 0,
      sectionType: '',
      pageCode: 'my-list',
      elementName: sectionItemAnalytics.name,
      elementPosition: sectionItemAnalytics.position,
      elementType: sectionItemAnalytics.type,
      elementId: sectionItemAnalytics.id,
    );
    RudderController.instance.track('section_clicked', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void searchPerformed(SearchPerformedEvent event) {
    RudderController.instance.track('search_performed', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void searchResultClicked(
    BuildContext context, {
    SearchAnalytics? searchAnalyticsOverride,
    SearchItemAnalytics? itemAnalyticsOverride,
  }) {
    final searchAnalytics = searchAnalyticsOverride ?? InheritedData.read<SearchAnalytics>(context);
    if (searchAnalytics == null) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: Exception('Missing SearchAnalytics.'),
        stack: StackTrace.current,
        library: 'bccm_core',
        context: ErrorDescription('analytics'),
      ));
      return;
    }
    final searchItemAnalytics = itemAnalyticsOverride ?? InheritedData.read<SearchItemAnalytics>(context);
    if (searchItemAnalytics == null) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: Exception('Missing SearchItemAnalytics.'),
        stack: StackTrace.current,
        library: 'bccm_core',
        context: ErrorDescription('analytics'),
      ));
      return;
    }

    final event = SearchResultClickedEvent(
      searchText: searchAnalytics.searchText,
      elementPosition: searchItemAnalytics.position,
      elementType: searchItemAnalytics.type,
      elementId: searchItemAnalytics.id,
      group: searchItemAnalytics.group,
    );

    RudderController.instance.track('searchresult_clicked', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void deepLinkOpened(DeepLinkOpenedEvent event) {
    RudderController.instance.track('deep_link_opened', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void languageChanged(LanguageChangedEvent event) {
    RudderController.instance.track('language_changed', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void contentShared(ContentSharedEvent event) {
    RudderController.instance.track('content_shared', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void achievementClicked(AchievementClickedEvent event) {
    RudderController.instance.track('achievement_clicked', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void achievementShared(AchievementSharedEvent event) {
    RudderController.instance.track('achievement_shared', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void chapterClicked(ChapterClickedEvent event) {
    RudderController.instance.track('chapter_clicked', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void identify(Auth0IdToken profile, String analyticsId) {
    final traits = RudderTraits();

    final birthDateTime = profile.birthdate == null ? null : DateTime.tryParse(profile.birthdate!);
    if (birthDateTime != null) {
      final age = getAgeFromBirthDate(birthDateTime);
      traits.put('ageGroup', getAgeGroup(age).name);
    }
    traits.put('country', profile.countryIso2Code);
    traits.put('churchId', profile.churchId.toString());
    if (profile.gender != null) {
      traits.putGender(profile.gender!);
    }

    RudderController.instance.identify(analyticsId, traits: traits);
  }

  @override
  void screen(String screenName, {Map<String, Object?>? properties}) {
    RudderController.instance.screen(screenName, properties: getCommonData().putValue(map: properties));
  }

  @override
  void audioOnlyClicked(AudioOnlyClickedEvent event) {
    RudderController.instance.track('audioonly_clicked', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void calendarDayClicked(CalendarDayClickedEvent event) {
    RudderController.instance.track('calendarday_clicked', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void gameClosed(GameClosedEvent event) {
    RudderController.instance.track('game_closed', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void videoDownloadStarted(VideoDownloadStartedEvent event) {
    RudderController.instance.track('video_download_started', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void videoDownloadRemoved(VideoDownloadRemovedEvent event) {
    RudderController.instance.track('video_download_removed', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void videoDownloadPlayed(VideoDownloadPlayedEvent event) {
    RudderController.instance.track('video_download_played', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void shortStarted(ShortStartedEvent event) {
    RudderController.instance.track('short_started', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void shortStopped(ShortStoppedEvent event) {
    RudderController.instance.track('short_stopped', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void interaction(InteractionEvent event) {
    RudderController.instance.track('interaction', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void guideShown(GuideShownEvent event) {
    RudderController.instance.track('guide_shown', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void reset() {
    RudderController.instance.reset();
  }
}

int getAgeFromBirthDate(DateTime birthdate) {
  final ageDuration = DateTime.now().difference(birthdate);
  return (ageDuration.inDays / 365.25).floor();
}

({int start, String name}) getAgeGroup(int? age) {
  if (age == null) {
    return (start: 0, name: 'UNKNOWN');
  }
  if (age >= 65) {
    return (start: 65, name: '65+');
  } else if (age >= 51) {
    return (start: 51, name: '51 - 64');
  } else if (age >= 37) {
    return (start: 37, name: '37 - 50');
  } else if (age >= 26) {
    return (start: 26, name: '26 - 36');
  } else if (age >= 19) {
    return (start: 19, name: '19 - 25');
  } else if (age >= 13) {
    return (start: 13, name: '13 - 18');
  } else if (age >= 10) {
    return (start: 10, name: '10 - 12');
  } else {
    return (start: 0, name: '< 10');
  }
}
