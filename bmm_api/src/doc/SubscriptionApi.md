# bmm_api.api.SubscriptionApi

## Load the API package
```dart
import 'package:bmm_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notificationsDeviceIdDelete**](SubscriptionApi.md#notificationsdeviceiddelete) | **DELETE** /Notifications/{deviceId} | 
[**notificationsDeviceIdPut**](SubscriptionApi.md#notificationsdeviceidput) | **PUT** /Notifications/{deviceId} | 
[**subscriptionDeviceIdDelete**](SubscriptionApi.md#subscriptiondeviceiddelete) | **DELETE** /Subscription/{deviceId} | 
[**subscriptionDeviceIdPut**](SubscriptionApi.md#subscriptiondeviceidput) | **PUT** /Subscription/{deviceId} | 


# **notificationsDeviceIdDelete**
> notificationsDeviceIdDelete(deviceId)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getSubscriptionApi();
final String deviceId = deviceId_example; // String | 

try {
    api.notificationsDeviceIdDelete(deviceId);
} catch on DioException (e) {
    print('Exception when calling SubscriptionApi->notificationsDeviceIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsDeviceIdPut**
> notificationsDeviceIdPut(deviceId, subscriptionModel)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getSubscriptionApi();
final String deviceId = deviceId_example; // String | 
final SubscriptionModel subscriptionModel = ; // SubscriptionModel | 

try {
    api.notificationsDeviceIdPut(deviceId, subscriptionModel);
} catch on DioException (e) {
    print('Exception when calling SubscriptionApi->notificationsDeviceIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**|  | 
 **subscriptionModel** | [**SubscriptionModel**](SubscriptionModel.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionDeviceIdDelete**
> subscriptionDeviceIdDelete(deviceId)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getSubscriptionApi();
final String deviceId = deviceId_example; // String | 

try {
    api.subscriptionDeviceIdDelete(deviceId);
} catch on DioException (e) {
    print('Exception when calling SubscriptionApi->subscriptionDeviceIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionDeviceIdPut**
> subscriptionDeviceIdPut(deviceId, subscriptionModel)



### Example
```dart
import 'package:bmm_api/api.dart';

final api = BmmApi().getSubscriptionApi();
final String deviceId = deviceId_example; // String | 
final SubscriptionModel subscriptionModel = ; // SubscriptionModel | 

try {
    api.subscriptionDeviceIdPut(deviceId, subscriptionModel);
} catch on DioException (e) {
    print('Exception when calling SubscriptionApi->subscriptionDeviceIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**|  | 
 **subscriptionModel** | [**SubscriptionModel**](SubscriptionModel.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

