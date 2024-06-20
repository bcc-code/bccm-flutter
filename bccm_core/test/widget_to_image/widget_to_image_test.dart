// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:typed_data';
import 'package:bccm_core/src/utils/widget_to_image/widget_to_image.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import '../utils/fonts.dart';

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

      // Path to the golden file
      const goldenFilePath = 'test_data/golden_files/widget_to_image.png';
      final goldenFile = File(goldenFilePath);

      // Check if the golden file exists, if not create it
      if (!goldenFile.existsSync()) {
        print('Golden file does not exist. Creating one at $goldenFilePath');
        await goldenFile.create(recursive: true);
        await goldenFile.writeAsBytes(imageBytes!);
        print('Golden image generated at $goldenFilePath. Please re-run the test.');
        return;
      }

      // Save the generated image to a file (for debugging purposes)
      final generatedImageFile = File('test_data/golden_files/widget_to_image_generated.png');
      await generatedImageFile.writeAsBytes(imageBytes!);

      // Compare the generated image with the golden file
      expect(await generatedImageFile.readAsBytes(), await goldenFile.readAsBytes());
      generatedImageFile.deleteSync();
    });
  });
}
