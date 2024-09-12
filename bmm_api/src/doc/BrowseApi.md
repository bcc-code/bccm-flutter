# bmm_api.api.BrowseApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**browseAudiobooksGet**](BrowseApi.md#browseaudiobooksget) | **GET** /Browse/audiobooks | 
[**browseEventsGet**](BrowseApi.md#browseeventsget) | **GET** /Browse/events | 
[**browseGet**](BrowseApi.md#browseget) | **GET** /Browse | 
[**browseMusicGet**](BrowseApi.md#browsemusicget) | **GET** /Browse/music | 
[**browsePodcastsGet**](BrowseApi.md#browsepodcastsget) | **GET** /Browse/podcasts | 


# **browseAudiobooksGet**
> DocumentListIAlbumPlaylistOrChapterHeader browseAudiobooksGet(skip, take)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getBrowseApi();
final int skip = 56; // int | 
final int take = 56; // int | 

try {
    final response = api.browseAudiobooksGet(skip, take);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BrowseApi->browseAudiobooksGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skip** | **int**|  | [optional] 
 **take** | **int**|  | [optional] 

### Return type

[**DocumentListIAlbumPlaylistOrChapterHeader**](DocumentListIAlbumPlaylistOrChapterHeader.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **browseEventsGet**
> DocumentListIAlbumOrChapterHeader browseEventsGet(skip, take)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getBrowseApi();
final int skip = 56; // int | 
final int take = 56; // int | 

try {
    final response = api.browseEventsGet(skip, take);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BrowseApi->browseEventsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skip** | **int**|  | [optional] 
 **take** | **int**|  | [optional] 

### Return type

[**DocumentListIAlbumOrChapterHeader**](DocumentListIAlbumOrChapterHeader.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **browseGet**
> BuiltList<IAlbumPodcastPlaylistOrSectionHeader> browseGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getBrowseApi();

try {
    final response = api.browseGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling BrowseApi->browseGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;IAlbumPodcastPlaylistOrSectionHeader&gt;**](IAlbumPodcastPlaylistOrSectionHeader.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **browseMusicGet**
> DocumentListPodcastModel browseMusicGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getBrowseApi();

try {
    final response = api.browseMusicGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling BrowseApi->browseMusicGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DocumentListPodcastModel**](DocumentListPodcastModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **browsePodcastsGet**
> DocumentListPodcastModel browsePodcastsGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getBrowseApi();

try {
    final response = api.browsePodcastsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling BrowseApi->browsePodcastsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DocumentListPodcastModel**](DocumentListPodcastModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

