# bmm_api.api.LyricsApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**lyricsGet**](LyricsApi.md#lyricsget) | **GET** /lyrics | 
[**lyricsIdDelete**](LyricsApi.md#lyricsiddelete) | **DELETE** /lyrics/{id} | 
[**lyricsIdGet**](LyricsApi.md#lyricsidget) | **GET** /lyrics/{id} | 
[**lyricsIdPut**](LyricsApi.md#lyricsidput) | **PUT** /lyrics/{id} | 
[**lyricsPost**](LyricsApi.md#lyricspost) | **POST** /lyrics | 
[**lyricsSearchTermGet**](LyricsApi.md#lyricssearchtermget) | **GET** /lyrics/search/{term} | 


# **lyricsGet**
> BuiltList<Lyrics> lyricsGet()



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getLyricsApi();

try {
    final response = api.lyricsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling LyricsApi->lyricsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Lyrics&gt;**](Lyrics.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lyricsIdDelete**
> lyricsIdDelete(id)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getLyricsApi();
final int id = 56; // int | 

try {
    api.lyricsIdDelete(id);
} catch on DioException (e) {
    print('Exception when calling LyricsApi->lyricsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lyricsIdGet**
> Lyrics lyricsIdGet(id)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getLyricsApi();
final int id = 56; // int | 

try {
    final response = api.lyricsIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LyricsApi->lyricsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Lyrics**](Lyrics.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lyricsIdPut**
> lyricsIdPut(id, lyrics)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getLyricsApi();
final int id = 56; // int | 
final Lyrics lyrics = ; // Lyrics | 

try {
    api.lyricsIdPut(id, lyrics);
} catch on DioException (e) {
    print('Exception when calling LyricsApi->lyricsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **lyrics** | [**Lyrics**](Lyrics.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lyricsPost**
> int lyricsPost(lyrics)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getLyricsApi();
final Lyrics lyrics = ; // Lyrics | 

try {
    final response = api.lyricsPost(lyrics);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LyricsApi->lyricsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lyrics** | [**Lyrics**](Lyrics.md)|  | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lyricsSearchTermGet**
> BuiltList<Lyrics> lyricsSearchTermGet(term, size)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getLyricsApi();
final String term = term_example; // String | 
final int size = 56; // int | 

try {
    final response = api.lyricsSearchTermGet(term, size);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LyricsApi->lyricsSearchTermGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**|  | 
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**BuiltList&lt;Lyrics&gt;**](Lyrics.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

