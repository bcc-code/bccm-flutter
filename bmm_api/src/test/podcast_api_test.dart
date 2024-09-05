import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PodcastApi
void main() {
  final instance = Openapi().getPodcastApi();

  group(PodcastApi, () {
    //Future<BuiltList<PodcastModel>> podcastGet() async
    test('test podcastGet', () async {
      // TODO
    });

    //Future podcastIdCoverGet(int id) async
    test('test podcastIdCoverGet', () async {
      // TODO
    });

    //Future<PodcastModel> podcastIdGet(int id) async
    test('test podcastIdGet', () async {
      // TODO
    });

    //Future<TrackModel> podcastIdRandomGet(int id) async
    test('test podcastIdRandomGet', () async {
      // TODO
    });

    //Future<BuiltList<TrackModel>> podcastIdShuffleGet(int id, { int size }) async
    test('test podcastIdShuffleGet', () async {
      // TODO
    });

    //Future<BuiltList<TrackModel>> podcastIdTrackGet(int id, { PublishedFilter unpublished, int size, int from }) async
    test('test podcastIdTrackGet', () async {
      // TODO
    });

  });
}
