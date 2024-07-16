import 'package:universal_io/io.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:share_plus/share_plus.dart';

Future<void> downloadAndShareImage(String url, {required Rect sharePositionOrigin}) async {
  var uri = Uri.tryParse(url);
  if (uri == null) {
    throw Exception('shareImageFromUrl: Failed to parse URI: $url');
  }
  final response = await get(uri);
  if (response.headers[HttpHeaders.contentTypeHeader]?.startsWith('image') != true) {
    throw Exception('shareImageFromUrl: Invalid mime type: ${response.headers[HttpHeaders.contentTypeHeader]}');
  }
  final file = XFile.fromData(response.bodyBytes, mimeType: response.headers[HttpHeaders.contentTypeHeader]);
  Share.shareXFiles([file], sharePositionOrigin: sharePositionOrigin);
}

Future<Response> downloadImage(String url) async {
  var uri = Uri.tryParse(url);
  if (uri == null) {
    throw Exception('shareImageFromUrl: Failed to parse URI: $url');
  }
  final response = await get(uri);
  if (response.headers[HttpHeaders.contentTypeHeader]?.startsWith('image') != true) {
    throw Exception('shareImageFromUrl: Invalid mime type: ${response.headers[HttpHeaders.contentTypeHeader]}');
  }
  return response;
}
