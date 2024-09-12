# bmm_api.api.DownloadLinksApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadLinksGet**](DownloadLinksApi.md#downloadlinksget) | **GET** /download-links | 
[**downloadLinksWindowsGet**](DownloadLinksApi.md#downloadlinkswindowsget) | **GET** /download-links/windows | 


# **downloadLinksGet**
> AppDownloadLinksQueryDownloadLinks downloadLinksGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getDownloadLinksApi();

try {
    final response = api.downloadLinksGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DownloadLinksApi->downloadLinksGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AppDownloadLinksQueryDownloadLinks**](AppDownloadLinksQueryDownloadLinks.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadLinksWindowsGet**
> downloadLinksWindowsGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getDownloadLinksApi();

try {
    api.downloadLinksWindowsGet();
} catch on DioException (e) {
    print('Exception when calling DownloadLinksApi->downloadLinksWindowsGet: $e\n');
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

