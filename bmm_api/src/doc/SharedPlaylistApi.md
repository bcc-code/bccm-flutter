# openapi.api.SharedPlaylistApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sharedPlaylistSharingSecretFollowPost**](SharedPlaylistApi.md#sharedplaylistsharingsecretfollowpost) | **POST** /shared_playlist/{sharingSecret}/follow | 
[**sharedPlaylistSharingSecretGet**](SharedPlaylistApi.md#sharedplaylistsharingsecretget) | **GET** /shared_playlist/{sharingSecret} | 


# **sharedPlaylistSharingSecretFollowPost**
> sharedPlaylistSharingSecretFollowPost(sharingSecret)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSharedPlaylistApi();
final String sharingSecret = sharingSecret_example; // String | 

try {
    api.sharedPlaylistSharingSecretFollowPost(sharingSecret);
} catch on DioException (e) {
    print('Exception when calling SharedPlaylistApi->sharedPlaylistSharingSecretFollowPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sharingSecret** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sharedPlaylistSharingSecretGet**
> GetTrackCollectionModel sharedPlaylistSharingSecretGet(sharingSecret)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSharedPlaylistApi();
final String sharingSecret = sharingSecret_example; // String | 

try {
    final response = api.sharedPlaylistSharingSecretGet(sharingSecret);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SharedPlaylistApi->sharedPlaylistSharingSecretGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sharingSecret** | **String**|  | 

### Return type

[**GetTrackCollectionModel**](GetTrackCollectionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

