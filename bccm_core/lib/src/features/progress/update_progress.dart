import 'package:bccm_core/src/features/graphql/queries/page.graphql.dart';
import 'package:bccm_core/src/utils/primitive_extensions.dart';
import 'package:flutter/widgets.dart';

// same for sections
Fragment$Section updateProgressForItemsInSection(Fragment$Section section, String id, int? newProgress) {
  if (section is! Fragment$ItemSection) {
    return section;
  }
  final json = section.toJson();
  final items = json['items']['items'] as List<dynamic>;

  _updateProgressInSectionItems(items, id, newProgress);
  return Fragment$Section.fromJson(json);
}

/// Replaces the progress of the target item in a section.
///
/// Expects [items] to be a list of items in a section.
void _updateProgressInSectionItems(List<dynamic> items, String id, int? newProgress) {
  for (var item in items) {
    final itemId = item['item']['id'];
    final itemHasProgress = (item['item'] as Object?)?.asOrNull<Map<String, dynamic>>()?.containsKey('progress') == true;
    if (itemId == id && itemHasProgress) {
      debugPrint('Updating progress for item $itemId, new progress: $newProgress');
      item['item']['progress'] = newProgress;
    }
  }
}
