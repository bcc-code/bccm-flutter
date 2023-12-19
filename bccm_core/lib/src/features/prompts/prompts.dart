import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bccm_core/platform.dart';

final promptsProvider = StreamProvider<List<Fragment$Prompt>>((ref) async* {
  yield await ref.read(bccmGraphQLProvider).query$getPrompts().then((result) {
    if (result.hasException) {
      throw result.exception!;
    }
    if (result.parsedData == null) {
      throw ErrorDescription('Survey data is null.');
    }
    return result.parsedData!.prompts;
  });
});
