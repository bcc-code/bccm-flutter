import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DiscoverApi
void main() {
  final instance = Openapi().getDiscoverApi();

  group(DiscoverApi, () {
    //Future<BuiltList<IAllDocumentModels>> discoverGet({ LanguageEnum lang, int age, String theme }) async
    test('test discoverGet', () async {
      // TODO
    });

  });
}
