//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/i_album_contributor_podcast_playlist_or_track.dart';
import 'package:openapi/src/model/published_filter.dart';
import 'package:openapi/src/model/resource_type.dart';
import 'package:openapi/src/model/search_filter.dart';
import 'package:openapi/src/model/search_results.dart';

class SearchApi {

  final Dio _dio;

  final Serializers _serializers;

  const SearchApi(this._dio, this._serializers);

  /// searchTermGet
  /// 
  ///
  /// Parameters:
  /// * [term] 
  /// * [resourceType] 
  /// * [publishedFilter] 
  /// * [size] 
  /// * [from] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<IAlbumContributorPodcastPlaylistOrTrack>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<IAlbumContributorPodcastPlaylistOrTrack>>> searchTermGet({ 
    required String term,
    BuiltList<ResourceType>? resourceType,
    PublishedFilter? publishedFilter,
    int? size = 20,
    int? from = 0,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Search/{term}'.replaceAll('{' r'term' '}', encodeQueryParameter(_serializers, term, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (resourceType != null) r'resource-type': encodeCollectionQueryParameter<ResourceType>(_serializers, resourceType, const FullType(BuiltList, [FullType(ResourceType)]), format: ListFormat.multi,),
      if (publishedFilter != null) r'publishedFilter': encodeQueryParameter(_serializers, publishedFilter, const FullType(PublishedFilter)),
      if (size != null) r'size': encodeQueryParameter(_serializers, size, const FullType(int)),
      if (from != null) r'from': encodeQueryParameter(_serializers, from, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<IAlbumContributorPodcastPlaylistOrTrack>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(IAlbumContributorPodcastPlaylistOrTrack)]),
      ) as BuiltList<IAlbumContributorPodcastPlaylistOrTrack>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<IAlbumContributorPodcastPlaylistOrTrack>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// searchV2TermGet
  /// 
  ///
  /// Parameters:
  /// * [term] 
  /// * [filter] 
  /// * [publishedFilter] 
  /// * [size] 
  /// * [from] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SearchResults] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SearchResults>> searchV2TermGet({ 
    required String term,
    SearchFilter? filter,
    PublishedFilter? publishedFilter,
    int? size = 20,
    int? from = 0,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Search/v2/{term}'.replaceAll('{' r'term' '}', encodeQueryParameter(_serializers, term, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filter != null) r'filter': encodeQueryParameter(_serializers, filter, const FullType(SearchFilter)),
      if (publishedFilter != null) r'publishedFilter': encodeQueryParameter(_serializers, publishedFilter, const FullType(PublishedFilter)),
      if (size != null) r'size': encodeQueryParameter(_serializers, size, const FullType(int)),
      if (from != null) r'from': encodeQueryParameter(_serializers, from, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    SearchResults? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SearchResults),
      ) as SearchResults;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SearchResults>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// textsearchTermGet
  /// 
  ///
  /// Parameters:
  /// * [term] 
  /// * [resourceType] 
  /// * [publishedFilter] 
  /// * [size] 
  /// * [from] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<IAlbumContributorPodcastPlaylistOrTrack>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<IAlbumContributorPodcastPlaylistOrTrack>>> textsearchTermGet({ 
    required String term,
    BuiltList<ResourceType>? resourceType,
    PublishedFilter? publishedFilter,
    int? size = 20,
    int? from = 0,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/textsearch/{term}'.replaceAll('{' r'term' '}', encodeQueryParameter(_serializers, term, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (resourceType != null) r'resource-type': encodeCollectionQueryParameter<ResourceType>(_serializers, resourceType, const FullType(BuiltList, [FullType(ResourceType)]), format: ListFormat.multi,),
      if (publishedFilter != null) r'publishedFilter': encodeQueryParameter(_serializers, publishedFilter, const FullType(PublishedFilter)),
      if (size != null) r'size': encodeQueryParameter(_serializers, size, const FullType(int)),
      if (from != null) r'from': encodeQueryParameter(_serializers, from, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<IAlbumContributorPodcastPlaylistOrTrack>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(IAlbumContributorPodcastPlaylistOrTrack)]),
      ) as BuiltList<IAlbumContributorPodcastPlaylistOrTrack>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<IAlbumContributorPodcastPlaylistOrTrack>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// textsearchV2TermGet
  /// 
  ///
  /// Parameters:
  /// * [term] 
  /// * [filter] 
  /// * [publishedFilter] 
  /// * [size] 
  /// * [from] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SearchResults] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SearchResults>> textsearchV2TermGet({ 
    required String term,
    SearchFilter? filter,
    PublishedFilter? publishedFilter,
    int? size = 20,
    int? from = 0,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/textsearch/v2/{term}'.replaceAll('{' r'term' '}', encodeQueryParameter(_serializers, term, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (filter != null) r'filter': encodeQueryParameter(_serializers, filter, const FullType(SearchFilter)),
      if (publishedFilter != null) r'publishedFilter': encodeQueryParameter(_serializers, publishedFilter, const FullType(PublishedFilter)),
      if (size != null) r'size': encodeQueryParameter(_serializers, size, const FullType(int)),
      if (from != null) r'from': encodeQueryParameter(_serializers, from, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    SearchResults? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SearchResults),
      ) as SearchResults;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SearchResults>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
