import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for TopbarSearchApi
void main() {
  final instance = Openapi().getTopbarSearchApi();

  group(TopbarSearchApi, () {
    //Future<BuiltList<TopbarSearchQueryTopbarSearchResult>> topbarsearchTermGet(String term, { int size }) async
    test('test topbarsearchTermGet', () async {
      // TODO
    });

  });
}
