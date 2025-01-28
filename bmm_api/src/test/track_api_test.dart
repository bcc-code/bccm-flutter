import 'package:test/test.dart';
import 'package:bmm_api/bmm_api.dart';


/// tests for TrackApi
void main() {
  final instance = BmmApi().getTrackApi();

  group(TrackApi, () {
    //Future<BuiltList<TrackModel>> trackGet({ int size, int from, BuiltList<TrackSubtype> contentType, PublishedFilter publishedFilter, BuiltList<String> tags, BuiltList<String> excludeTags, LanguageEnum language, bool hasTranscription, BuiltList<String> oneOfPolicies, BuiltList<TrackSubtype> contentType2, BuiltList<String> tags2, BuiltList<String> excludeTags2 }) async
    test('test trackGet', () async {
      // TODO
    });

    //Future<TrackModel> trackIdGet(int id, { PublishedFilter unpublished }) async
    test('test trackIdGet', () async {
      // TODO
    });

    //Future<BuiltList<TranscriptionSegment>> trackIdTranscriptionGet(int id, { PublishedFilter unpublished }) async
    test('test trackIdTranscriptionGet', () async {
      // TODO
    });

    //Future<BuiltList<TranscriptionSegment>> trackIdTranscriptionLanguageGet(int id, LanguageEnum language, { PublishedFilter unpublished }) async
    test('test trackIdTranscriptionLanguageGet', () async {
      // TODO
    });

    //Future trackIdTranscriptionLanguagePost(int id, LanguageEnum language, BuiltList<TranscriptionSegment> transcriptionSegment) async
    test('test trackIdTranscriptionLanguagePost', () async {
      // TODO
    });

    //Future<BuiltList<TrackModel>> trackRecommendationGet() async
    test('test trackRecommendationGet', () async {
      // TODO
    });

    //Future<BuiltList<TrackModel>> trackTranscribeGet() async
    test('test trackTranscribeGet', () async {
      // TODO
    });

  });
}
