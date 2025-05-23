import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

/// Override this in main() to provide a GraphQLClient.
final bccmGraphQLProvider = Provider<GraphQLClient>((ref) {
  throw UnimplementedError("bccmGraphQLProvider is not overriden. Please override it in main().");
});

class BccmGraphqlHeaders {
  BccmGraphqlHeaders({
    required this.acceptLanguage,
    required this.acceptAudioLanguage,
    required this.acceptSubtitleLanguage,
    required this.application,
    required this.applicationVersion,
    required this.featureFlags,
    required this.extraUsergroups,
    required this.isTablet,
    required this.os,
    required this.osVersion,
    required this.onlyPreferredLanguagesContent,
  });

  final List<String> acceptLanguage;
  final List<String> acceptAudioLanguage;
  final List<String> acceptSubtitleLanguage;
  final String application;
  final String applicationVersion;
  final List<String>? featureFlags;
  final List<String> extraUsergroups;
  final bool isTablet;
  final String os;
  final String osVersion;
  final bool? onlyPreferredLanguagesContent;

  Map<String, String> toMap() {
    return {
      'Accept-Language': acceptLanguage.join(','),
      'X-Accept-Audio-Language': acceptAudioLanguage.join(','),
      'X-Accept-Subtitle-Language': acceptSubtitleLanguage.join(','),
      'X-Application': application,
      'X-Application-Version': applicationVersion,
      'X-Is-Tablet': isTablet ? 'true' : 'false',
      'X-OS': os,
      'X-OS-Version': osVersion,
      'X-Only-Preferred-Languages-Content': onlyPreferredLanguagesContent == true ? 'true' : 'false',
      if (featureFlags?.isNotEmpty == true) 'X-Feature-Flags': featureFlags!.join(','),
      if (extraUsergroups.isNotEmpty) 'x-explicit-roles': extraUsergroups.join(','),
    };
  }
}
