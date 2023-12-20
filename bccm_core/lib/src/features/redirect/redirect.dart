import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

import 'package:bccm_core/platform.dart';

Future<Uri?> getBccmRedirectUri({required String code, required GraphQLClient gqlClient}) async {
  debugPrint('Redirect code: $code');
  if (code.isEmpty) {
    return null;
  }
  final result = await gqlClient.query$GetRedirectUrl(
    Options$Query$GetRedirectUrl(
      variables: Variables$Query$GetRedirectUrl(
        id: code,
      ),
    ),
  );
  var urlString = result.parsedData?.redirect.url;
  if (urlString == null) return null;
  final uri = Uri.tryParse(urlString);
  if (uri == null) return null;
  return uri;
}
