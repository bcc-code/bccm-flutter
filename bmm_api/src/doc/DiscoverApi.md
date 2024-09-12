# bmm_api.api.DiscoverApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**discoverGet**](DiscoverApi.md#discoverget) | **GET** /Discover | 


# **discoverGet**
> BuiltList<IAllDocumentModels> discoverGet(lang, age, theme)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getDiscoverApi();
final LanguageEnum lang = ; // LanguageEnum | 
final int age = 56; // int | 
final String theme = theme_example; // String | 

try {
    final response = api.discoverGet(lang, age, theme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DiscoverApi->discoverGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | [**LanguageEnum**](.md)|  | [optional] 
 **age** | **int**|  | [optional] 
 **theme** | **String**|  | [optional] [default to 'light']

### Return type

[**BuiltList&lt;IAllDocumentModels&gt;**](IAllDocumentModels.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

