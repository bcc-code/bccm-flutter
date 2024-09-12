# bmm_api.api.CurrentUserApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**currentUserGet**](CurrentUserApi.md#currentuserget) | **GET** /CurrentUser | 


# **currentUserGet**
> UserModel currentUserGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getCurrentUserApi();

try {
    final response = api.currentUserGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling CurrentUserApi->currentUserGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserModel**](UserModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

