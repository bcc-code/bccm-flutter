import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for StatisticsApi
void main() {
  final instance = Openapi().getStatisticsApi();

  group(StatisticsApi, () {
    //Future statisticsAchievementDelete() async
    test('test statisticsAchievementDelete', () async {
      // TODO
    });

    //Future statisticsAchievementNameAcknowledgePut(String name) async
    test('test statisticsAchievementNameAcknowledgePut', () async {
      // TODO
    });

    //Future<DocumentListIAchievementCollectionOrChapterHeader> statisticsAchievementsGet({ LanguageEnum lang, String theme }) async
    test('test statisticsAchievementsGet', () async {
      // TODO
    });

    //Future<BuiltList<AchievementModel>> statisticsAchievementsToAcknowledgeGet({ LanguageEnum lang, String theme }) async
    test('test statisticsAchievementsToAcknowledgeGet', () async {
      // TODO
    });

    //Future statisticsListeningPost(BuiltList<ListeningEvent> listeningEvent) async
    test('test statisticsListeningPost', () async {
      // TODO
    });

    //Future<ProjectChurchStatisticsQueryChurchStatistics> statisticsProjectChurchGet() async
    test('test statisticsProjectChurchGet', () async {
      // TODO
    });

    //Future<ForbildePoints> statisticsProjectProgressGet({ LanguageEnum lang, String os, String theme }) async
    test('test statisticsProjectProgressGet', () async {
      // TODO
    });

    //Future<ProjectRulesQueryRules> statisticsProjectProjectIdRulesGet(int projectId, { LanguageEnum lang }) async
    test('test statisticsProjectProjectIdRulesGet', () async {
      // TODO
    });

    //Future<ProjectRulesQueryRules> statisticsProjectRulesGet({ LanguageEnum lang, int projectId }) async
    test('test statisticsProjectRulesGet', () async {
      // TODO
    });

    //Future statisticsStreakpointPost(BuiltList<StreakPoint> streakPoint) async
    test('test statisticsStreakpointPost', () async {
      // TODO
    });

    //Future statisticsTrackPlayedPost(BuiltList<CreateTrackPlayedEventsCommandEvent> createTrackPlayedEventsCommandEvent) async
    test('test statisticsTrackPlayedPost', () async {
      // TODO
    });

    //Future statisticsYearInReviewFkGet() async
    test('test statisticsYearInReviewFkGet', () async {
      // TODO
    });

    //Future statisticsYearInReviewHoursGet() async
    test('test statisticsYearInReviewHoursGet', () async {
      // TODO
    });

    //Future<BuiltList<GetYearInReviewOverviewSlide>> statisticsYearInReviewOverviewGet() async
    test('test statisticsYearInReviewOverviewGet', () async {
      // TODO
    });

    //Future statisticsYearInReviewSongsGet() async
    test('test statisticsYearInReviewSongsGet', () async {
      // TODO
    });

  });
}
