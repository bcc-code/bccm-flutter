import 'package:test/test.dart';
import 'package:bmm_api/bmm_api.dart';


/// tests for CurrentUserApi
void main() {
  final instance = BmmApi().getCurrentUserApi();

  group(CurrentUserApi, () {
    //Future<UserModel> currentUserGet() async
    test('test currentUserGet', () async {
      // TODO
    });

  });
}
