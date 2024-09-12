# bmm_api.api.LinkMetadataApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**linkMetadataTrackIdGet**](LinkMetadataApi.md#linkmetadatatrackidget) | **GET** /LinkMetadata/track/{id} | 
[**linkMetadataTrackIdLanguageGet**](LinkMetadataApi.md#linkmetadatatrackidlanguageget) | **GET** /LinkMetadata/track/{id}/{language} | 


# **linkMetadataTrackIdGet**
> MetadataModel linkMetadataTrackIdGet(id)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getLinkMetadataApi();
final int id = 56; // int | 

try {
    final response = api.linkMetadataTrackIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LinkMetadataApi->linkMetadataTrackIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**MetadataModel**](MetadataModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkMetadataTrackIdLanguageGet**
> MetadataModel linkMetadataTrackIdLanguageGet(id, language)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getLinkMetadataApi();
final int id = 56; // int | 
final LanguageEnum language = ; // LanguageEnum | 

try {
    final response = api.linkMetadataTrackIdLanguageGet(id, language);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LinkMetadataApi->linkMetadataTrackIdLanguageGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **language** | [**LanguageEnum**](.md)|  | 

### Return type

[**MetadataModel**](MetadataModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

