# openapi.api.ContributorApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contributorGet**](ContributorApi.md#contributorget) | **GET** /contributor | 
[**contributorIdCoverGet**](ContributorApi.md#contributoridcoverget) | **GET** /contributor/{id}/cover | 
[**contributorIdGet**](ContributorApi.md#contributoridget) | **GET** /contributor/{id} | 
[**contributorIdRandomGet**](ContributorApi.md#contributoridrandomget) | **GET** /contributor/{id}/random | 
[**contributorIdTrackGet**](ContributorApi.md#contributoridtrackget) | **GET** /contributor/{id}/track | 
[**contributorSearchTermGet**](ContributorApi.md#contributorsearchtermget) | **GET** /contributor/search/{term} | 
[**contributorSuggesterCompletionTermGet**](ContributorApi.md#contributorsuggestercompletiontermget) | **GET** /contributor/suggester/completion/{term} | 


# **contributorGet**
> BuiltList<ContributorModel> contributorGet()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getContributorApi();

try {
    final response = api.contributorGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ContributorApi->contributorGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ContributorModel&gt;**](ContributorModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contributorIdCoverGet**
> contributorIdCoverGet(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getContributorApi();
final int id = 56; // int | 

try {
    api.contributorIdCoverGet(id);
} catch on DioException (e) {
    print('Exception when calling ContributorApi->contributorIdCoverGet: $e\n');
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

# **contributorIdGet**
> ContributorModel contributorIdGet(id, unpublished)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getContributorApi();
final int id = 56; // int | 
final PublishedFilter unpublished = ; // PublishedFilter | 

try {
    final response = api.contributorIdGet(id, unpublished);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ContributorApi->contributorIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **unpublished** | [**PublishedFilter**](.md)|  | [optional] 

### Return type

[**ContributorModel**](ContributorModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contributorIdRandomGet**
> BuiltList<TrackModel> contributorIdRandomGet(id, size)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getContributorApi();
final int id = 56; // int | 
final int size = 56; // int | 

try {
    final response = api.contributorIdRandomGet(id, size);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ContributorApi->contributorIdRandomGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**BuiltList&lt;TrackModel&gt;**](TrackModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contributorIdTrackGet**
> BuiltList<TrackModel> contributorIdTrackGet(id, unpublished, from, size)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getContributorApi();
final int id = 56; // int | 
final PublishedFilter unpublished = ; // PublishedFilter | 
final int from = 56; // int | 
final int size = 56; // int | 

try {
    final response = api.contributorIdTrackGet(id, unpublished, from, size);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ContributorApi->contributorIdTrackGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **unpublished** | [**PublishedFilter**](.md)|  | [optional] 
 **from** | **int**|  | [optional] [default to 0]
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**BuiltList&lt;TrackModel&gt;**](TrackModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contributorSearchTermGet**
> BuiltList<ContributorModel> contributorSearchTermGet(term, size)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getContributorApi();
final String term = term_example; // String | 
final int size = 56; // int | 

try {
    final response = api.contributorSearchTermGet(term, size);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ContributorApi->contributorSearchTermGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**|  | 
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**BuiltList&lt;ContributorModel&gt;**](ContributorModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contributorSuggesterCompletionTermGet**
> BuiltList<ContributorModel> contributorSuggesterCompletionTermGet(term, size)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getContributorApi();
final String term = term_example; // String | 
final int size = 56; // int | 

try {
    final response = api.contributorSuggesterCompletionTermGet(term, size);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ContributorApi->contributorSuggesterCompletionTermGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**|  | 
 **size** | **int**|  | [optional] [default to 20]

### Return type

[**BuiltList&lt;ContributorModel&gt;**](ContributorModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

