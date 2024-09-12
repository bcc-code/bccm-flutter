# bmm_api.api.PodcastApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**podcastGet**](PodcastApi.md#podcastget) | **GET** /podcast | 
[**podcastIdCoverGet**](PodcastApi.md#podcastidcoverget) | **GET** /podcast/{id}/cover | 
[**podcastIdGet**](PodcastApi.md#podcastidget) | **GET** /podcast/{id} | 
[**podcastIdRandomGet**](PodcastApi.md#podcastidrandomget) | **GET** /podcast/{id}/random | 
[**podcastIdShuffleGet**](PodcastApi.md#podcastidshuffleget) | **GET** /podcast/{id}/shuffle | 
[**podcastIdTrackGet**](PodcastApi.md#podcastidtrackget) | **GET** /podcast/{id}/track | 


# **podcastGet**
> BuiltList<PodcastModel> podcastGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getPodcastApi();

try {
    final response = api.podcastGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastApi->podcastGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;PodcastModel&gt;**](PodcastModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **podcastIdCoverGet**
> podcastIdCoverGet(id)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getPodcastApi();
final int id = 56; // int | 

try {
    api.podcastIdCoverGet(id);
} catch on DioException (e) {
    print('Exception when calling PodcastApi->podcastIdCoverGet: $e\n');
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

# **podcastIdGet**
> PodcastModel podcastIdGet(id)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getPodcastApi();
final int id = 56; // int | 

try {
    final response = api.podcastIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastApi->podcastIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**PodcastModel**](PodcastModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **podcastIdRandomGet**
> TrackModel podcastIdRandomGet(id)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getPodcastApi();
final int id = 56; // int | 

try {
    final response = api.podcastIdRandomGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastApi->podcastIdRandomGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**TrackModel**](TrackModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **podcastIdShuffleGet**
> BuiltList<TrackModel> podcastIdShuffleGet(id, size)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getPodcastApi();
final int id = 56; // int | 
final int size = 56; // int | 

try {
    final response = api.podcastIdShuffleGet(id, size);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastApi->podcastIdShuffleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**BuiltList&lt;TrackModel&gt;**](TrackModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **podcastIdTrackGet**
> BuiltList<TrackModel> podcastIdTrackGet(id, unpublished, size, from)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getPodcastApi();
final int id = 56; // int | 
final PublishedFilter unpublished = ; // PublishedFilter | 
final int size = 56; // int | 
final int from = 56; // int | 

try {
    final response = api.podcastIdTrackGet(id, unpublished, size, from);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastApi->podcastIdTrackGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **unpublished** | [**PublishedFilter**](.md)|  | [optional] 
 **size** | **int**|  | [optional] [default to 20]
 **from** | **int**|  | [optional] [default to 0]

### Return type

[**BuiltList&lt;TrackModel&gt;**](TrackModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

