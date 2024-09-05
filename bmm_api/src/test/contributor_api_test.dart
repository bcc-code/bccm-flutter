import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ContributorApi
void main() {
  final instance = Openapi().getContributorApi();

  group(ContributorApi, () {
    //Future<BuiltList<ContributorModel>> contributorGet() async
    test('test contributorGet', () async {
      // TODO
    });

    //Future contributorIdCoverGet(int id) async
    test('test contributorIdCoverGet', () async {
      // TODO
    });

    //Future<ContributorModel> contributorIdGet(int id, { PublishedFilter unpublished }) async
    test('test contributorIdGet', () async {
      // TODO
    });

    //Future<BuiltList<TrackModel>> contributorIdRandomGet(int id, { int size }) async
    test('test contributorIdRandomGet', () async {
      // TODO
    });

    //Future<BuiltList<TrackModel>> contributorIdTrackGet(int id, { PublishedFilter unpublished, int from, int size }) async
    test('test contributorIdTrackGet', () async {
      // TODO
    });

    //Future<BuiltList<ContributorModel>> contributorSearchTermGet(String term, { int size }) async
    test('test contributorSearchTermGet', () async {
      // TODO
    });

    //Future<BuiltList<ContributorModel>> contributorSuggesterCompletionTermGet(String term, { int size }) async
    test('test contributorSuggesterCompletionTermGet', () async {
      // TODO
    });

  });
}
