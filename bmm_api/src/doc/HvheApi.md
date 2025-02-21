# bmm_api.api.HvheApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gamenightPost**](HvheApi.md#gamenightpost) | **POST** /gamenight | 
[**notificationsPost**](HvheApi.md#notificationspost) | **POST** /notifications | 
[**statusGet**](HvheApi.md#statusget) | **GET** /status | 


# **gamenightPost**
> gamenightPost()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getHvheApi();

try {
    api.gamenightPost();
} catch on DioException (e) {
    print('Exception when calling HvheApi->gamenightPost: $e\n');
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

# **notificationsPost**
> notificationsPost()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getHvheApi();

try {
    api.notificationsPost();
} catch on DioException (e) {
    print('Exception when calling HvheApi->notificationsPost: $e\n');
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

# **statusGet**
> HvheControllerHvheStatus statusGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getHvheApi();

try {
    final response = api.statusGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling HvheApi->statusGet: $e\n');
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

