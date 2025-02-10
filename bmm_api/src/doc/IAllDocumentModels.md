# bmm_api.model.IAllDocumentModels

## Load the model package
```dart
import 'package:bmm_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meta** | [**TrackModelTrackMeta**](TrackModelTrackMeta.md) |  | 
**bmmId** | **String** |  | [optional] 
**cover** | **String** |  | [optional] 
**id** | **int** |  | 
**languages** | [**BuiltList&lt;LanguageEnum&gt;**](LanguageEnum.md) |  | 
**parentId** | **int** |  | 
**publishedAt** | [**DateTime**](DateTime.md) |  | 
**tags** | **BuiltList&lt;String&gt;** |  | 
**language** | [**LanguageEnum**](LanguageEnum.md) |  | 
**title** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**type** | **String** |  | 
**children** | [**BuiltList&lt;IAlbumOrTrack&gt;**](IAlbumOrTrack.md) |  | [optional] 
**latestTrackId** | **int** |  | [optional] 
**latestTrackPosition** | **int** |  | [optional] 
**isVisible** | **bool** |  | [optional] 
**name** | **String** |  | 
**meta** | [**ContributorContributorMeta**](ContributorContributorMeta.md) |  | [optional] 
**interpretReferences** | **int** |  | [optional] 
**otherReferences** | **int** |  | [optional] 
**access** | **BuiltList&lt;String&gt;** |  | [optional] 
**trackReferences** | [**BuiltList&lt;TrackReference&gt;**](TrackReference.md) |  | [optional] 
**year** | **int** |  | [optional] 
**weekOfTheYear** | **int** |  | [optional] 
**todaysFraKaareTrackId** | **int** |  | [optional] 
**numberOfPerfectWeeks** | **int** |  | [optional] 
**isPerfectWeek** | **bool** |  | [optional] 
**total** | **int** |  | [optional] 
**monday** | **bool** |  | [optional] 
**tuesday** | **bool** |  | [optional] 
**wednesday** | **bool** |  | [optional] 
**thursday** | **bool** |  | [optional] 
**friday** | **bool** |  | [optional] 
**dayOfTheWeek** | [**DayOfWeek**](DayOfWeek.md) |  | [optional] 
**eligibleUntil** | [**DateTime**](DateTime.md) |  | [optional] 
**lastChanged** | [**DateTime**](DateTime.md) |  | [optional] 
**daysInARow** | **int** |  | [optional] 
**pointColor** | **String** |  | [optional] 
**homeScreenText** | [**CurrentWeeksStreakVmHomeScreenTextOptions**](CurrentWeeksStreakVmHomeScreenTextOptions.md) |  | [optional] 
**list** | [**BuiltList&lt;AchievementModel&gt;**](AchievementModel.md) |  | [optional] 
**openByDefault** | **bool** |  | [optional] 
**points** | **int** |  | [optional] 
**pointsDescription** | **String** |  | [optional] 
**achievements** | [**BuiltList&lt;AchievementModel&gt;**](AchievementModel.md) |  | [optional] 
**rulesLinkTitle** | **String** |  | [optional] 
**boysPoints** | **int** |  | [optional] 
**girlsPoints** | **int** |  | [optional] 
**translatedMessage** | **String** |  | [optional] 
**messageText** | **String** |  | [optional] 
**link** | **String** |  | [optional] 
**showIcon** | **bool** |  | [optional] 
**buttonTitle** | **String** |  | [optional] 
**buttonWebsite** | **String** |  | [optional] 
**buttonShowIcon** | **bool** |  | [optional] 
**iconColor** | **String** |  | [optional] 
**subtitle** | **String** |  | [optional] 
**contributor** | [**ContributorModel**](ContributorModel.md) |  | [optional] 
**track** | [**TrackModel**](TrackModel.md) |  | [optional] 
**playlist** | [**PlaylistModel**](PlaylistModel.md) |  | [optional] 
**album** | [**AlbumModel**](AlbumModel.md) |  | [optional] 
**useCoverCarousel** | **bool** |  | [optional] 
**header** | **String** |  | [optional] 
**buttonText** | **String** |  | [optional] 
**buttonUrl** | **String** |  | [optional] 
**videoFileName** | **String** |  | [optional] 
**backgroundColor** | **String** |  | [optional] 
**coverUrl** | **String** |  | [optional] 
**label** | **String** |  | [optional] 
**date** | [**DateTime**](DateTime.md) |  | [optional] 
**percentage** | **int** |  | [optional] 
**showAllLink** | **String** |  | [optional] 
**shufflePodcastId** | **int** |  | [optional] 
**lastPositionInMs** | **int** |  | [optional] 
**comment** | **String** |  | [optional] 
**order** | **int** |  | [optional] 
**recordedAt** | [**DateTime**](DateTime.md) |  | 
**rel** | [**BuiltList&lt;TrackModelRelation&gt;**](TrackModelRelation.md) |  | [optional] 
**bibleRelations** | [**BuiltList&lt;TrackModelBibleRelation&gt;**](TrackModelBibleRelation.md) |  | [optional] 
**externalRelations** | [**BuiltList&lt;TrackModelExternalRelation&gt;**](TrackModelExternalRelation.md) |  | [optional] 
**contributors** | [**BuiltList&lt;TrackModelContributorRelation&gt;**](TrackModelContributorRelation.md) |  | [optional] 
**songbookRelations** | [**BuiltList&lt;TrackModelSongbookRelation&gt;**](TrackModelSongbookRelation.md) |  | [optional] 
**subtype** | [**TrackSubtype**](TrackSubtype.md) |  | 
**transcriptionLanguages** | [**BuiltList&lt;LanguageEnum&gt;**](LanguageEnum.md) |  | 
**publisher** | **String** |  | [optional] 
**copyright** | **String** |  | [optional] 
**media** | [**BuiltList&lt;TrackModelMedium&gt;**](TrackModelMedium.md) |  | [optional] 
**hasListened** | **bool** |  | [optional] 
**hasTranscription** | **bool** |  | [optional] 
**isLiked** | **bool** |  | [optional] 
**buttonLink** | **String** |  | [optional] 
**playlistName** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


