import 'package:test/test.dart';
import 'package:bmm_api/bmm_api.dart';


/// tests for LyricsApi
void main() {
  final instance = BmmApi().getLyricsApi();

  group(LyricsApi, () {
    //Future<BuiltList<Lyrics>> lyricsGet() async
    test('test lyricsGet', () async {
      // TODO
    });

    //Future lyricsIdDelete(int id) async
    test('test lyricsIdDelete', () async {
      // TODO
    });

    //Future<Lyrics> lyricsIdGet(int id) async
    test('test lyricsIdGet', () async {
      // TODO
    });

    //Future lyricsIdPut(int id, { Lyrics lyrics }) async
    test('test lyricsIdPut', () async {
      // TODO
    });

    //Future<int> lyricsPost({ Lyrics lyrics }) async
    test('test lyricsPost', () async {
      // TODO
    });

    //Future<BuiltList<Lyrics>> lyricsSearchTermGet(String term, { int size }) async
    test('test lyricsSearchTermGet', () async {
      // TODO
    });

  });
}
