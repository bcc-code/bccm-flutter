//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:bmm_api/src/serializers.dart';
import 'package:bmm_api/src/auth/api_key_auth.dart';
import 'package:bmm_api/src/auth/basic_auth.dart';
import 'package:bmm_api/src/auth/bearer_auth.dart';
import 'package:bmm_api/src/auth/oauth.dart';
import 'package:bmm_api/src/api/album_api.dart';
import 'package:bmm_api/src/api/browse_api.dart';
import 'package:bmm_api/src/api/contributor_api.dart';
import 'package:bmm_api/src/api/current_user_api.dart';
import 'package:bmm_api/src/api/default_api.dart';
import 'package:bmm_api/src/api/discover_api.dart';
import 'package:bmm_api/src/api/download_links_api.dart';
import 'package:bmm_api/src/api/events_api.dart';
import 'package:bmm_api/src/api/facets_api.dart';
import 'package:bmm_api/src/api/file_api.dart';
import 'package:bmm_api/src/api/link_metadata_api.dart';
import 'package:bmm_api/src/api/lyrics_api.dart';
import 'package:bmm_api/src/api/playlist_api.dart';
import 'package:bmm_api/src/api/podcast_api.dart';
import 'package:bmm_api/src/api/question_api.dart';
import 'package:bmm_api/src/api/search_api.dart';
import 'package:bmm_api/src/api/shared_playlist_api.dart';
import 'package:bmm_api/src/api/statistics_api.dart';
import 'package:bmm_api/src/api/subscription_api.dart';
import 'package:bmm_api/src/api/suggest_api.dart';
import 'package:bmm_api/src/api/topbar_search_api.dart';
import 'package:bmm_api/src/api/track_api.dart';
import 'package:bmm_api/src/api/track_collection_api.dart';
import 'package:bmm_api/src/api/transcription_api.dart';

class BmmApi {
  static const String basePath = r'http://localhost';

  final Dio dio;
  final Serializers serializers;

  BmmApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AlbumApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AlbumApi getAlbumApi() {
    return AlbumApi(dio, serializers);
  }

  /// Get BrowseApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BrowseApi getBrowseApi() {
    return BrowseApi(dio, serializers);
  }

  /// Get ContributorApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ContributorApi getContributorApi() {
    return ContributorApi(dio, serializers);
  }

  /// Get CurrentUserApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CurrentUserApi getCurrentUserApi() {
    return CurrentUserApi(dio, serializers);
  }

  /// Get DefaultApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DefaultApi getDefaultApi() {
    return DefaultApi(dio, serializers);
  }

  /// Get DiscoverApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DiscoverApi getDiscoverApi() {
    return DiscoverApi(dio, serializers);
  }

  /// Get DownloadLinksApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DownloadLinksApi getDownloadLinksApi() {
    return DownloadLinksApi(dio, serializers);
  }

  /// Get EventsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EventsApi getEventsApi() {
    return EventsApi(dio, serializers);
  }

  /// Get FacetsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FacetsApi getFacetsApi() {
    return FacetsApi(dio, serializers);
  }

  /// Get FileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FileApi getFileApi() {
    return FileApi(dio, serializers);
  }

  /// Get LinkMetadataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LinkMetadataApi getLinkMetadataApi() {
    return LinkMetadataApi(dio, serializers);
  }

  /// Get LyricsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LyricsApi getLyricsApi() {
    return LyricsApi(dio, serializers);
  }

  /// Get PlaylistApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PlaylistApi getPlaylistApi() {
    return PlaylistApi(dio, serializers);
  }

  /// Get PodcastApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PodcastApi getPodcastApi() {
    return PodcastApi(dio, serializers);
  }

  /// Get QuestionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QuestionApi getQuestionApi() {
    return QuestionApi(dio, serializers);
  }

  /// Get SearchApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SearchApi getSearchApi() {
    return SearchApi(dio, serializers);
  }

  /// Get SharedPlaylistApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SharedPlaylistApi getSharedPlaylistApi() {
    return SharedPlaylistApi(dio, serializers);
  }

  /// Get StatisticsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StatisticsApi getStatisticsApi() {
    return StatisticsApi(dio, serializers);
  }

  /// Get SubscriptionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SubscriptionApi getSubscriptionApi() {
    return SubscriptionApi(dio, serializers);
  }

  /// Get SuggestApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SuggestApi getSuggestApi() {
    return SuggestApi(dio, serializers);
  }

  /// Get TopbarSearchApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TopbarSearchApi getTopbarSearchApi() {
    return TopbarSearchApi(dio, serializers);
  }

  /// Get TrackApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TrackApi getTrackApi() {
    return TrackApi(dio, serializers);
  }

  /// Get TrackCollectionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TrackCollectionApi getTrackCollectionApi() {
    return TrackCollectionApi(dio, serializers);
  }

  /// Get TranscriptionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TranscriptionApi getTranscriptionApi() {
    return TranscriptionApi(dio, serializers);
  }
}
