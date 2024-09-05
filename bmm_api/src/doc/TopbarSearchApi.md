# openapi.api.TopbarSearchApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**topbarsearchTermGet**](TopbarSearchApi.md#topbarsearchtermget) | **GET** /topbarsearch/{term} | 


# **topbarsearchTermGet**
> BuiltList<TopbarSearchQueryTopbarSearchResult> topbarsearchTermGet(term, size)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getTopbarSearchApi();
final String term = term_example; // String | 
final int size = 56; // int | 

try {
    final response = api.topbarsearchTermGet(term, size);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TopbarSearchApi->topbarsearchTermGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**|  | 
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**BuiltList&lt;TopbarSearchQueryTopbarSearchResult&gt;**](TopbarSearchQueryTopbarSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

