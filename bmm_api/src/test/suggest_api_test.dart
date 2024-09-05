import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SuggestApi
void main() {
  final instance = Openapi().getSuggestApi();

  group(SuggestApi, () {
    //Future<BuiltList<String>> suggestTermGet(String term) async
    test('test suggestTermGet', () async {
      // TODO
    });

  });
}
