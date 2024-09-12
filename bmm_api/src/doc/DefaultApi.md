# bmm_api.api.DefaultApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**loaderio2a7384d72124b249603cbda2fc74a801Get**](DefaultApi.md#loaderio2a7384d72124b249603cbda2fc74a801get) | **GET** /loaderio-2a7384d72124b249603cbda2fc74a801 | 
[**questionPost**](DefaultApi.md#questionpost) | **POST** /question | 
[**rootGet**](DefaultApi.md#rootget) | **GET** / | 
[**rootHead**](DefaultApi.md#roothead) | **HEAD** / | 


# **loaderio2a7384d72124b249603cbda2fc74a801Get**
> loaderio2a7384d72124b249603cbda2fc74a801Get()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getDefaultApi();

try {
    api.loaderio2a7384d72124b249603cbda2fc74a801Get();
} catch on DioException (e) {
    print('Exception when calling DefaultApi->loaderio2a7384d72124b249603cbda2fc74a801Get: $e\n');
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

# **questionPost**
> questionPost(storeProjectQuestionQuestionHolder)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getDefaultApi();
final StoreProjectQuestionQuestionHolder storeProjectQuestionQuestionHolder = ; // StoreProjectQuestionQuestionHolder | 

try {
    api.questionPost(storeProjectQuestionQuestionHolder);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->questionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeProjectQuestionQuestionHolder** | [**StoreProjectQuestionQuestionHolder**](StoreProjectQuestionQuestionHolder.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rootGet**
> ApiOverviewModel rootGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getDefaultApi();

try {
    final response = api.rootGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->rootGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiOverviewModel**](ApiOverviewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rootHead**
> ApiOverviewModel rootHead()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getDefaultApi();

try {
    final response = api.rootHead();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->rootHead: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiOverviewModel**](ApiOverviewModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

