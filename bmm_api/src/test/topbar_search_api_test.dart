import 'package:test/test.dart';
import 'package:bmm_api/bmm_api.dart';


/// tests for TopbarSearchApi
void main() {
  final instance = BmmApi().getTopbarSearchApi();

  group(TopbarSearchApi, () {
    //Future<BuiltList<TopbarSearchQueryTopbarSearchResult>> topbarsearchTermGet(String term, { int size }) async
    test('test topbarsearchTermGet', () async {
      // TODO
    });

  });
}
