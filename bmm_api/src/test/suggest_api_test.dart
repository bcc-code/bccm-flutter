import 'package:test/test.dart';
import 'package:bmm_api/bmm_api.dart';


/// tests for SuggestApi
void main() {
  final instance = BmmApi().getSuggestApi();

  group(SuggestApi, () {
    //Future<BuiltList<String>> suggestTermGet(String term) async
    test('test suggestTermGet', () async {
      // TODO
    });

  });
}
