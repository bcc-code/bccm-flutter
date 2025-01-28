import 'package:test/test.dart';
import 'package:bmm_api/bmm_api.dart';


/// tests for SharedPlaylistApi
void main() {
  final instance = BmmApi().getSharedPlaylistApi();

  group(SharedPlaylistApi, () {
    //Future sharedPlaylistSharingSecretFollowPost(String sharingSecret) async
    test('test sharedPlaylistSharingSecretFollowPost', () async {
      // TODO
    });

    //Future<GetTrackCollectionModel> sharedPlaylistSharingSecretGet(String sharingSecret) async
    test('test sharedPlaylistSharingSecretGet', () async {
      // TODO
    });

  });
}
