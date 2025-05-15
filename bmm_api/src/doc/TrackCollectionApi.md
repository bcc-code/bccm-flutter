# bmm_api.api.TrackCollectionApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**trackCollectionGet**](TrackCollectionApi.md#trackcollectionget) | **GET** /track_collection | Get a list of track collections for the current user.
[**trackCollectionIdAlbumAlbumIdPost**](TrackCollectionApi.md#trackcollectionidalbumalbumidpost) | **POST** /track_collection/{id}/album/{albumId} | 
[**trackCollectionIdDelete**](TrackCollectionApi.md#trackcollectioniddelete) | **DELETE** /track_collection/{id} | 
[**trackCollectionIdGet**](TrackCollectionApi.md#trackcollectionidget) | **GET** /track_collection/{id} | Get a single track collection. All hidden or deleted tracks will not show up in this list if the user added them once.
[**trackCollectionIdPlaylistPlaylistIdPost**](TrackCollectionApi.md#trackcollectionidplaylistplaylistidpost) | **POST** /track_collection/{id}/playlist/{playlistId} | 
[**trackCollectionIdPost**](TrackCollectionApi.md#trackcollectionidpost) | **POST** /track_collection/{id} | Add tracks to existing track collection without changing anything else
[**trackCollectionIdPut**](TrackCollectionApi.md#trackcollectionidput) | **PUT** /track_collection/{id} | Edit an existing track collection
[**trackCollectionIdResetSharePost**](TrackCollectionApi.md#trackcollectionidresetsharepost) | **POST** /track_collection/{id}/reset-share | Resets the sharing link and removes all followers of the track collection
[**trackCollectionIdTrackCollectionPlaylistIdPost**](TrackCollectionApi.md#trackcollectionidtrackcollectionplaylistidpost) | **POST** /track_collection/{id}/track_collection/{playlistId} | 
[**trackCollectionIdUnfollowPost**](TrackCollectionApi.md#trackcollectionidunfollowpost) | **POST** /track_collection/{id}/unfollow | Unfollows a track collection
[**trackCollectionLikePost**](TrackCollectionApi.md#trackcollectionlikepost) | **POST** /track_collection/like | 
[**trackCollectionPost**](TrackCollectionApi.md#trackcollectionpost) | **POST** /track_collection | Create a track collection
[**trackCollectionTopSongsGet**](TrackCollectionApi.md#trackcollectiontopsongsget) | **GET** /track_collection/top-songs | 
[**trackCollectionTopSongsPost**](TrackCollectionApi.md#trackcollectiontopsongspost) | **POST** /track_collection/top-songs | 
[**trackCollectionUnlikePost**](TrackCollectionApi.md#trackcollectionunlikepost) | **POST** /track_collection/unlike | 


# **trackCollectionGet**
> BuiltList<TrackCollectionShell> trackCollectionGet()

Get a list of track collections for the current user.

### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();

try {
    final response = api.trackCollectionGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;TrackCollectionShell&gt;**](TrackCollectionShell.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackCollectionIdAlbumAlbumIdPost**
> trackCollectionIdAlbumAlbumIdPost(id, albumId)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();
final int id = 56; // int | 
final int albumId = 56; // int | 

try {
    api.trackCollectionIdAlbumAlbumIdPost(id, albumId);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionIdAlbumAlbumIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **albumId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackCollectionIdDelete**
> trackCollectionIdDelete(id)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();
final int id = 56; // int | 

try {
    api.trackCollectionIdDelete(id);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionIdDelete: $e\n');
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

# **trackCollectionIdGet**
> GetTrackCollectionModel trackCollectionIdGet(id)

Get a single track collection. All hidden or deleted tracks will not show up in this list if the user added them once.

### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();
final int id = 56; // int | 

try {
    final response = api.trackCollectionIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**GetTrackCollectionModel**](GetTrackCollectionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackCollectionIdPlaylistPlaylistIdPost**
> trackCollectionIdPlaylistPlaylistIdPost(id, playlistId)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();
final int id = 56; // int | 
final int playlistId = 56; // int | 

try {
    api.trackCollectionIdPlaylistPlaylistIdPost(id, playlistId);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionIdPlaylistPlaylistIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **playlistId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackCollectionIdPost**
> trackCollectionIdPost(id, link)

Add tracks to existing track collection without changing anything else

### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();
final int id = 56; // int | 
final BuiltList<String> link = ; // BuiltList<String> | 

try {
    api.trackCollectionIdPost(id, link);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **link** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackCollectionIdPut**
> trackCollectionIdPut(id, updateTrackCollectionCommand)

Edit an existing track collection

### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();
final int id = 56; // int | 
final UpdateTrackCollectionCommand updateTrackCollectionCommand = ; // UpdateTrackCollectionCommand | 

try {
    api.trackCollectionIdPut(id, updateTrackCollectionCommand);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **updateTrackCollectionCommand** | [**UpdateTrackCollectionCommand**](UpdateTrackCollectionCommand.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackCollectionIdResetSharePost**
> trackCollectionIdResetSharePost(id)

Resets the sharing link and removes all followers of the track collection

### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();
final int id = 56; // int | 

try {
    api.trackCollectionIdResetSharePost(id);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionIdResetSharePost: $e\n');
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

# **trackCollectionIdTrackCollectionPlaylistIdPost**
> trackCollectionIdTrackCollectionPlaylistIdPost(id, playlistId)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();
final int id = 56; // int | 
final int playlistId = 56; // int | 

try {
    api.trackCollectionIdTrackCollectionPlaylistIdPost(id, playlistId);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionIdTrackCollectionPlaylistIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **playlistId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackCollectionIdUnfollowPost**
> trackCollectionIdUnfollowPost(id)

Unfollows a track collection

### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();
final int id = 56; // int | 

try {
    api.trackCollectionIdUnfollowPost(id);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionIdUnfollowPost: $e\n');
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
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackCollectionLikePost**
> trackCollectionLikePost(link)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();
final BuiltList<String> link = ; // BuiltList<String> | 

try {
    api.trackCollectionLikePost(link);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionLikePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **link** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackCollectionPost**
> int trackCollectionPost(createTrackCollectionCommand)

Create a track collection

### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();
final CreateTrackCollectionCommand createTrackCollectionCommand = ; // CreateTrackCollectionCommand | 

try {
    final response = api.trackCollectionPost(createTrackCollectionCommand);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTrackCollectionCommand** | [**CreateTrackCollectionCommand**](CreateTrackCollectionCommand.md)|  | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackCollectionTopSongsGet**
> GetTopSongsCollectionModel trackCollectionTopSongsGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();

try {
    final response = api.trackCollectionTopSongsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionTopSongsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetTopSongsCollectionModel**](GetTopSongsCollectionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackCollectionTopSongsPost**
> int trackCollectionTopSongsPost()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();

try {
    final response = api.trackCollectionTopSongsPost();
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionTopSongsPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackCollectionUnlikePost**
> trackCollectionUnlikePost(link)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getTrackCollectionApi();
final BuiltList<String> link = ; // BuiltList<String> | 

try {
    api.trackCollectionUnlikePost(link);
} catch on DioException (e) {
    print('Exception when calling TrackCollectionApi->trackCollectionUnlikePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **link** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

