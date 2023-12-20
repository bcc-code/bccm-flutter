import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

/// Override this in main() to provide a GraphQLClient.
final bccmGraphQLProvider = Provider<GraphQLClient>((ref) {
  throw UnimplementedError("bccmGraphQLProvider is not overriden. Please override it in main().");
});

class BccmGraphqlHeaders {
  BccmGraphqlHeaders({
    required this.acceptLanguage,
    required this.application,
    required this.applicationVersion,
    required this.featureFlags,
    required this.extraUsergroups,
  });

  final List<String> acceptLanguage;
  final String application;
  final String applicationVersion;
  final String featureFlags;
  final List<String> extraUsergroups;

  Map<String, String> toMap() {
    return {
      'Accept-Language': acceptLanguage.join(','),
      'X-Application': application,
      'X-Application-Version': applicationVersion,
      'X-Feature-Flags': featureFlags,
      if (extraUsergroups.isNotEmpty) 'x-explicit-roles': extraUsergroups.join(','),
    };
  }
}
