import 'dart:convert';
import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:universal_io/io.dart';

void main() {
  test('Update episode progress in sections', () async {
    final json = await loadJson('test_data/section.json');
    const targetId = '6410';
    const targetProgress = 10;
    final stopwatch = Stopwatch()..start();
    final section = updateProgressForItemsInSection(Fragment$Section.fromJson(json), targetId, targetProgress);
    debugPrint('Update progress for section took: ${stopwatch.elapsedMilliseconds}ms');

    final itemSection = section as Fragment$ItemSection;
    // updateProgressForItemsInSection matches on the *episode* id, not the
    // wrapping section-item id, so assert against the same thing it keys on.
    var sawTarget = false;
    for (final item in itemSection.items.items) {
      final episode = item.item.asOrNull<Fragment$ItemSectionItem$item$$Episode>();
      if (episode?.id == targetId) {
        sawTarget = true;
        expect(episode?.progress, targetProgress);
      } else {
        expect(episode?.progress, isNot(targetProgress));
      }
    }
    expect(sawTarget, isTrue, reason: 'fixture must contain the target episode for this test to mean anything');
  });
}

Future<Map<String, dynamic>> loadJson(String path) async {
  final file = File(path);
  final json = jsonDecode(await file.readAsString());
  return json;
}
