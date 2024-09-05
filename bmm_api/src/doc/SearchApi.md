# openapi.api.SearchApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchTermGet**](SearchApi.md#searchtermget) | **GET** /Search/{term} | 
[**searchV2TermGet**](SearchApi.md#searchv2termget) | **GET** /Search/v2/{term} | 
[**textsearchTermGet**](SearchApi.md#textsearchtermget) | **GET** /textsearch/{term} | 
[**textsearchV2TermGet**](SearchApi.md#textsearchv2termget) | **GET** /textsearch/v2/{term} | 


# **searchTermGet**
> BuiltList<IAlbumContributorPodcastPlaylistOrTrack> searchTermGet(term, resourceType, publishedFilter, size, from)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSearchApi();
final String term = term_example; // String | 
final BuiltList<ResourceType> resourceType = ; // BuiltList<ResourceType> | 
final PublishedFilter publishedFilter = ; // PublishedFilter | 
final int size = 56; // int | 
final int from = 56; // int | 

try {
    final response = api.searchTermGet(term, resourceType, publishedFilter, size, from);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SearchApi->searchTermGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**|  | 
 **resourceType** | [**BuiltList&lt;ResourceType&gt;**](ResourceType.md)|  | [optional] 
 **publishedFilter** | [**PublishedFilter**](.md)|  | [optional] 
 **size** | **int**|  | [optional] [default to 20]
 **from** | **int**|  | [optional] [default to 0]

### Return type

[**BuiltList&lt;IAlbumContributorPodcastPlaylistOrTrack&gt;**](IAlbumContributorPodcastPlaylistOrTrack.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchV2TermGet**
> SearchResults searchV2TermGet(term, filter, publishedFilter, size, from)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSearchApi();
final String term = term_example; // String | 
final SearchFilter filter = ; // SearchFilter | 
final PublishedFilter publishedFilter = ; // PublishedFilter | 
final int size = 56; // int | 
final int from = 56; // int | 

try {
    final response = api.searchV2TermGet(term, filter, publishedFilter, size, from);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SearchApi->searchV2TermGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**|  | 
 **filter** | [**SearchFilter**](.md)|  | [optional] 
 **publishedFilter** | [**PublishedFilter**](.md)|  | [optional] 
 **size** | **int**|  | [optional] [default to 20]
 **from** | **int**|  | [optional] [default to 0]

### Return type

[**SearchResults**](SearchResults.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **textsearchTermGet**
> BuiltList<IAlbumContributorPodcastPlaylistOrTrack> textsearchTermGet(term, resourceType, publishedFilter, size, from)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSearchApi();
final String term = term_example; // String | 
final BuiltList<ResourceType> resourceType = ; // BuiltList<ResourceType> | 
final PublishedFilter publishedFilter = ; // PublishedFilter | 
final int size = 56; // int | 
final int from = 56; // int | 

try {
    final response = api.textsearchTermGet(term, resourceType, publishedFilter, size, from);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SearchApi->textsearchTermGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**|  | 
 **resourceType** | [**BuiltList&lt;ResourceType&gt;**](ResourceType.md)|  | [optional] 
 **publishedFilter** | [**PublishedFilter**](.md)|  | [optional] 
 **size** | **int**|  | [optional] [default to 20]
 **from** | **int**|  | [optional] [default to 0]

### Return type

[**BuiltList&lt;IAlbumContributorPodcastPlaylistOrTrack&gt;**](IAlbumContributorPodcastPlaylistOrTrack.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **textsearchV2TermGet**
> SearchResults textsearchV2TermGet(term, filter, publishedFilter, size, from)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSearchApi();
final String term = term_example; // String | 
final SearchFilter filter = ; // SearchFilter | 
final PublishedFilter publishedFilter = ; // PublishedFilter | 
final int size = 56; // int | 
final int from = 56; // int | 

try {
    final response = api.textsearchV2TermGet(term, filter, publishedFilter, size, from);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SearchApi->textsearchV2TermGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**|  | 
 **filter** | [**SearchFilter**](.md)|  | [optional] 
 **publishedFilter** | [**PublishedFilter**](.md)|  | [optional] 
 **size** | **int**|  | [optional] [default to 20]
 **from** | **int**|  | [optional] [default to 0]

### Return type

[**SearchResults**](SearchResults.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

