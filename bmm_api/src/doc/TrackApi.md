# bmm_api.api.TrackApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**trackGet**](TrackApi.md#trackget) | **GET** /track | 
[**trackIdGet**](TrackApi.md#trackidget) | **GET** /track/{id} | 
[**trackIdTranscriptionGet**](TrackApi.md#trackidtranscriptionget) | **GET** /track/{id}/transcription | 
[**trackIdTranscriptionLanguageGet**](TrackApi.md#trackidtranscriptionlanguageget) | **GET** /track/{id}/transcription/{language} | 
[**trackRecommendationGet**](TrackApi.md#trackrecommendationget) | **GET** /track/recommendation | 


# **trackGet**
> BuiltList<TrackModel> trackGet(size, from, contentType, publishedFilter, tags, excludeTags, language, policy, contentType2, tags2, excludeTags2)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackApi();
final int size = 56; // int | 
final int from = 56; // int | 
final BuiltList<TrackSubtype> contentType = ; // BuiltList<TrackSubtype> | 
final PublishedFilter publishedFilter = ; // PublishedFilter | 
final BuiltList<String> tags = ; // BuiltList<String> | 
final BuiltList<String> excludeTags = ; // BuiltList<String> | 
final LanguageEnum language = ; // LanguageEnum | 
final String policy = policy_example; // String | 
final BuiltList<TrackSubtype> contentType2 = ; // BuiltList<TrackSubtype> | 
final BuiltList<String> tags2 = ; // BuiltList<String> | 
final BuiltList<String> excludeTags2 = ; // BuiltList<String> | 

try {
    final response = api.trackGet(size, from, contentType, publishedFilter, tags, excludeTags, language, policy, contentType2, tags2, excludeTags2);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrackApi->trackGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**|  | [optional] 
 **from** | **int**|  | [optional] 
 **contentType** | [**BuiltList&lt;TrackSubtype&gt;**](TrackSubtype.md)|  | [optional] 
 **publishedFilter** | [**PublishedFilter**](.md)|  | [optional] 
 **tags** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 
 **excludeTags** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 
 **language** | [**LanguageEnum**](.md)|  | [optional] 
 **policy** | **String**|  | [optional] 
 **contentType2** | [**BuiltList&lt;TrackSubtype&gt;**](TrackSubtype.md)|  | [optional] 
 **tags2** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 
 **excludeTags2** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**BuiltList&lt;TrackModel&gt;**](TrackModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackIdGet**
> TrackModel trackIdGet(id, unpublished)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackApi();
final int id = 56; // int | 
final PublishedFilter unpublished = ; // PublishedFilter | 

try {
    final response = api.trackIdGet(id, unpublished);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrackApi->trackIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **unpublished** | [**PublishedFilter**](.md)|  | [optional] 

### Return type

[**TrackModel**](TrackModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackIdTranscriptionGet**
> BuiltList<TrackTranslationTranscriptionSegment> trackIdTranscriptionGet(id, unpublished)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackApi();
final int id = 56; // int | 
final PublishedFilter unpublished = ; // PublishedFilter | 

try {
    final response = api.trackIdTranscriptionGet(id, unpublished);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrackApi->trackIdTranscriptionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **unpublished** | [**PublishedFilter**](.md)|  | [optional] 

### Return type

[**BuiltList&lt;TrackTranslationTranscriptionSegment&gt;**](TrackTranslationTranscriptionSegment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackIdTranscriptionLanguageGet**
> BuiltList<TrackTranslationTranscriptionSegment> trackIdTranscriptionLanguageGet(id, language, unpublished)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackApi();
final int id = 56; // int | 
final LanguageEnum language = ; // LanguageEnum | 
final PublishedFilter unpublished = ; // PublishedFilter | 

try {
    final response = api.trackIdTranscriptionLanguageGet(id, language, unpublished);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrackApi->trackIdTranscriptionLanguageGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **language** | [**LanguageEnum**](.md)|  | 
 **unpublished** | [**PublishedFilter**](.md)|  | [optional] 

### Return type

[**BuiltList&lt;TrackTranslationTranscriptionSegment&gt;**](TrackTranslationTranscriptionSegment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackRecommendationGet**
> BuiltList<TrackModel> trackRecommendationGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackApi();

try {
    final response = api.trackRecommendationGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrackApi->trackRecommendationGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;TrackModel&gt;**](TrackModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

