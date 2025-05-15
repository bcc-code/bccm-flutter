# bmm_api.api.PlaylistApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**playlistDocumentsGet**](PlaylistApi.md#playlistdocumentsget) | **GET** /playlist/documents | 
[**playlistGet**](PlaylistApi.md#playlistget) | **GET** /playlist | List of playlists.  The apps use this endpoint to load single playlists as well (as optimization)
[**playlistIdCoverGet**](PlaylistApi.md#playlistidcoverget) | **GET** /playlist/{id}/cover | 
[**playlistIdDetailsGet**](PlaylistApi.md#playlistiddetailsget) | **GET** /playlist/{id}/details | 
[**playlistIdGet**](PlaylistApi.md#playlistidget) | **GET** /playlist/{id} | 
[**playlistIdTrackGet**](PlaylistApi.md#playlistidtrackget) | **GET** /playlist/{id}/track | 


# **playlistDocumentsGet**
> DocumentListIAllDocumentModels playlistDocumentsGet(lang, age)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getPlaylistApi();
final LanguageEnum lang = ; // LanguageEnum | 
final int age = 56; // int | 

try {
    final response = api.playlistDocumentsGet(lang, age);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlaylistApi->playlistDocumentsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | [**LanguageEnum**](.md)|  | [optional] 
 **age** | **int**|  | [optional] 

### Return type

[**DocumentListIAllDocumentModels**](DocumentListIAllDocumentModels.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **playlistGet**
> BuiltList<PlaylistModel> playlistGet()

List of playlists.  The apps use this endpoint to load single playlists as well (as optimization)

### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getPlaylistApi();

try {
    final response = api.playlistGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlaylistApi->playlistGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;PlaylistModel&gt;**](PlaylistModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **playlistIdCoverGet**
> playlistIdCoverGet(id)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getPlaylistApi();
final int id = 56; // int | 

try {
    api.playlistIdCoverGet(id);
} catch on DioException (e) {
    print('Exception when calling PlaylistApi->playlistIdCoverGet: $e\n');
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

# **playlistIdDetailsGet**
> PlaylistDetailsModel playlistIdDetailsGet(id)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getPlaylistApi();
final int id = 56; // int | 

try {
    final response = api.playlistIdDetailsGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlaylistApi->playlistIdDetailsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**PlaylistDetailsModel**](PlaylistDetailsModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **playlistIdGet**
> PlaylistModel playlistIdGet(id)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getPlaylistApi();
final int id = 56; // int | 

try {
    final response = api.playlistIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlaylistApi->playlistIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**PlaylistModel**](PlaylistModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **playlistIdTrackGet**
> BuiltList<TrackModel> playlistIdTrackGet(id, unpublished)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getPlaylistApi();
final int id = 56; // int | 
final PublishedFilter unpublished = ; // PublishedFilter | 

try {
    final response = api.playlistIdTrackGet(id, unpublished);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlaylistApi->playlistIdTrackGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **unpublished** | [**PublishedFilter**](.md)|  | [optional] 

### Return type

[**BuiltList&lt;TrackModel&gt;**](TrackModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

