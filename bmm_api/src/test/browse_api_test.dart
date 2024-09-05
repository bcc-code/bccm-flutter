import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for BrowseApi
void main() {
  final instance = Openapi().getBrowseApi();

  group(BrowseApi, () {
    //Future<DocumentListIAlbumPlaylistOrChapterHeader> browseAudiobooksGet({ int skip, int take }) async
    test('test browseAudiobooksGet', () async {
      // TODO
    });

    //Future<DocumentListIAlbumOrChapterHeader> browseEventsGet({ int skip, int take }) async
    test('test browseEventsGet', () async {
      // TODO
    });

    //Future<BuiltList<IAlbumPodcastPlaylistOrSectionHeader>> browseGet() async
    test('test browseGet', () async {
      // TODO
    });

    //Future<DocumentListPodcastModel> browseMusicGet() async
    test('test browseMusicGet', () async {
      // TODO
    });

    //Future<DocumentListPodcastModel> browsePodcastsGet() async
    test('test browsePodcastsGet', () async {
      // TODO
    });

  });
}
