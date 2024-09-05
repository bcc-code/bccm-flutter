import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SearchApi
void main() {
  final instance = Openapi().getSearchApi();

  group(SearchApi, () {
    //Future<BuiltList<IAlbumContributorPodcastPlaylistOrTrack>> searchTermGet(String term, { BuiltList<ResourceType> resourceType, PublishedFilter publishedFilter, int size, int from }) async
    test('test searchTermGet', () async {
      // TODO
    });

    //Future<SearchResults> searchV2TermGet(String term, { SearchFilter filter, PublishedFilter publishedFilter, int size, int from }) async
    test('test searchV2TermGet', () async {
      // TODO
    });

    //Future<BuiltList<IAlbumContributorPodcastPlaylistOrTrack>> textsearchTermGet(String term, { BuiltList<ResourceType> resourceType, PublishedFilter publishedFilter, int size, int from }) async
    test('test textsearchTermGet', () async {
      // TODO
    });

    //Future<SearchResults> textsearchV2TermGet(String term, { SearchFilter filter, PublishedFilter publishedFilter, int size, int from }) async
    test('test textsearchV2TermGet', () async {
      // TODO
    });

  });
}
