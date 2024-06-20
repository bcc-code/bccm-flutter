import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> loadRoboto() async {
  final fontLoader = FontLoader('Roboto');
  final fontData = File('test_data/fonts/Roboto-Regular.ttf').readAsBytes().then((bytes) => ByteData.view(Uint8List.fromList(bytes).buffer));
  fontLoader.addFont(fontData);
  await fontLoader.load();
}
