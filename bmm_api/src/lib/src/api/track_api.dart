//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/language_enum.dart';
import 'package:openapi/src/model/published_filter.dart';
import 'package:openapi/src/model/track_model.dart';
import 'package:openapi/src/model/track_subtype.dart';
import 'package:openapi/src/model/track_translation_transcription_segment.dart';

class TrackApi {

  final Dio _dio;

  final Serializers _serializers;

  const TrackApi(this._dio, this._serializers);

  /// trackGet
  /// 
  ///
  /// Parameters:
  /// * [size] 
  /// * [from] 
  /// * [contentType] 
  /// * [publishedFilter] 
  /// * [tags] 
  /// * [excludeTags] 
  /// * [language] 
  /// * [policy] 
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
  /// Returns a [Future] containing a [Response] with a [BuiltList<TrackModel>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<TrackModel>>> trackGet({ 
    int? size,
    int? from,
    BuiltList<TrackSubtype>? contentType,
    PublishedFilter? publishedFilter,
    BuiltList<String>? tags,
    BuiltList<String>? excludeTags,
    LanguageEnum? language,
    String? policy,
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
    final _path = r'/track';
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
      if (size != null) r'Size': encodeQueryParameter(_serializers, size, const FullType(int)),
      if (from != null) r'From': encodeQueryParameter(_serializers, from, const FullType(int)),
      if (contentType != null) r'ContentType': encodeCollectionQueryParameter<TrackSubtype>(_serializers, contentType, const FullType(BuiltList, [FullType(TrackSubtype)]), format: ListFormat.multi,),
      if (publishedFilter != null) r'PublishedFilter': encodeQueryParameter(_serializers, publishedFilter, const FullType(PublishedFilter)),
      if (tags != null) r'Tags': encodeCollectionQueryParameter<String>(_serializers, tags, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
      if (excludeTags != null) r'ExcludeTags': encodeCollectionQueryParameter<String>(_serializers, excludeTags, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
      if (language != null) r'Language': encodeQueryParameter(_serializers, language, const FullType(LanguageEnum)),
      if (policy != null) r'Policy': encodeQueryParameter(_serializers, policy, const FullType(String)),
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

    BuiltList<TrackModel>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(TrackModel)]),
      ) as BuiltList<TrackModel>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<TrackModel>>(
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

  /// trackIdGet
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
  /// Returns a [Future] containing a [Response] with a [TrackModel] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TrackModel>> trackIdGet({ 
    required int id,
    PublishedFilter? unpublished,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/track/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(int)).toString());
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

    TrackModel? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(TrackModel),
      ) as TrackModel;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TrackModel>(
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

  /// trackIdTranscriptionGet
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
  /// Returns a [Future] containing a [Response] with a [BuiltList<TrackTranslationTranscriptionSegment>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<TrackTranslationTranscriptionSegment>>> trackIdTranscriptionGet({ 
    required int id,
    PublishedFilter? unpublished,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/track/{id}/transcription'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(int)).toString());
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

    BuiltList<TrackTranslationTranscriptionSegment>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(TrackTranslationTranscriptionSegment)]),
      ) as BuiltList<TrackTranslationTranscriptionSegment>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<TrackTranslationTranscriptionSegment>>(
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

  /// trackIdTranscriptionLanguageGet
  /// 
  ///
  /// Parameters:
  /// * [id] 
  /// * [language] 
  /// * [unpublished] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<TrackTranslationTranscriptionSegment>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<TrackTranslationTranscriptionSegment>>> trackIdTranscriptionLanguageGet({ 
    required int id,
    required LanguageEnum language,
    PublishedFilter? unpublished,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/track/{id}/transcription/{language}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(int)).toString()).replaceAll('{' r'language' '}', encodeQueryParameter(_serializers, language, const FullType(LanguageEnum)).toString());
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

    BuiltList<TrackTranslationTranscriptionSegment>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(TrackTranslationTranscriptionSegment)]),
      ) as BuiltList<TrackTranslationTranscriptionSegment>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<TrackTranslationTranscriptionSegment>>(
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

  /// trackRecommendationGet
  /// 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<TrackModel>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<TrackModel>>> trackRecommendationGet({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/track/recommendation';
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

    BuiltList<TrackModel>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(TrackModel)]),
      ) as BuiltList<TrackModel>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<TrackModel>>(
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
