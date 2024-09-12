# bmm_api.api.SuggestApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**suggestTermGet**](SuggestApi.md#suggesttermget) | **GET** /Suggest/{term} | 


# **suggestTermGet**
> BuiltList<String> suggestTermGet(term)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getSuggestApi();
final String term = term_example; // String | 

try {
    final response = api.suggestTermGet(term);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SuggestApi->suggestTermGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**|  | 

### Return type

**BuiltList&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

