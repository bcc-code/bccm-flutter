//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/album_model.dart';
import 'package:openapi/src/model/published_filter.dart';
import 'package:openapi/src/model/track_subtype.dart';

class AlbumApi {

  final Dio _dio;

  final Serializers _serializers;

  const AlbumApi(this._dio, this._serializers);

  /// albumGet
  /// 
  ///
  /// Parameters:
  /// * [publishedFilter] 
  /// * [policy] 
  /// * [from] 
  /// * [size] 
  /// * [contentType] 
  /// * [tags] 
  /// * [excludeTags] 
  /// * [contentType2] 
  /// * [tags2] 
  /// * [excludeTags2] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<AlbumModel>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<AlbumModel>>> albumGet({ 
    PublishedFilter? publishedFilter,
    String? policy,
    int? from,
    int? size,
    BuiltList<TrackSubtype>? contentType,
    BuiltList<String>? tags,
    BuiltList<String>? excludeTags,
    BuiltList<TrackSubtype>? contentType2,
    BuiltList<String>? tags2,
    BuiltList<String>? excludeTags2,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/album';
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
      if (publishedFilter != null) r'PublishedFilter': encodeQueryParameter(_serializers, publishedFilter, const FullType(PublishedFilter)),
      if (policy != null) r'Policy': encodeQueryParameter(_serializers, policy, const FullType(String)),
      if (from != null) r'From': encodeQueryParameter(_serializers, from, const FullType(int)),
      if (size != null) r'Size': encodeQueryParameter(_serializers, size, const FullType(int)),
      if (contentType != null) r'ContentType': encodeCollectionQueryParameter<TrackSubtype>(_serializers, contentType, const FullType(BuiltList, [FullType(TrackSubtype)]), format: ListFormat.multi,),
      if (tags != null) r'Tags': encodeCollectionQueryParameter<String>(_serializers, tags, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
      if (excludeTags != null) r'ExcludeTags': encodeCollectionQueryParameter<String>(_serializers, excludeTags, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
      if (contentType2 != null) r'content-type': encodeCollectionQueryParameter<TrackSubtype>(_serializers, contentType2, const FullType(BuiltList, [FullType(TrackSubtype)]), format: ListFormat.multi,),
      if (tags2 != null) r'tags': encodeCollectionQueryParameter<String>(_serializers, tags2, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
      if (excludeTags2 != null) r'exclude-tags': encodeCollectionQueryParameter<String>(_serializers, excludeTags2, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<AlbumModel>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(AlbumModel)]),
      ) as BuiltList<AlbumModel>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<AlbumModel>>(
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

  /// albumIdCoverGet
  /// 
  ///
  /// Parameters:
  /// * [id] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> albumIdCoverGet({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/album/{id}/cover'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(int)).toString());
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// albumIdGet
  /// 
  ///
  /// Parameters:
  /// * [id] 
  /// * [unpublished] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AlbumModel] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AlbumModel>> albumIdGet({ 
    required int id,
    PublishedFilter? unpublished,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/album/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(int)).toString());
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
      if (unpublished != null) r'unpublished': encodeQueryParameter(_serializers, unpublished, const FullType(PublishedFilter)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AlbumModel? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AlbumModel),
      ) as AlbumModel;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AlbumModel>(
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

  /// albumPublishedYearGet
  /// 
  ///
  /// Parameters:
  /// * [year] 
  /// * [unpublished] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<AlbumModel>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<AlbumModel>>> albumPublishedYearGet({ 
    required int year,
    PublishedFilter? unpublished,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/album/published/{year}'.replaceAll('{' r'year' '}', encodeQueryParameter(_serializers, year, const FullType(int)).toString());
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
      if (unpublished != null) r'unpublished': encodeQueryParameter(_serializers, unpublished, const FullType(PublishedFilter)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<AlbumModel>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(AlbumModel)]),
      ) as BuiltList<AlbumModel>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<AlbumModel>>(
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
