import 'package:test/test.dart';
import 'package:bmm_api/bmm_api.dart';


/// tests for TranscriptionApi
void main() {
  final instance = BmmApi().getTranscriptionApi();

  group(TranscriptionApi, () {
    //Future<BuiltList<TranscriptionSegment>> transcriptionTrackIdLanguageFirstLastGet(int trackId, LanguageEnum language, int first, int last) async
    test('test transcriptionTrackIdLanguageFirstLastGet', () async {
      // TODO
    });

    //Future transcriptionTrackIdLanguagePost(int trackId, LanguageEnum language, BuiltList<StoreTranscriptionEditSuggestionsSuggestion> storeTranscriptionEditSuggestionsSuggestion) async
    test('test transcriptionTrackIdLanguagePost', () async {
      // TODO
    });

  });
}
