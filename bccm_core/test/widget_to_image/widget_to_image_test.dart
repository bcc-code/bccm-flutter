import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:bccm_core/src/utils/widget_to_image/widget_to_image.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:universal_io/io.dart';

import '../utils/fonts.dart';

const _goldenFilePath = 'test_data/golden_files/widget_to_image.png';

class _Decoded {
  _Decoded(this.width, this.height, this.rgba);
  final int width;
  final int height;
  final Uint8List rgba;
}

Future<_Decoded> _decode(Uint8List bytes) async {
  final codec = await ui.instantiateImageCodec(bytes);
  final frame = await codec.getNextFrame();
  final image = frame.image;
  final data = await image.toByteData(format: ui.ImageByteFormat.rawRgba);
  return _Decoded(image.width, image.height, data!.buffer.asUint8List());
}

/// Share of channel samples differing by more than [tolerance].
double _fractionDiffering(Uint8List a, Uint8List b, {int tolerance = 8}) {
  var differing = 0;
  for (var i = 0; i < a.length; i++) {
    if ((a[i] - b[i]).abs() > tolerance) differing++;
  }
  return differing / a.length;
}

void main() {
  testWidgets('createImageFromWidget should match golden file', (WidgetTester tester) async {
    await tester.runAsync(() async {
      await loadRoboto();
      // Pump the widget into the tester
      await tester.pumpWidget(Container());

      // Get the FlutterView from the context
      final context = tester.element(find.byType(Container));
      final view = View.of(context);

      // Widget to render
      final testWidget = MaterialApp(
        home: Scaffold(
          body: Builder(
            builder: (context) {
              return Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('createImageFromWidget'),
                ),
              );
            },
          ),
        ),
      );

      // Create an image from the widget
      final Uint8List? imageBytes = await createImageFromWidget(
        view: view,
        widget: testWidget,
        wait: const Duration(milliseconds: 100),
        imageSize: const Size(400, 300),
        logicalSize: const Size(400, 300),
      );

      expect(imageBytes, isNotNull);

      final goldenFile = File(_goldenFilePath);
      if (!goldenFile.existsSync()) {
        await goldenFile.create(recursive: true);
        await goldenFile.writeAsBytes(imageBytes!);
        fail('Golden file did not exist. Wrote one to $_goldenFilePath — re-run the test.');
      }

      // Compare decoded pixels, not encoded bytes: the PNG encoding shifts by a
      // few bytes across Flutter/Skia versions while every pixel stays the same,
      // which made this test fail for reasons unrelated to createImageFromWidget.
      // The tolerance absorbs antialiasing drift but still catches real changes.
      final actual = await _decode(imageBytes!);
      final expected = await _decode(await goldenFile.readAsBytes());

      expect(actual.width, expected.width, reason: 'rendered width changed');
      expect(actual.height, expected.height, reason: 'rendered height changed');
      expect(
        _fractionDiffering(actual.rgba, expected.rgba),
        lessThan(0.005),
        reason: 'rendered image differs from the golden by more than antialiasing noise. '
            'If this change is intended, delete $_goldenFilePath and re-run to regenerate it.',
      );
    });
  });
}
