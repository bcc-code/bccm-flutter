import 'package:test/test.dart';
import 'package:bmm_api/bmm_api.dart';


/// tests for QuestionApi
void main() {
  final instance = BmmApi().getQuestionApi();

  group(QuestionApi, () {
    //Future<QuestionModel> questionIdGet(int id) async
    test('test questionIdGet', () async {
      // TODO
    });

    //Future questionIdPost(int id, { StoreQuestionResponseCommand storeQuestionResponseCommand }) async
    test('test questionIdPost', () async {
      // TODO
    });

  });
}
