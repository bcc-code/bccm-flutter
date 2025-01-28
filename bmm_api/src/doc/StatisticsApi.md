# bmm_api.api.StatisticsApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**statisticsAchievementDelete**](StatisticsApi.md#statisticsachievementdelete) | **DELETE** /Statistics/achievement | 
[**statisticsAchievementIdGet**](StatisticsApi.md#statisticsachievementidget) | **GET** /Statistics/achievement/{id} | 
[**statisticsAchievementNameAcknowledgePut**](StatisticsApi.md#statisticsachievementnameacknowledgeput) | **PUT** /Statistics/achievement/{name}/acknowledge | 
[**statisticsAchievementsGet**](StatisticsApi.md#statisticsachievementsget) | **GET** /Statistics/achievements | 
[**statisticsAchievementsToAcknowledgeGet**](StatisticsApi.md#statisticsachievementstoacknowledgeget) | **GET** /Statistics/achievements/to/acknowledge | 
[**statisticsFraKaareGet**](StatisticsApi.md#statisticsfrakaareget) | **GET** /Statistics/fra-kaare | 
[**statisticsListeningPost**](StatisticsApi.md#statisticslisteningpost) | **POST** /Statistics/listening | 
[**statisticsProjectChurchChurchGet**](StatisticsApi.md#statisticsprojectchurchchurchget) | **GET** /Statistics/project/church/{church} | 
[**statisticsProjectChurchGet**](StatisticsApi.md#statisticsprojectchurchget) | **GET** /Statistics/project/church | 
[**statisticsProjectProgressGet**](StatisticsApi.md#statisticsprojectprogressget) | **GET** /Statistics/project/progress | 
[**statisticsProjectProjectIdRulesGet**](StatisticsApi.md#statisticsprojectprojectidrulesget) | **GET** /Statistics/project/{projectId}/rules | 
[**statisticsProjectRulesGet**](StatisticsApi.md#statisticsprojectrulesget) | **GET** /Statistics/project/rules | 
[**statisticsStreakpointPost**](StatisticsApi.md#statisticsstreakpointpost) | **POST** /Statistics/streakpoint | 
[**statisticsTrackPlayedPost**](StatisticsApi.md#statisticstrackplayedpost) | **POST** /Statistics/track/played | 
[**statisticsV2ProjectProgressGet**](StatisticsApi.md#statisticsv2projectprogressget) | **GET** /Statistics/v2/project/progress | 
[**statisticsWatchedPost**](StatisticsApi.md#statisticswatchedpost) | **POST** /Statistics/watched | 
[**statisticsYearInReviewFkGet**](StatisticsApi.md#statisticsyearinreviewfkget) | **GET** /Statistics/year-in-review/fk | 
[**statisticsYearInReviewHoursGet**](StatisticsApi.md#statisticsyearinreviewhoursget) | **GET** /Statistics/year-in-review/hours | 
[**statisticsYearInReviewOverviewGet**](StatisticsApi.md#statisticsyearinreviewoverviewget) | **GET** /Statistics/year-in-review/overview | 
[**statisticsYearInReviewSongsGet**](StatisticsApi.md#statisticsyearinreviewsongsget) | **GET** /Statistics/year-in-review/songs | 


# **statisticsAchievementDelete**
> statisticsAchievementDelete()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();

try {
    api.statisticsAchievementDelete();
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsAchievementDelete: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsAchievementIdGet**
> AchievementModel statisticsAchievementIdGet(id, lang, theme)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();
final String id = id_example; // String | 
final LanguageEnum lang = ; // LanguageEnum | 
final String theme = theme_example; // String | 

try {
    final response = api.statisticsAchievementIdGet(id, lang, theme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsAchievementIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **lang** | [**LanguageEnum**](.md)|  | [optional] 
 **theme** | **String**|  | [optional] [default to 'light']

### Return type

[**AchievementModel**](AchievementModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsAchievementNameAcknowledgePut**
> statisticsAchievementNameAcknowledgePut(name)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();
final String name = name_example; // String | 

try {
    api.statisticsAchievementNameAcknowledgePut(name);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsAchievementNameAcknowledgePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsAchievementsGet**
> DocumentListIAchievementCollectionOrChapterHeader statisticsAchievementsGet(lang, theme)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();
final LanguageEnum lang = ; // LanguageEnum | 
final String theme = theme_example; // String | 

try {
    final response = api.statisticsAchievementsGet(lang, theme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsAchievementsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | [**LanguageEnum**](.md)|  | [optional] 
 **theme** | **String**|  | [optional] [default to 'light']

### Return type

[**DocumentListIAchievementCollectionOrChapterHeader**](DocumentListIAchievementCollectionOrChapterHeader.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsAchievementsToAcknowledgeGet**
> BuiltList<AchievementModel> statisticsAchievementsToAcknowledgeGet(lang, theme)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();
final LanguageEnum lang = ; // LanguageEnum | 
final String theme = theme_example; // String | 

try {
    final response = api.statisticsAchievementsToAcknowledgeGet(lang, theme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsAchievementsToAcknowledgeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | [**LanguageEnum**](.md)|  | [optional] 
 **theme** | **String**|  | [optional] [default to 'light']

### Return type

[**BuiltList&lt;AchievementModel&gt;**](AchievementModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsFraKaareGet**
> GetFraKaareStatisticsResponse statisticsFraKaareGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();

try {
    final response = api.statisticsFraKaareGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsFraKaareGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetFraKaareStatisticsResponse**](GetFraKaareStatisticsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsListeningPost**
> statisticsListeningPost(listeningEvent)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();
final BuiltList<ListeningEvent> listeningEvent = ; // BuiltList<ListeningEvent> | 

try {
    api.statisticsListeningPost(listeningEvent);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsListeningPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listeningEvent** | [**BuiltList&lt;ListeningEvent&gt;**](ListeningEvent.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsProjectChurchChurchGet**
> ProjectChurchStatisticsQueryChurchStatistics statisticsProjectChurchChurchGet(church)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();
final String church = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.statisticsProjectChurchChurchGet(church);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsProjectChurchChurchGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **church** | **String**|  | 

### Return type

[**ProjectChurchStatisticsQueryChurchStatistics**](ProjectChurchStatisticsQueryChurchStatistics.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsProjectChurchGet**
> ProjectChurchStatisticsQueryChurchStatistics statisticsProjectChurchGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();

try {
    final response = api.statisticsProjectChurchGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsProjectChurchGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProjectChurchStatisticsQueryChurchStatistics**](ProjectChurchStatisticsQueryChurchStatistics.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsProjectProgressGet**
> ForbildePoints statisticsProjectProgressGet(lang, os, theme)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();
final LanguageEnum lang = ; // LanguageEnum | 
final String os = os_example; // String | 
final String theme = theme_example; // String | 

try {
    final response = api.statisticsProjectProgressGet(lang, os, theme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsProjectProgressGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | [**LanguageEnum**](.md)|  | [optional] 
 **os** | **String**|  | [optional] 
 **theme** | **String**|  | [optional] [default to 'light']

### Return type

[**ForbildePoints**](ForbildePoints.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsProjectProjectIdRulesGet**
> ProjectRulesQueryRules statisticsProjectProjectIdRulesGet(projectId, lang)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();
final int projectId = 56; // int | 
final LanguageEnum lang = ; // LanguageEnum | 

try {
    final response = api.statisticsProjectProjectIdRulesGet(projectId, lang);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsProjectProjectIdRulesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**|  | [default to 54]
 **lang** | [**LanguageEnum**](.md)|  | [optional] 

### Return type

[**ProjectRulesQueryRules**](ProjectRulesQueryRules.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsProjectRulesGet**
> ProjectRulesQueryRules statisticsProjectRulesGet(lang, projectId)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();
final LanguageEnum lang = ; // LanguageEnum | 
final int projectId = 56; // int | 

try {
    final response = api.statisticsProjectRulesGet(lang, projectId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsProjectRulesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | [**LanguageEnum**](.md)|  | [optional] 
 **projectId** | **int**|  | [optional] [default to 54]

### Return type

[**ProjectRulesQueryRules**](ProjectRulesQueryRules.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsStreakpointPost**
> statisticsStreakpointPost(streakPoint)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();
final BuiltList<StreakPoint> streakPoint = ; // BuiltList<StreakPoint> | 

try {
    api.statisticsStreakpointPost(streakPoint);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsStreakpointPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **streakPoint** | [**BuiltList&lt;StreakPoint&gt;**](StreakPoint.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsTrackPlayedPost**
> statisticsTrackPlayedPost(createTrackPlayedEventsCommandEvent)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();
final BuiltList<CreateTrackPlayedEventsCommandEvent> createTrackPlayedEventsCommandEvent = ; // BuiltList<CreateTrackPlayedEventsCommandEvent> | 

try {
    api.statisticsTrackPlayedPost(createTrackPlayedEventsCommandEvent);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsTrackPlayedPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTrackPlayedEventsCommandEvent** | [**BuiltList&lt;CreateTrackPlayedEventsCommandEvent&gt;**](CreateTrackPlayedEventsCommandEvent.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsV2ProjectProgressGet**
> ForbildePoints statisticsV2ProjectProgressGet(lang, theme)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();
final LanguageEnum lang = ; // LanguageEnum | 
final String theme = theme_example; // String | 

try {
    final response = api.statisticsV2ProjectProgressGet(lang, theme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsV2ProjectProgressGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | [**LanguageEnum**](.md)|  | [optional] 
 **theme** | **String**|  | [optional] [default to 'light']

### Return type

[**ForbildePoints**](ForbildePoints.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsWatchedPost**
> statisticsWatchedPost(statisticsControllerWatchedEvent)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();
final BuiltList<StatisticsControllerWatchedEvent> statisticsControllerWatchedEvent = ; // BuiltList<StatisticsControllerWatchedEvent> | 

try {
    api.statisticsWatchedPost(statisticsControllerWatchedEvent);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsWatchedPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **statisticsControllerWatchedEvent** | [**BuiltList&lt;StatisticsControllerWatchedEvent&gt;**](StatisticsControllerWatchedEvent.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsYearInReviewFkGet**
> statisticsYearInReviewFkGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();

try {
    api.statisticsYearInReviewFkGet();
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsYearInReviewFkGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsYearInReviewHoursGet**
> statisticsYearInReviewHoursGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();

try {
    api.statisticsYearInReviewHoursGet();
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsYearInReviewHoursGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsYearInReviewOverviewGet**
> BuiltList<GetYearInReviewOverviewSlide> statisticsYearInReviewOverviewGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();

try {
    final response = api.statisticsYearInReviewOverviewGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsYearInReviewOverviewGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;GetYearInReviewOverviewSlide&gt;**](GetYearInReviewOverviewSlide.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsYearInReviewSongsGet**
> statisticsYearInReviewSongsGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getStatisticsApi();

try {
    api.statisticsYearInReviewSongsGet();
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->statisticsYearInReviewSongsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

