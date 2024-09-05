import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FileApi
void main() {
  final instance = Openapi().getFileApi();

  group(FileApi, () {
    //Future fileApkGet() async
    test('test fileApkGet', () async {
      // TODO
    });

    //Future fileProtectedTrackIdNameGet(int id, String name, { int lastChanged, bool download }) async
    test('test fileProtectedTrackIdNameGet', () async {
      // TODO
    });

    //Future fileProtectedTypeIdNameGet(String type, int id, String name, { int lastChanged }) async
    test('test fileProtectedTypeIdNameGet', () async {
      // TODO
    });

  });
}
