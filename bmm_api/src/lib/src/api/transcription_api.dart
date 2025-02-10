//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:bmm_api/src/api_util.dart';
import 'package:bmm_api/src/model/language_enum.dart';
import 'package:bmm_api/src/model/store_transcription_edit_suggestions_suggestion.dart';
import 'package:bmm_api/src/model/transcription_segment.dart';
import 'package:built_collection/built_collection.dart';

class TranscriptionApi {

  final Dio _dio;

  final Serializers _serializers;

  const TranscriptionApi(this._dio, this._serializers);

  /// transcriptionTrackIdLanguageFirstLastGet
  /// 
  ///
  /// Parameters:
  /// * [trackId] 
  /// * [language] 
  /// * [first] 
  /// * [last] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<TranscriptionSegment>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<TranscriptionSegment>>> transcriptionTrackIdLanguageFirstLastGet({ 
    required int trackId,
    required LanguageEnum language,
    required int first,
    required int last,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/transcription/{trackId}/{language}/{first}/{last}'.replaceAll('{' r'trackId' '}', encodeQueryParameter(_serializers, trackId, const FullType(int)).toString()).replaceAll('{' r'language' '}', encodeQueryParameter(_serializers, language, const FullType(LanguageEnum)).toString()).replaceAll('{' r'first' '}', encodeQueryParameter(_serializers, first, const FullType(int)).toString()).replaceAll('{' r'last' '}', encodeQueryParameter(_serializers, last, const FullType(int)).toString());
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

    BuiltList<TranscriptionSegment>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(TranscriptionSegment)]),
      ) as BuiltList<TranscriptionSegment>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<TranscriptionSegment>>(
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

  /// transcriptionTrackIdLanguagePost
  /// 
  ///
  /// Parameters:
  /// * [trackId] 
  /// * [language] 
  /// * [storeTranscriptionEditSuggestionsSuggestion] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> transcriptionTrackIdLanguagePost({ 
    required int trackId,
    required LanguageEnum language,
    required BuiltList<StoreTranscriptionEditSuggestionsSuggestion> storeTranscriptionEditSuggestionsSuggestion,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/transcription/{trackId}/{language}'.replaceAll('{' r'trackId' '}', encodeQueryParameter(_serializers, trackId, const FullType(int)).toString()).replaceAll('{' r'language' '}', encodeQueryParameter(_serializers, language, const FullType(LanguageEnum)).toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(BuiltList, [FullType(StoreTranscriptionEditSuggestionsSuggestion)]);
      _bodyData = _serializers.serialize(storeTranscriptionEditSuggestionsSuggestion, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

}
