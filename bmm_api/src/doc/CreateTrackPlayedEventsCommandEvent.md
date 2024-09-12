# bmm_api.model.CreateTrackPlayedEventsCommandEvent

## Load the model package
```dart
import 'package:bmm_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**personId** | **int** |  | [optional] 
**trackId** | **int** |  | [optional] 
**uniqueSecondsListened** | **double** |  | [optional] 
**status** | [**ListenedStatus**](ListenedStatus.md) |  | [optional] 
**percentage** | **double** |  | [optional] 
**trackLength** | **double** |  | [optional] 
**timestampStart** | [**DateTime**](DateTime.md) |  | [optional] 
**timestampEnd** | [**DateTime**](DateTime.md) |  | [optional] 
**spentTime** | **double** |  | [optional] 
**typeOfTrack** | [**TrackSubtype**](TrackSubtype.md) |  | [optional] 
**availability** | [**ResourceAvailability**](ResourceAvailability.md) |  | [optional] 
**albumId** | **int** |  | [optional] 
**tags** | **BuiltList&lt;String&gt;** |  | [optional] 
**sentAfterStartup** | **bool** |  | [optional] 
**language** | **String** |  | [optional] 
**playbackOrigin** | **String** |  | [optional] 
**lastPosition** | **int** |  | [optional] 
**adjustedPlaybackSpeed** | **double** |  | [optional] 
**client** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


