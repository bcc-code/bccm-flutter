import 'package:test/test.dart';
import 'package:bmm_api/bmm_api.dart';


/// tests for LinkMetadataApi
void main() {
  final instance = BmmApi().getLinkMetadataApi();

  group(LinkMetadataApi, () {
    //Future<MetadataModel> linkMetadataTrackIdGet(int id) async
    test('test linkMetadataTrackIdGet', () async {
      // TODO
    });

    //Future<MetadataModel> linkMetadataTrackIdLanguageGet(int id, LanguageEnum language) async
    test('test linkMetadataTrackIdLanguageGet', () async {
      // TODO
    });

  });
}
