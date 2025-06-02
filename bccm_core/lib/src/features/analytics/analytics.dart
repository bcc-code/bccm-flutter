import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:bccm_core/src/models/user_profile.dart';
import 'package:bccm_core/src/utils/app_name.dart';
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
    SectionAnalyticsData? sectionAnalyticsOverride,
    SectionItemAnalyticsData? itemAnalyticsOverride,
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
  void identify(UserProfile profile, String analyticsId) {}
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
  void impression(ImpressionEvent event) {}
  @mustBeOverridden
  void guideShown(GuideShownEvent event) {}
  @mustBeOverridden
  void timeMeasurement(TimeMeasurementEvent event) {}
  @mustBeOverridden
  void notificationReceived(NotificationReceivedEvent event) {}
  @mustBeOverridden
  void notificationOpened(NotificationOpenedEvent event) {}
  @mustBeOverridden
  void notificationPromptDismissed(NotificationPromptDismissedEvent event) {}
  @mustBeOverridden
  void notificationPromptClicked(NotificationPromptClickedEvent event) {}
  @mustBeOverridden
  void notificationPromptAccepted(NotificationPromptAcceptedEvent event) {}
  @mustBeOverridden
  void notificationPromptDenied(NotificationPromptDeniedEvent event) {}
  @mustBeOverridden
  void notificationsSettingToggled(NotificationsSettingToggledEvent event) {}
  @mustBeOverridden
  void notificationsDeviceTokenUpdated(NotificationDeviceTokenUpdatedEvent event) {}
  @mustBeOverridden
  void notificationsStatus(NotificationsStatusEvent event) {}
  @mustBeOverridden
  void reset() {}
  @mustBeOverridden
  Future<String> getAnonymousId() => Future(() => "");
  @mustBeOverridden
  void log(LogEvent event) {}
  @mustBeOverridden
  void videoPlayed(VideoPlayedEvent event) {}
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
      'appName': packageInfo == null ? null : formatAppName(packageInfo!),
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
    SectionAnalyticsData? sectionAnalyticsOverride,
    SectionItemAnalyticsData? itemAnalyticsOverride,
  }) {
    var sectionAnalytics = sectionAnalyticsOverride ?? SectionAnalytics.read(context);
    if (sectionAnalytics == null) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: Exception('Missing SectionAnalytics.'),
        stack: StackTrace.current,
        library: 'bccm_core',
        context: ErrorDescription('analytics'),
      ));
      return;
    }
    var sectionItemAnalytics = itemAnalyticsOverride ?? SectionItemAnalytics.read(context);
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
      meta: sectionAnalytics.meta == null && sectionItemAnalytics.meta == null
          ? null
          : {
              ...sectionAnalytics.meta ?? {},
              ...sectionItemAnalytics.meta ?? {},
            },
    );
    RudderController.instance.track('section_clicked', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void myListTabEntryClicked(BuildContext context) {
    var sectionItemAnalytics = SectionItemAnalytics.read(context);
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
  void identify(UserProfile profile, String analyticsId) {
    final traits = RudderTraits();

    traits.put('ageGroup', getAgeGroupFromUser(profile).name);
    traits.put('country', profile.countryIso2Code);
    traits.put('churchId', profile.churchId.toString());

    if (profile.gender != null) {
      traits.putGender(profile.gender!);
    }
    traits.put('tv', ref.read(isAndroidTvProvider));

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
  void impression(ImpressionEvent event) {
    RudderController.instance.track('impression', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void guideShown(GuideShownEvent event) {
    RudderController.instance.track('guide_shown', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void notificationOpened(NotificationOpenedEvent event) {
    RudderController.instance.track('notification_opened', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void notificationReceived(NotificationReceivedEvent event) {
    RudderController.instance.track('notification_received', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void timeMeasurement(TimeMeasurementEvent event) {
    if (event.meta?.isEmpty == true) {
      event = event.copyWith(meta: null);
    }
    RudderController.instance.track('time_measurement', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void reset() {
    RudderController.instance.reset(clearAnonymousId: true);
  }

  @override
  Future<String> getAnonymousId() async {
    var anonymousId = '';
    final ctx = await RudderController.instance.getRudderContext();
    if (ctx != null && ctx['traits'] != null && ctx['traits']['anonymousId'] != null) {
      anonymousId = ctx['traits']['anonymousId'];
    }
    return anonymousId;
  }

  @override
  void log(event) {
    RudderController.instance.track('log', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void videoPlayed(VideoPlayedEvent event) {
    RudderController.instance.track('video_played', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void notificationPromptDismissed(NotificationPromptDismissedEvent event) {
    RudderController.instance.track('notification_prompt_dismissed', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void notificationPromptClicked(NotificationPromptClickedEvent event) {
    RudderController.instance.track('notification_prompt_clicked', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void notificationPromptAccepted(NotificationPromptAcceptedEvent event) {
    RudderController.instance.track('notification_prompt_accepted', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void notificationPromptDenied(NotificationPromptDeniedEvent event) {
    RudderController.instance.track('notification_prompt_denied', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void notificationsSettingToggled(NotificationsSettingToggledEvent event) {
    RudderController.instance.track('notifications_setting_toggled', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void notificationsDeviceTokenUpdated(NotificationDeviceTokenUpdatedEvent event) {
    RudderController.instance.track('notifications_device_token_updated', properties: getCommonData().putValue(map: event.toJson()));
  }

  @override
  void notificationsStatus(NotificationsStatusEvent event) {
    RudderController.instance.track('notifications_status', properties: getCommonData().putValue(map: event.toJson()));
  }
}

int getAgeFromBirthDate(DateTime birthdate) {
  final ageDuration = DateTime.now().difference(birthdate);
  return (ageDuration.inDays / 365.25).floor();
}

({int start, String name}) getAgeGroup(int? age) {
  if (age == null) {
    return (start: 999, name: 'UNKNOWN');
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

({int start, String name}) getAgeGroupFromUser(UserProfile user) {
  final birthDateTime = user.birthdate?.let((b) => DateTime.tryParse(b));
  if (birthDateTime != null) {
    final age = getAgeFromBirthDate(birthDateTime);
    return getAgeGroup(age);
  }
  return getAgeGroup(null);
}
