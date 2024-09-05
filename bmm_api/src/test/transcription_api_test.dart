import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for TranscriptionApi
void main() {
  final instance = Openapi().getTranscriptionApi();

  group(TranscriptionApi, () {
    //Future<BuiltList<TrackTranslationTranscriptionSegment>> transcriptionTrackIdLanguageFirstLastGet(int trackId, LanguageEnum language, int first, int last) async
    test('test transcriptionTrackIdLanguageFirstLastGet', () async {
      // TODO
    });

    //Future transcriptionTrackIdLanguagePost(int trackId, LanguageEnum language, BuiltList<StoreTranscriptionEditSuggestionsSuggestion> storeTranscriptionEditSuggestionsSuggestion) async
    test('test transcriptionTrackIdLanguagePost', () async {
      // TODO
    });

  });
}
