import 'package:test/test.dart';
import 'package:bmm_api/bmm_api.dart';


/// tests for FacetsApi
void main() {
  final instance = BmmApi().getFacetsApi();

  group(FacetsApi, () {
    //Future<BuiltList<AlbumYearFacetsQueryResult>> controllerAlbumPublishedYearsGet(String controller, { PublishedFilter unpublished }) async
    test('test controllerAlbumPublishedYearsGet', () async {
      // TODO
    });

  });
}
