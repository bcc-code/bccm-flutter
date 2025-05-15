# bmm_api.api.HvheApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**hVHEProgressGet**](HvheApi.md#hvheprogressget) | **GET** /HVHE/progress | 
[**hVHEStatusGet**](HvheApi.md#hvhestatusget) | **GET** /HVHE/status | 


# **hVHEProgressGet**
> ProjectBoxV2 hVHEProgressGet(theme)



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

[**ProjectBoxV2**](ProjectBoxV2.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hVHEStatusGet**
> HvheCompetitionPoints hVHEStatusGet()



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

[**HvheCompetitionPoints**](HvheCompetitionPoints.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

