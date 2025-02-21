# bmm_api.api.HvheApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**hVHEGamenightPost**](HvheApi.md#hvhegamenightpost) | **POST** /HVHE/gamenight | 
[**hVHENotificationsPost**](HvheApi.md#hvhenotificationspost) | **POST** /HVHE/notifications | 
[**hVHEProgressGet**](HvheApi.md#hvheprogressget) | **GET** /HVHE/progress | 
[**hVHEStatusGet**](HvheApi.md#hvhestatusget) | **GET** /HVHE/status | 


# **hVHEGamenightPost**
> hVHEGamenightPost()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getHvheApi();

try {
    api.hVHEGamenightPost();
} catch on DioException (e) {
    print('Exception when calling HvheApi->hVHEGamenightPost: $e\n');
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

# **hVHENotificationsPost**
> hVHENotificationsPost()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getHvheApi();

try {
    api.hVHENotificationsPost();
} catch on DioException (e) {
    print('Exception when calling HvheApi->hVHENotificationsPost: $e\n');
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

# **hVHEProgressGet**
> HvheProjectBox hVHEProgressGet(theme)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getHvheApi();
final String theme = theme_example; // String | 

try {
    final response = api.hVHEProgressGet(theme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling HvheApi->hVHEProgressGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **theme** | **String**|  | [optional] [default to 'light']

### Return type

[**HvheProjectBox**](HvheProjectBox.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hVHEStatusGet**
> HvheControllerHvheStatus hVHEStatusGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getHvheApi();

try {
    final response = api.hVHEStatusGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling HvheApi->hVHEStatusGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HvheControllerHvheStatus**](HvheControllerHvheStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

