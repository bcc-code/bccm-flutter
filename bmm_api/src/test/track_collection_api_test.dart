import 'package:test/test.dart';
import 'package:bmm_api/bmm_api.dart';


/// tests for TrackCollectionApi
void main() {
  final instance = BmmApi().getTrackCollectionApi();

  group(TrackCollectionApi, () {
    // Get a list of track collections for the current user.
    //
    //Future<BuiltList<TrackCollectionDetails>> trackCollectionGet() async
    test('test trackCollectionGet', () async {
      // TODO
    });

    //Future trackCollectionIdAlbumAlbumIdPost(int id, int albumId) async
    test('test trackCollectionIdAlbumAlbumIdPost', () async {
      // TODO
    });

    //Future trackCollectionIdDelete(int id) async
    test('test trackCollectionIdDelete', () async {
      // TODO
    });

    // Get a single track collection. All hidden or deleted tracks will not show up in this list if the user added them once.
    //
    //Future<GetTrackCollectionModel> trackCollectionIdGet(int id) async
    test('test trackCollectionIdGet', () async {
      // TODO
    });

    //Future trackCollectionIdPlaylistPlaylistIdPost(int id, int playlistId) async
    test('test trackCollectionIdPlaylistPlaylistIdPost', () async {
      // TODO
    });

    // Add tracks to existing track collection without changing anything else
    //
    //Future trackCollectionIdPost(int id, { BuiltList<String> link }) async
    test('test trackCollectionIdPost', () async {
      // TODO
    });

    // Edit an existing track collection
    //
    //Future trackCollectionIdPut(int id, { UpdateTrackCollectionCommand updateTrackCollectionCommand }) async
    test('test trackCollectionIdPut', () async {
      // TODO
    });

    // Resets the sharing link and removes all followers of the track collection
    //
    //Future trackCollectionIdResetSharePost(int id) async
    test('test trackCollectionIdResetSharePost', () async {
      // TODO
    });

    //Future trackCollectionIdTrackCollectionPlaylistIdPost(int id, int playlistId) async
    test('test trackCollectionIdTrackCollectionPlaylistIdPost', () async {
      // TODO
    });

    // Unfollows a track collection
    //
    //Future trackCollectionIdUnfollowPost(int id) async
    test('test trackCollectionIdUnfollowPost', () async {
      // TODO
    });

    //Future trackCollectionLikePost({ BuiltList<String> link }) async
    test('test trackCollectionLikePost', () async {
      // TODO
    });

    // Create a track collection
    //
    //Future<int> trackCollectionPost({ CreateTrackCollectionCommand createTrackCollectionCommand }) async
    test('test trackCollectionPost', () async {
      // TODO
    });

    //Future<GetTopSongsCollectionModel> trackCollectionTopSongsGet() async
    test('test trackCollectionTopSongsGet', () async {
      // TODO
    });

    //Future<int> trackCollectionTopSongsPost() async
    test('test trackCollectionTopSongsPost', () async {
      // TODO
    });

    //Future trackCollectionUnlikePost({ BuiltList<String> link }) async
    test('test trackCollectionUnlikePost', () async {
      // TODO
    });

  });
}
