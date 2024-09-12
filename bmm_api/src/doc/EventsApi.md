# bmm_api.api.EventsApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**eventsMediabankenExportPost**](EventsApi.md#eventsmediabankenexportpost) | **POST** /events/mediabanken-export | 


# **eventsMediabankenExportPost**
> eventsMediabankenExportPost(path)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getEventsApi();
final String path = path_example; // String | 

try {
    api.eventsMediabankenExportPost(path);
} catch on DioException (e) {
    print('Exception when calling EventsApi->eventsMediabankenExportPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

