import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FacetsApi
void main() {
  final instance = Openapi().getFacetsApi();

  group(FacetsApi, () {
    //Future<BuiltList<AlbumYearFacetsQueryResult>> controllerAlbumPublishedYearsGet(String controller, { PublishedFilter unpublished }) async
    test('test controllerAlbumPublishedYearsGet', () async {
      // TODO
    });

  });
}
