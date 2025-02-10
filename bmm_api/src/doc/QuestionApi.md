# bmm_api.api.QuestionApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**questionAnswersPost**](QuestionApi.md#questionanswerspost) | **POST** /question/answers | 
[**questionIdGet**](QuestionApi.md#questionidget) | **GET** /question/{id} | 
[**questionIdPost**](QuestionApi.md#questionidpost) | **POST** /question/{id} | 


# **questionAnswersPost**
> questionAnswersPost(handleBccmAnswerCommandBccmAnswer)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getQuestionApi();
final BuiltList<HandleBccmAnswerCommandBccmAnswer> handleBccmAnswerCommandBccmAnswer = ; // BuiltList<HandleBccmAnswerCommandBccmAnswer> | 

try {
    api.questionAnswersPost(handleBccmAnswerCommandBccmAnswer);
} catch on DioException (e) {
    print('Exception when calling QuestionApi->questionAnswersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handleBccmAnswerCommandBccmAnswer** | [**BuiltList&lt;HandleBccmAnswerCommandBccmAnswer&gt;**](HandleBccmAnswerCommandBccmAnswer.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **questionIdGet**
> QuestionModel questionIdGet(id)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getQuestionApi();
final int id = 56; // int | 

try {
    final response = api.questionIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuestionApi->questionIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**QuestionModel**](QuestionModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **questionIdPost**
> questionIdPost(id, storeQuestionResponseCommand)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getQuestionApi();
final int id = 56; // int | 
final StoreQuestionResponseCommand storeQuestionResponseCommand = ; // StoreQuestionResponseCommand | 

try {
    api.questionIdPost(id, storeQuestionResponseCommand);
} catch on DioException (e) {
    print('Exception when calling QuestionApi->questionIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **storeQuestionResponseCommand** | [**StoreQuestionResponseCommand**](StoreQuestionResponseCommand.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

