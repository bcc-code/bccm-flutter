import 'package:test/test.dart';
import 'package:bmm_api/bmm_api.dart';


/// tests for DiscoverApi
void main() {
  final instance = BmmApi().getDiscoverApi();

  group(DiscoverApi, () {
    //Future<BuiltList<IAllDocumentModels>> discoverGet({ LanguageEnum lang, int age, String theme }) async
    test('test discoverGet', () async {
      // TODO
    });

  });
}
