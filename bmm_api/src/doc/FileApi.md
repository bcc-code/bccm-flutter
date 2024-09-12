# bmm_api.api.FileApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fileApkGet**](FileApi.md#fileapkget) | **GET** /File/apk | 
[**fileProtectedTrackIdNameGet**](FileApi.md#fileprotectedtrackidnameget) | **GET** /File/protected/track/{id}/{name} | 
[**fileProtectedTypeIdNameGet**](FileApi.md#fileprotectedtypeidnameget) | **GET** /File/protected/{type}/{id}/{name} | 


# **fileApkGet**
> fileApkGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getFileApi();

try {
    api.fileApkGet();
} catch on DioException (e) {
    print('Exception when calling FileApi->fileApkGet: $e\n');
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

# **fileProtectedTrackIdNameGet**
> fileProtectedTrackIdNameGet(id, name, lastChanged, download)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getFileApi();
final int id = 56; // int | 
final String name = name_example; // String | 
final int lastChanged = 789; // int | 
final bool download = true; // bool | 

try {
    api.fileProtectedTrackIdNameGet(id, name, lastChanged, download);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileProtectedTrackIdNameGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **name** | **String**|  | 
 **lastChanged** | **int**|  | [optional] 
 **download** | **bool**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileProtectedTypeIdNameGet**
> fileProtectedTypeIdNameGet(type, id, name, lastChanged)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getFileApi();
final String type = type_example; // String | 
final int id = 56; // int | 
final String name = name_example; // String | 
final int lastChanged = 789; // int | 

try {
    api.fileProtectedTypeIdNameGet(type, id, name, lastChanged);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileProtectedTypeIdNameGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**|  | 
 **id** | **int**|  | 
 **name** | **String**|  | 
 **lastChanged** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

