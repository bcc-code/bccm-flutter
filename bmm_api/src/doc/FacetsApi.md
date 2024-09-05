# openapi.api.FacetsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**controllerAlbumPublishedYearsGet**](FacetsApi.md#controlleralbumpublishedyearsget) | **GET** /{controller}/album_published/years | 


# **controllerAlbumPublishedYearsGet**
> BuiltList<AlbumYearFacetsQueryResult> controllerAlbumPublishedYearsGet(controller, unpublished)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFacetsApi();
final String controller = controller_example; // String | 
final PublishedFilter unpublished = ; // PublishedFilter | 

try {
    final response = api.controllerAlbumPublishedYearsGet(controller, unpublished);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FacetsApi->controllerAlbumPublishedYearsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **controller** | **String**|  | 
 **unpublished** | [**PublishedFilter**](.md)|  | [optional] 

### Return type

[**BuiltList&lt;AlbumYearFacetsQueryResult&gt;**](AlbumYearFacetsQueryResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

