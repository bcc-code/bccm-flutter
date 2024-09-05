# openapi.api.TranscriptionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transcriptionTrackIdLanguageFirstLastGet**](TranscriptionApi.md#transcriptiontrackidlanguagefirstlastget) | **GET** /transcription/{trackId}/{language}/{first}/{last} | 
[**transcriptionTrackIdLanguagePost**](TranscriptionApi.md#transcriptiontrackidlanguagepost) | **POST** /transcription/{trackId}/{language} | 


# **transcriptionTrackIdLanguageFirstLastGet**
> BuiltList<TrackTranslationTranscriptionSegment> transcriptionTrackIdLanguageFirstLastGet(trackId, language, first, last)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getTranscriptionApi();
final int trackId = 56; // int | 
final LanguageEnum language = ; // LanguageEnum | 
final int first = 56; // int | 
final int last = 56; // int | 

try {
    final response = api.transcriptionTrackIdLanguageFirstLastGet(trackId, language, first, last);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TranscriptionApi->transcriptionTrackIdLanguageFirstLastGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trackId** | **int**|  | 
 **language** | [**LanguageEnum**](.md)|  | 
 **first** | **int**|  | 
 **last** | **int**|  | 

### Return type

[**BuiltList&lt;TrackTranslationTranscriptionSegment&gt;**](TrackTranslationTranscriptionSegment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transcriptionTrackIdLanguagePost**
> transcriptionTrackIdLanguagePost(trackId, language, storeTranscriptionEditSuggestionsSuggestion)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getTranscriptionApi();
final int trackId = 56; // int | 
final LanguageEnum language = ; // LanguageEnum | 
final BuiltList<StoreTranscriptionEditSuggestionsSuggestion> storeTranscriptionEditSuggestionsSuggestion = ; // BuiltList<StoreTranscriptionEditSuggestionsSuggestion> | 

try {
    api.transcriptionTrackIdLanguagePost(trackId, language, storeTranscriptionEditSuggestionsSuggestion);
} catch on DioException (e) {
    print('Exception when calling TranscriptionApi->transcriptionTrackIdLanguagePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trackId** | **int**|  | 
 **language** | [**LanguageEnum**](.md)|  | 
 **storeTranscriptionEditSuggestionsSuggestion** | [**BuiltList&lt;StoreTranscriptionEditSuggestionsSuggestion&gt;**](StoreTranscriptionEditSuggestionsSuggestion.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

