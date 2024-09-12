# bmm_api.api.AlbumApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**albumGet**](AlbumApi.md#albumget) | **GET** /album | 
[**albumIdCoverGet**](AlbumApi.md#albumidcoverget) | **GET** /album/{id}/cover | 
[**albumIdGet**](AlbumApi.md#albumidget) | **GET** /album/{id} | 
[**albumPublishedYearGet**](AlbumApi.md#albumpublishedyearget) | **GET** /album/published/{year} | 


# **albumGet**
> BuiltList<AlbumModel> albumGet(publishedFilter, policy, from, size, contentType, tags, excludeTags, contentType2, tags2, excludeTags2)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getAlbumApi();
final PublishedFilter publishedFilter = ; // PublishedFilter | 
final String policy = policy_example; // String | 
final int from = 56; // int | 
final int size = 56; // int | 
final BuiltList<TrackSubtype> contentType = ; // BuiltList<TrackSubtype> | 
final BuiltList<String> tags = ; // BuiltList<String> | 
final BuiltList<String> excludeTags = ; // BuiltList<String> | 
final BuiltList<TrackSubtype> contentType2 = ; // BuiltList<TrackSubtype> | 
final BuiltList<String> tags2 = ; // BuiltList<String> | 
final BuiltList<String> excludeTags2 = ; // BuiltList<String> | 

try {
    final response = api.albumGet(publishedFilter, policy, from, size, contentType, tags, excludeTags, contentType2, tags2, excludeTags2);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AlbumApi->albumGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publishedFilter** | [**PublishedFilter**](.md)|  | [optional] 
 **policy** | **String**|  | [optional] 
 **from** | **int**|  | [optional] 
 **size** | **int**|  | [optional] 
 **contentType** | [**BuiltList&lt;TrackSubtype&gt;**](TrackSubtype.md)|  | [optional] 
 **tags** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 
 **excludeTags** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 
 **contentType2** | [**BuiltList&lt;TrackSubtype&gt;**](TrackSubtype.md)|  | [optional] 
 **tags2** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 
 **excludeTags2** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**BuiltList&lt;AlbumModel&gt;**](AlbumModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **albumIdCoverGet**
> albumIdCoverGet(id)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getAlbumApi();
final int id = 56; // int | 

try {
    api.albumIdCoverGet(id);
} catch on DioException (e) {
    print('Exception when calling AlbumApi->albumIdCoverGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **albumIdGet**
> AlbumModel albumIdGet(id, unpublished)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getAlbumApi();
final int id = 56; // int | 
final PublishedFilter unpublished = ; // PublishedFilter | 

try {
    final response = api.albumIdGet(id, unpublished);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AlbumApi->albumIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **unpublished** | [**PublishedFilter**](.md)|  | [optional] 

### Return type

[**AlbumModel**](AlbumModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **albumPublishedYearGet**
> BuiltList<AlbumModel> albumPublishedYearGet(year, unpublished)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getAlbumApi();
final int year = 56; // int | 
final PublishedFilter unpublished = ; // PublishedFilter | 

try {
    final response = api.albumPublishedYearGet(year, unpublished);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AlbumApi->albumPublishedYearGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **int**|  | 
 **unpublished** | [**PublishedFilter**](.md)|  | [optional] 

### Return type

[**BuiltList&lt;AlbumModel&gt;**](AlbumModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

