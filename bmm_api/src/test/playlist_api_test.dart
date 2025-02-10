import 'package:test/test.dart';
import 'package:bmm_api/bmm_api.dart';


/// tests for PlaylistApi
void main() {
  final instance = BmmApi().getPlaylistApi();

  group(PlaylistApi, () {
    //Future<DocumentListIAllDocumentModels> playlistDocumentsGet({ LanguageEnum lang, int age }) async
    test('test playlistDocumentsGet', () async {
      // TODO
    });

    // List of playlists.  The apps use this endpoint to load single playlists as well (as optimization)
    //
    //Future<BuiltList<PlaylistModel>> playlistGet() async
    test('test playlistGet', () async {
      // TODO
    });

    //Future playlistIdCoverGet(int id) async
    test('test playlistIdCoverGet', () async {
      // TODO
    });

    //Future<PlaylistModel> playlistIdGet(int id) async
    test('test playlistIdGet', () async {
      // TODO
    });

    //Future<BuiltList<TrackModel>> playlistIdTrackGet(int id, { PublishedFilter unpublished }) async
    test('test playlistIdTrackGet', () async {
      // TODO
    });

  });
}
