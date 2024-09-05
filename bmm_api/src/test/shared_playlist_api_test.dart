import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SharedPlaylistApi
void main() {
  final instance = Openapi().getSharedPlaylistApi();

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
