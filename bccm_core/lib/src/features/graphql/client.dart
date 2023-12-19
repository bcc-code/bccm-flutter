import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

/// Override this in main() to provide a GraphQLClient.
final bccmGraphQLProvider = Provider<GraphQLClient>((ref) {
  throw UnimplementedError("bccmGraphQLProvider is not overriden. Please override it in main().");
});
