import 'package:bccm_core/src/features/graphql/queries/page.graphql.dart';
import 'package:bccm_core/src/utils/primitive_extensions.dart';
import 'package:flutter/widgets.dart';

/// Updates the progress of an item in a page.
///
/// A slow operation because it converts the page to json and iterates over everything.
///
/// The reason for this approach is that the graphql codegen classes aren't optimally structured to replace deep properties like this.
/// The "copyWith" methods are based on extension methods instead of being part of the classes themselves,
/// which makes it hard to replace deep properties without casting to every section subtype.
Query$Page$page updateProgressForItemsInPage(Query$Page$page page, String id, int newProgress) {
  final json = page.toJson();
  final sections = json['sections']['items'] as List<dynamic>;

  for (var section in sections) {
    if (section['items'] != null && section['items']['items'] != null) {
      _updateProgressInSectionItems(section['items']['items'], id, newProgress);
    }
  }
  return Query$Page$page.fromJson(json);
}

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
