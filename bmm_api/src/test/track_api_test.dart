import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for TrackApi
void main() {
  final instance = Openapi().getTrackApi();

  group(TrackApi, () {
    //Future<BuiltList<TrackModel>> trackGet({ int size, int from, BuiltList<TrackSubtype> contentType, PublishedFilter publishedFilter, BuiltList<String> tags, BuiltList<String> excludeTags, LanguageEnum language, String policy, BuiltList<TrackSubtype> contentType2, BuiltList<String> tags2, BuiltList<String> excludeTags2 }) async
    test('test trackGet', () async {
      // TODO
    });

    //Future<TrackModel> trackIdGet(int id, { PublishedFilter unpublished }) async
    test('test trackIdGet', () async {
      // TODO
    });

    //Future<BuiltList<TrackTranslationTranscriptionSegment>> trackIdTranscriptionGet(int id, { PublishedFilter unpublished }) async
    test('test trackIdTranscriptionGet', () async {
      // TODO
    });

    //Future<BuiltList<TrackTranslationTranscriptionSegment>> trackIdTranscriptionLanguageGet(int id, LanguageEnum language, { PublishedFilter unpublished }) async
    test('test trackIdTranscriptionLanguageGet', () async {
      // TODO
    });

    //Future<BuiltList<TrackModel>> trackRecommendationGet() async
    test('test trackRecommendationGet', () async {
      // TODO
    });

  });
}
