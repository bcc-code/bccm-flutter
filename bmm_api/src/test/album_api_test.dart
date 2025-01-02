import 'package:test/test.dart';
import 'package:bmm_api/bmm_api.dart';


/// tests for AlbumApi
void main() {
  final instance = BmmApi().getAlbumApi();

  group(AlbumApi, () {
    //Future<BuiltList<AlbumModel>> albumGet({ PublishedFilter publishedFilter, String policy, int from, int size, BuiltList<TrackSubtype> contentType, BuiltList<String> tags, BuiltList<String> excludeTags, BuiltList<TrackSubtype> contentType2, BuiltList<String> tags2, BuiltList<String> excludeTags2 }) async
    test('test albumGet', () async {
      // TODO
    });

    //Future albumIdCoverGet(int id) async
    test('test albumIdCoverGet', () async {
      // TODO
    });

    //Future<AlbumModel> albumIdGet(int id, { PublishedFilter unpublished }) async
    test('test albumIdGet', () async {
      // TODO
    });

    //Future<BuiltList<AlbumModel>> albumPublishedYearGet(int year, { PublishedFilter unpublished }) async
    test('test albumPublishedYearGet', () async {
      // TODO
    });

  });
}
