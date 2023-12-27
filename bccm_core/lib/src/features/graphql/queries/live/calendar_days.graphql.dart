import '../calendar.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetCalendarDay {
  factory Variables$Query$GetCalendarDay({required String date}) =>
      Variables$Query$GetCalendarDay._({
        r'date': date,
      });

  Variables$Query$GetCalendarDay._(this._$data);

  factory Variables$Query$GetCalendarDay.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$date = data['date'];
    result$data['date'] = (l$date as String);
    return Variables$Query$GetCalendarDay._(result$data);
  }

  Map<String, dynamic> _$data;

  String get date => (_$data['date'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$date = date;
    result$data['date'] = l$date;
    return result$data;
  }

  CopyWith$Variables$Query$GetCalendarDay<Variables$Query$GetCalendarDay>
      get copyWith => CopyWith$Variables$Query$GetCalendarDay(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetCalendarDay) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$date = date;
    return Object.hashAll([l$date]);
  }
}

abstract class CopyWith$Variables$Query$GetCalendarDay<TRes> {
  factory CopyWith$Variables$Query$GetCalendarDay(
    Variables$Query$GetCalendarDay instance,
    TRes Function(Variables$Query$GetCalendarDay) then,
  ) = _CopyWithImpl$Variables$Query$GetCalendarDay;

  factory CopyWith$Variables$Query$GetCalendarDay.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCalendarDay;

  TRes call({String? date});
}

class _CopyWithImpl$Variables$Query$GetCalendarDay<TRes>
    implements CopyWith$Variables$Query$GetCalendarDay<TRes> {
  _CopyWithImpl$Variables$Query$GetCalendarDay(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCalendarDay _instance;

  final TRes Function(Variables$Query$GetCalendarDay) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? date = _undefined}) =>
      _then(Variables$Query$GetCalendarDay._({
        ..._instance._$data,
        if (date != _undefined && date != null) 'date': (date as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetCalendarDay<TRes>
    implements CopyWith$Variables$Query$GetCalendarDay<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCalendarDay(this._res);

  TRes _res;

  call({String? date}) => _res;
}

class Query$GetCalendarDay {
  Query$GetCalendarDay({
    this.calendar,
    this.$__typename = 'QueryRoot',
  });

  factory Query$GetCalendarDay.fromJson(Map<String, dynamic> json) {
    final l$calendar = json['calendar'];
    final l$$__typename = json['__typename'];
    return Query$GetCalendarDay(
      calendar: l$calendar == null
          ? null
          : Query$GetCalendarDay$calendar.fromJson(
              (l$calendar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCalendarDay$calendar? calendar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$calendar = calendar;
    _resultData['calendar'] = l$calendar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$calendar = calendar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$calendar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCalendarDay) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$calendar = calendar;
    final lOther$calendar = other.calendar;
    if (l$calendar != lOther$calendar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCalendarDay on Query$GetCalendarDay {
  CopyWith$Query$GetCalendarDay<Query$GetCalendarDay> get copyWith =>
      CopyWith$Query$GetCalendarDay(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCalendarDay<TRes> {
  factory CopyWith$Query$GetCalendarDay(
    Query$GetCalendarDay instance,
    TRes Function(Query$GetCalendarDay) then,
  ) = _CopyWithImpl$Query$GetCalendarDay;

  factory CopyWith$Query$GetCalendarDay.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCalendarDay;

  TRes call({
    Query$GetCalendarDay$calendar? calendar,
    String? $__typename,
  });
  CopyWith$Query$GetCalendarDay$calendar<TRes> get calendar;
}

class _CopyWithImpl$Query$GetCalendarDay<TRes>
    implements CopyWith$Query$GetCalendarDay<TRes> {
  _CopyWithImpl$Query$GetCalendarDay(
    this._instance,
    this._then,
  );

  final Query$GetCalendarDay _instance;

  final TRes Function(Query$GetCalendarDay) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? calendar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCalendarDay(
        calendar: calendar == _undefined
            ? _instance.calendar
            : (calendar as Query$GetCalendarDay$calendar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetCalendarDay$calendar<TRes> get calendar {
    final local$calendar = _instance.calendar;
    return local$calendar == null
        ? CopyWith$Query$GetCalendarDay$calendar.stub(_then(_instance))
        : CopyWith$Query$GetCalendarDay$calendar(
            local$calendar, (e) => call(calendar: e));
  }
}

class _CopyWithStubImpl$Query$GetCalendarDay<TRes>
    implements CopyWith$Query$GetCalendarDay<TRes> {
  _CopyWithStubImpl$Query$GetCalendarDay(this._res);

  TRes _res;

  call({
    Query$GetCalendarDay$calendar? calendar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetCalendarDay$calendar<TRes> get calendar =>
      CopyWith$Query$GetCalendarDay$calendar.stub(_res);
}

const documentNodeQueryGetCalendarDay = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCalendarDay'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'date')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'calendar'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'day'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'day'),
                value: VariableNode(name: NameNode(value: 'date')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'CalendarDay'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionCalendarDay,
]);
Query$GetCalendarDay _parserFn$Query$GetCalendarDay(
        Map<String, dynamic> data) =>
    Query$GetCalendarDay.fromJson(data);
typedef OnQueryComplete$Query$GetCalendarDay = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetCalendarDay?,
);

class Options$Query$GetCalendarDay
    extends graphql.QueryOptions<Query$GetCalendarDay> {
  Options$Query$GetCalendarDay({
    String? operationName,
    required Variables$Query$GetCalendarDay variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCalendarDay? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetCalendarDay? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetCalendarDay(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetCalendarDay,
          parserFn: _parserFn$Query$GetCalendarDay,
        );

  final OnQueryComplete$Query$GetCalendarDay? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetCalendarDay
    extends graphql.WatchQueryOptions<Query$GetCalendarDay> {
  WatchOptions$Query$GetCalendarDay({
    String? operationName,
    required Variables$Query$GetCalendarDay variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCalendarDay? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetCalendarDay,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetCalendarDay,
        );
}

class FetchMoreOptions$Query$GetCalendarDay extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCalendarDay({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetCalendarDay variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetCalendarDay,
        );
}

extension ClientExtension$Query$GetCalendarDay on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCalendarDay>> query$GetCalendarDay(
          Options$Query$GetCalendarDay options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetCalendarDay> watchQuery$GetCalendarDay(
          WatchOptions$Query$GetCalendarDay options) =>
      this.watchQuery(options);
  void writeQuery$GetCalendarDay({
    required Query$GetCalendarDay data,
    required Variables$Query$GetCalendarDay variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetCalendarDay),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetCalendarDay? readQuery$GetCalendarDay({
    required Variables$Query$GetCalendarDay variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetCalendarDay),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetCalendarDay.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCalendarDay> useQuery$GetCalendarDay(
        Options$Query$GetCalendarDay options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetCalendarDay> useWatchQuery$GetCalendarDay(
        WatchOptions$Query$GetCalendarDay options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetCalendarDay$Widget
    extends graphql_flutter.Query<Query$GetCalendarDay> {
  Query$GetCalendarDay$Widget({
    widgets.Key? key,
    required Options$Query$GetCalendarDay options,
    required graphql_flutter.QueryBuilder<Query$GetCalendarDay> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetCalendarDay$calendar {
  Query$GetCalendarDay$calendar({
    required this.day,
    this.$__typename = 'Calendar',
  });

  factory Query$GetCalendarDay$calendar.fromJson(Map<String, dynamic> json) {
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Query$GetCalendarDay$calendar(
      day: Fragment$CalendarDay.fromJson((l$day as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CalendarDay day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$day = day;
    _resultData['day'] = l$day.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$day,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCalendarDay$calendar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCalendarDay$calendar
    on Query$GetCalendarDay$calendar {
  CopyWith$Query$GetCalendarDay$calendar<Query$GetCalendarDay$calendar>
      get copyWith => CopyWith$Query$GetCalendarDay$calendar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCalendarDay$calendar<TRes> {
  factory CopyWith$Query$GetCalendarDay$calendar(
    Query$GetCalendarDay$calendar instance,
    TRes Function(Query$GetCalendarDay$calendar) then,
  ) = _CopyWithImpl$Query$GetCalendarDay$calendar;

  factory CopyWith$Query$GetCalendarDay$calendar.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCalendarDay$calendar;

  TRes call({
    Fragment$CalendarDay? day,
    String? $__typename,
  });
  CopyWith$Fragment$CalendarDay<TRes> get day;
}

class _CopyWithImpl$Query$GetCalendarDay$calendar<TRes>
    implements CopyWith$Query$GetCalendarDay$calendar<TRes> {
  _CopyWithImpl$Query$GetCalendarDay$calendar(
    this._instance,
    this._then,
  );

  final Query$GetCalendarDay$calendar _instance;

  final TRes Function(Query$GetCalendarDay$calendar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCalendarDay$calendar(
        day: day == _undefined || day == null
            ? _instance.day
            : (day as Fragment$CalendarDay),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CalendarDay<TRes> get day {
    final local$day = _instance.day;
    return CopyWith$Fragment$CalendarDay(local$day, (e) => call(day: e));
  }
}

class _CopyWithStubImpl$Query$GetCalendarDay$calendar<TRes>
    implements CopyWith$Query$GetCalendarDay$calendar<TRes> {
  _CopyWithStubImpl$Query$GetCalendarDay$calendar(this._res);

  TRes _res;

  call({
    Fragment$CalendarDay? day,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CalendarDay<TRes> get day =>
      CopyWith$Fragment$CalendarDay.stub(_res);
}
