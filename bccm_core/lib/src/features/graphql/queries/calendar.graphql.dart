import 'dart:async';
import 'live/calendar_days.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$CalendarPeriod {
  factory Variables$Query$CalendarPeriod({
    required String from,
    required String to,
  }) =>
      Variables$Query$CalendarPeriod._({
        r'from': from,
        r'to': to,
      });

  Variables$Query$CalendarPeriod._(this._$data);

  factory Variables$Query$CalendarPeriod.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$from = data['from'];
    result$data['from'] = (l$from as String);
    final l$to = data['to'];
    result$data['to'] = (l$to as String);
    return Variables$Query$CalendarPeriod._(result$data);
  }

  Map<String, dynamic> _$data;

  String get from => (_$data['from'] as String);

  String get to => (_$data['to'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$from = from;
    result$data['from'] = l$from;
    final l$to = to;
    result$data['to'] = l$to;
    return result$data;
  }

  CopyWith$Variables$Query$CalendarPeriod<Variables$Query$CalendarPeriod>
      get copyWith => CopyWith$Variables$Query$CalendarPeriod(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$CalendarPeriod) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$from = from;
    final lOther$from = other.from;
    if (l$from != lOther$from) {
      return false;
    }
    final l$to = to;
    final lOther$to = other.to;
    if (l$to != lOther$to) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$from = from;
    final l$to = to;
    return Object.hashAll([
      l$from,
      l$to,
    ]);
  }
}

abstract class CopyWith$Variables$Query$CalendarPeriod<TRes> {
  factory CopyWith$Variables$Query$CalendarPeriod(
    Variables$Query$CalendarPeriod instance,
    TRes Function(Variables$Query$CalendarPeriod) then,
  ) = _CopyWithImpl$Variables$Query$CalendarPeriod;

  factory CopyWith$Variables$Query$CalendarPeriod.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CalendarPeriod;

  TRes call({
    String? from,
    String? to,
  });
}

class _CopyWithImpl$Variables$Query$CalendarPeriod<TRes>
    implements CopyWith$Variables$Query$CalendarPeriod<TRes> {
  _CopyWithImpl$Variables$Query$CalendarPeriod(
    this._instance,
    this._then,
  );

  final Variables$Query$CalendarPeriod _instance;

  final TRes Function(Variables$Query$CalendarPeriod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? from = _undefined,
    Object? to = _undefined,
  }) =>
      _then(Variables$Query$CalendarPeriod._({
        ..._instance._$data,
        if (from != _undefined && from != null) 'from': (from as String),
        if (to != _undefined && to != null) 'to': (to as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$CalendarPeriod<TRes>
    implements CopyWith$Variables$Query$CalendarPeriod<TRes> {
  _CopyWithStubImpl$Variables$Query$CalendarPeriod(this._res);

  TRes _res;

  call({
    String? from,
    String? to,
  }) =>
      _res;
}

class Query$CalendarPeriod {
  Query$CalendarPeriod({
    this.calendar,
    this.$__typename = 'QueryRoot',
  });

  factory Query$CalendarPeriod.fromJson(Map<String, dynamic> json) {
    final l$calendar = json['calendar'];
    final l$$__typename = json['__typename'];
    return Query$CalendarPeriod(
      calendar: l$calendar == null
          ? null
          : Query$CalendarPeriod$calendar.fromJson(
              (l$calendar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CalendarPeriod$calendar? calendar;

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
    if (!(other is Query$CalendarPeriod) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$CalendarPeriod on Query$CalendarPeriod {
  CopyWith$Query$CalendarPeriod<Query$CalendarPeriod> get copyWith =>
      CopyWith$Query$CalendarPeriod(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CalendarPeriod<TRes> {
  factory CopyWith$Query$CalendarPeriod(
    Query$CalendarPeriod instance,
    TRes Function(Query$CalendarPeriod) then,
  ) = _CopyWithImpl$Query$CalendarPeriod;

  factory CopyWith$Query$CalendarPeriod.stub(TRes res) =
      _CopyWithStubImpl$Query$CalendarPeriod;

  TRes call({
    Query$CalendarPeriod$calendar? calendar,
    String? $__typename,
  });
  CopyWith$Query$CalendarPeriod$calendar<TRes> get calendar;
}

class _CopyWithImpl$Query$CalendarPeriod<TRes>
    implements CopyWith$Query$CalendarPeriod<TRes> {
  _CopyWithImpl$Query$CalendarPeriod(
    this._instance,
    this._then,
  );

  final Query$CalendarPeriod _instance;

  final TRes Function(Query$CalendarPeriod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? calendar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CalendarPeriod(
        calendar: calendar == _undefined
            ? _instance.calendar
            : (calendar as Query$CalendarPeriod$calendar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CalendarPeriod$calendar<TRes> get calendar {
    final local$calendar = _instance.calendar;
    return local$calendar == null
        ? CopyWith$Query$CalendarPeriod$calendar.stub(_then(_instance))
        : CopyWith$Query$CalendarPeriod$calendar(
            local$calendar, (e) => call(calendar: e));
  }
}

class _CopyWithStubImpl$Query$CalendarPeriod<TRes>
    implements CopyWith$Query$CalendarPeriod<TRes> {
  _CopyWithStubImpl$Query$CalendarPeriod(this._res);

  TRes _res;

  call({
    Query$CalendarPeriod$calendar? calendar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CalendarPeriod$calendar<TRes> get calendar =>
      CopyWith$Query$CalendarPeriod$calendar.stub(_res);
}

const documentNodeQueryCalendarPeriod = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CalendarPeriod'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'from')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'to')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
            name: NameNode(value: 'period'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'from'),
                value: VariableNode(name: NameNode(value: 'from')),
              ),
              ArgumentNode(
                name: NameNode(value: 'to'),
                value: VariableNode(name: NameNode(value: 'to')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'activeDays'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'events'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'start'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'end'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$CalendarPeriod _parserFn$Query$CalendarPeriod(
        Map<String, dynamic> data) =>
    Query$CalendarPeriod.fromJson(data);
typedef OnQueryComplete$Query$CalendarPeriod = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$CalendarPeriod?,
);

class Options$Query$CalendarPeriod
    extends graphql.QueryOptions<Query$CalendarPeriod> {
  Options$Query$CalendarPeriod({
    String? operationName,
    required Variables$Query$CalendarPeriod variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CalendarPeriod? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CalendarPeriod? onComplete,
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
                    data == null ? null : _parserFn$Query$CalendarPeriod(data),
                  ),
          onError: onError,
          document: documentNodeQueryCalendarPeriod,
          parserFn: _parserFn$Query$CalendarPeriod,
        );

  final OnQueryComplete$Query$CalendarPeriod? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$CalendarPeriod
    extends graphql.WatchQueryOptions<Query$CalendarPeriod> {
  WatchOptions$Query$CalendarPeriod({
    String? operationName,
    required Variables$Query$CalendarPeriod variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CalendarPeriod? typedOptimisticResult,
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
          document: documentNodeQueryCalendarPeriod,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$CalendarPeriod,
        );
}

class FetchMoreOptions$Query$CalendarPeriod extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CalendarPeriod({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$CalendarPeriod variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryCalendarPeriod,
        );
}

extension ClientExtension$Query$CalendarPeriod on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CalendarPeriod>> query$CalendarPeriod(
          Options$Query$CalendarPeriod options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$CalendarPeriod> watchQuery$CalendarPeriod(
          WatchOptions$Query$CalendarPeriod options) =>
      this.watchQuery(options);
  void writeQuery$CalendarPeriod({
    required Query$CalendarPeriod data,
    required Variables$Query$CalendarPeriod variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryCalendarPeriod),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$CalendarPeriod? readQuery$CalendarPeriod({
    required Variables$Query$CalendarPeriod variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryCalendarPeriod),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CalendarPeriod.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CalendarPeriod> useQuery$CalendarPeriod(
        Options$Query$CalendarPeriod options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$CalendarPeriod> useWatchQuery$CalendarPeriod(
        WatchOptions$Query$CalendarPeriod options) =>
    graphql_flutter.useWatchQuery(options);

class Query$CalendarPeriod$Widget
    extends graphql_flutter.Query<Query$CalendarPeriod> {
  Query$CalendarPeriod$Widget({
    widgets.Key? key,
    required Options$Query$CalendarPeriod options,
    required graphql_flutter.QueryBuilder<Query$CalendarPeriod> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$CalendarPeriod$calendar {
  Query$CalendarPeriod$calendar({
    required this.period,
    this.$__typename = 'Calendar',
  });

  factory Query$CalendarPeriod$calendar.fromJson(Map<String, dynamic> json) {
    final l$period = json['period'];
    final l$$__typename = json['__typename'];
    return Query$CalendarPeriod$calendar(
      period: Query$CalendarPeriod$calendar$period.fromJson(
          (l$period as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CalendarPeriod$calendar$period period;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$period = period;
    _resultData['period'] = l$period.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$period = period;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$period,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CalendarPeriod$calendar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$period = period;
    final lOther$period = other.period;
    if (l$period != lOther$period) {
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

extension UtilityExtension$Query$CalendarPeriod$calendar
    on Query$CalendarPeriod$calendar {
  CopyWith$Query$CalendarPeriod$calendar<Query$CalendarPeriod$calendar>
      get copyWith => CopyWith$Query$CalendarPeriod$calendar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CalendarPeriod$calendar<TRes> {
  factory CopyWith$Query$CalendarPeriod$calendar(
    Query$CalendarPeriod$calendar instance,
    TRes Function(Query$CalendarPeriod$calendar) then,
  ) = _CopyWithImpl$Query$CalendarPeriod$calendar;

  factory CopyWith$Query$CalendarPeriod$calendar.stub(TRes res) =
      _CopyWithStubImpl$Query$CalendarPeriod$calendar;

  TRes call({
    Query$CalendarPeriod$calendar$period? period,
    String? $__typename,
  });
  CopyWith$Query$CalendarPeriod$calendar$period<TRes> get period;
}

class _CopyWithImpl$Query$CalendarPeriod$calendar<TRes>
    implements CopyWith$Query$CalendarPeriod$calendar<TRes> {
  _CopyWithImpl$Query$CalendarPeriod$calendar(
    this._instance,
    this._then,
  );

  final Query$CalendarPeriod$calendar _instance;

  final TRes Function(Query$CalendarPeriod$calendar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? period = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CalendarPeriod$calendar(
        period: period == _undefined || period == null
            ? _instance.period
            : (period as Query$CalendarPeriod$calendar$period),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CalendarPeriod$calendar$period<TRes> get period {
    final local$period = _instance.period;
    return CopyWith$Query$CalendarPeriod$calendar$period(
        local$period, (e) => call(period: e));
  }
}

class _CopyWithStubImpl$Query$CalendarPeriod$calendar<TRes>
    implements CopyWith$Query$CalendarPeriod$calendar<TRes> {
  _CopyWithStubImpl$Query$CalendarPeriod$calendar(this._res);

  TRes _res;

  call({
    Query$CalendarPeriod$calendar$period? period,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CalendarPeriod$calendar$period<TRes> get period =>
      CopyWith$Query$CalendarPeriod$calendar$period.stub(_res);
}

class Query$CalendarPeriod$calendar$period {
  Query$CalendarPeriod$calendar$period({
    required this.activeDays,
    required this.events,
    this.$__typename = 'CalendarPeriod',
  });

  factory Query$CalendarPeriod$calendar$period.fromJson(
      Map<String, dynamic> json) {
    final l$activeDays = json['activeDays'];
    final l$events = json['events'];
    final l$$__typename = json['__typename'];
    return Query$CalendarPeriod$calendar$period(
      activeDays:
          (l$activeDays as List<dynamic>).map((e) => (e as String)).toList(),
      events: (l$events as List<dynamic>)
          .map((e) => Query$CalendarPeriod$calendar$period$events.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> activeDays;

  final List<Query$CalendarPeriod$calendar$period$events> events;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$activeDays = activeDays;
    _resultData['activeDays'] = l$activeDays.map((e) => e).toList();
    final l$events = events;
    _resultData['events'] = l$events.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$activeDays = activeDays;
    final l$events = events;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$activeDays.map((v) => v)),
      Object.hashAll(l$events.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CalendarPeriod$calendar$period) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$activeDays = activeDays;
    final lOther$activeDays = other.activeDays;
    if (l$activeDays.length != lOther$activeDays.length) {
      return false;
    }
    for (int i = 0; i < l$activeDays.length; i++) {
      final l$activeDays$entry = l$activeDays[i];
      final lOther$activeDays$entry = lOther$activeDays[i];
      if (l$activeDays$entry != lOther$activeDays$entry) {
        return false;
      }
    }
    final l$events = events;
    final lOther$events = other.events;
    if (l$events.length != lOther$events.length) {
      return false;
    }
    for (int i = 0; i < l$events.length; i++) {
      final l$events$entry = l$events[i];
      final lOther$events$entry = lOther$events[i];
      if (l$events$entry != lOther$events$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$CalendarPeriod$calendar$period
    on Query$CalendarPeriod$calendar$period {
  CopyWith$Query$CalendarPeriod$calendar$period<
          Query$CalendarPeriod$calendar$period>
      get copyWith => CopyWith$Query$CalendarPeriod$calendar$period(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CalendarPeriod$calendar$period<TRes> {
  factory CopyWith$Query$CalendarPeriod$calendar$period(
    Query$CalendarPeriod$calendar$period instance,
    TRes Function(Query$CalendarPeriod$calendar$period) then,
  ) = _CopyWithImpl$Query$CalendarPeriod$calendar$period;

  factory CopyWith$Query$CalendarPeriod$calendar$period.stub(TRes res) =
      _CopyWithStubImpl$Query$CalendarPeriod$calendar$period;

  TRes call({
    List<String>? activeDays,
    List<Query$CalendarPeriod$calendar$period$events>? events,
    String? $__typename,
  });
  TRes events(
      Iterable<Query$CalendarPeriod$calendar$period$events> Function(
              Iterable<
                  CopyWith$Query$CalendarPeriod$calendar$period$events<
                      Query$CalendarPeriod$calendar$period$events>>)
          _fn);
}

class _CopyWithImpl$Query$CalendarPeriod$calendar$period<TRes>
    implements CopyWith$Query$CalendarPeriod$calendar$period<TRes> {
  _CopyWithImpl$Query$CalendarPeriod$calendar$period(
    this._instance,
    this._then,
  );

  final Query$CalendarPeriod$calendar$period _instance;

  final TRes Function(Query$CalendarPeriod$calendar$period) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? activeDays = _undefined,
    Object? events = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CalendarPeriod$calendar$period(
        activeDays: activeDays == _undefined || activeDays == null
            ? _instance.activeDays
            : (activeDays as List<String>),
        events: events == _undefined || events == null
            ? _instance.events
            : (events as List<Query$CalendarPeriod$calendar$period$events>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes events(
          Iterable<Query$CalendarPeriod$calendar$period$events> Function(
                  Iterable<
                      CopyWith$Query$CalendarPeriod$calendar$period$events<
                          Query$CalendarPeriod$calendar$period$events>>)
              _fn) =>
      call(
          events: _fn(_instance.events
              .map((e) => CopyWith$Query$CalendarPeriod$calendar$period$events(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$CalendarPeriod$calendar$period<TRes>
    implements CopyWith$Query$CalendarPeriod$calendar$period<TRes> {
  _CopyWithStubImpl$Query$CalendarPeriod$calendar$period(this._res);

  TRes _res;

  call({
    List<String>? activeDays,
    List<Query$CalendarPeriod$calendar$period$events>? events,
    String? $__typename,
  }) =>
      _res;

  events(_fn) => _res;
}

class Query$CalendarPeriod$calendar$period$events {
  Query$CalendarPeriod$calendar$period$events({
    required this.start,
    required this.end,
    this.$__typename = 'Event',
  });

  factory Query$CalendarPeriod$calendar$period$events.fromJson(
      Map<String, dynamic> json) {
    final l$start = json['start'];
    final l$end = json['end'];
    final l$$__typename = json['__typename'];
    return Query$CalendarPeriod$calendar$period$events(
      start: (l$start as String),
      end: (l$end as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String start;

  final String end;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$start = start;
    _resultData['start'] = l$start;
    final l$end = end;
    _resultData['end'] = l$end;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$start = start;
    final l$end = end;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$start,
      l$end,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CalendarPeriod$calendar$period$events) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$start = start;
    final lOther$start = other.start;
    if (l$start != lOther$start) {
      return false;
    }
    final l$end = end;
    final lOther$end = other.end;
    if (l$end != lOther$end) {
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

extension UtilityExtension$Query$CalendarPeriod$calendar$period$events
    on Query$CalendarPeriod$calendar$period$events {
  CopyWith$Query$CalendarPeriod$calendar$period$events<
          Query$CalendarPeriod$calendar$period$events>
      get copyWith => CopyWith$Query$CalendarPeriod$calendar$period$events(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CalendarPeriod$calendar$period$events<TRes> {
  factory CopyWith$Query$CalendarPeriod$calendar$period$events(
    Query$CalendarPeriod$calendar$period$events instance,
    TRes Function(Query$CalendarPeriod$calendar$period$events) then,
  ) = _CopyWithImpl$Query$CalendarPeriod$calendar$period$events;

  factory CopyWith$Query$CalendarPeriod$calendar$period$events.stub(TRes res) =
      _CopyWithStubImpl$Query$CalendarPeriod$calendar$period$events;

  TRes call({
    String? start,
    String? end,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CalendarPeriod$calendar$period$events<TRes>
    implements CopyWith$Query$CalendarPeriod$calendar$period$events<TRes> {
  _CopyWithImpl$Query$CalendarPeriod$calendar$period$events(
    this._instance,
    this._then,
  );

  final Query$CalendarPeriod$calendar$period$events _instance;

  final TRes Function(Query$CalendarPeriod$calendar$period$events) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? start = _undefined,
    Object? end = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CalendarPeriod$calendar$period$events(
        start: start == _undefined || start == null
            ? _instance.start
            : (start as String),
        end: end == _undefined || end == null ? _instance.end : (end as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CalendarPeriod$calendar$period$events<TRes>
    implements CopyWith$Query$CalendarPeriod$calendar$period$events<TRes> {
  _CopyWithStubImpl$Query$CalendarPeriod$calendar$period$events(this._res);

  TRes _res;

  call({
    String? start,
    String? end,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$CalendarDay {
  factory Variables$Query$CalendarDay({required String date}) =>
      Variables$Query$CalendarDay._({
        r'date': date,
      });

  Variables$Query$CalendarDay._(this._$data);

  factory Variables$Query$CalendarDay.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$date = data['date'];
    result$data['date'] = (l$date as String);
    return Variables$Query$CalendarDay._(result$data);
  }

  Map<String, dynamic> _$data;

  String get date => (_$data['date'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$date = date;
    result$data['date'] = l$date;
    return result$data;
  }

  CopyWith$Variables$Query$CalendarDay<Variables$Query$CalendarDay>
      get copyWith => CopyWith$Variables$Query$CalendarDay(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$CalendarDay) ||
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

abstract class CopyWith$Variables$Query$CalendarDay<TRes> {
  factory CopyWith$Variables$Query$CalendarDay(
    Variables$Query$CalendarDay instance,
    TRes Function(Variables$Query$CalendarDay) then,
  ) = _CopyWithImpl$Variables$Query$CalendarDay;

  factory CopyWith$Variables$Query$CalendarDay.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CalendarDay;

  TRes call({String? date});
}

class _CopyWithImpl$Variables$Query$CalendarDay<TRes>
    implements CopyWith$Variables$Query$CalendarDay<TRes> {
  _CopyWithImpl$Variables$Query$CalendarDay(
    this._instance,
    this._then,
  );

  final Variables$Query$CalendarDay _instance;

  final TRes Function(Variables$Query$CalendarDay) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? date = _undefined}) =>
      _then(Variables$Query$CalendarDay._({
        ..._instance._$data,
        if (date != _undefined && date != null) 'date': (date as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$CalendarDay<TRes>
    implements CopyWith$Variables$Query$CalendarDay<TRes> {
  _CopyWithStubImpl$Variables$Query$CalendarDay(this._res);

  TRes _res;

  call({String? date}) => _res;
}

class Query$CalendarDay {
  Query$CalendarDay({
    this.calendar,
    this.$__typename = 'QueryRoot',
  });

  factory Query$CalendarDay.fromJson(Map<String, dynamic> json) {
    final l$calendar = json['calendar'];
    final l$$__typename = json['__typename'];
    return Query$CalendarDay(
      calendar: l$calendar == null
          ? null
          : Query$CalendarDay$calendar.fromJson(
              (l$calendar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CalendarDay$calendar? calendar;

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
    if (!(other is Query$CalendarDay) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$CalendarDay on Query$CalendarDay {
  CopyWith$Query$CalendarDay<Query$CalendarDay> get copyWith =>
      CopyWith$Query$CalendarDay(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CalendarDay<TRes> {
  factory CopyWith$Query$CalendarDay(
    Query$CalendarDay instance,
    TRes Function(Query$CalendarDay) then,
  ) = _CopyWithImpl$Query$CalendarDay;

  factory CopyWith$Query$CalendarDay.stub(TRes res) =
      _CopyWithStubImpl$Query$CalendarDay;

  TRes call({
    Query$CalendarDay$calendar? calendar,
    String? $__typename,
  });
  CopyWith$Query$CalendarDay$calendar<TRes> get calendar;
}

class _CopyWithImpl$Query$CalendarDay<TRes>
    implements CopyWith$Query$CalendarDay<TRes> {
  _CopyWithImpl$Query$CalendarDay(
    this._instance,
    this._then,
  );

  final Query$CalendarDay _instance;

  final TRes Function(Query$CalendarDay) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? calendar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CalendarDay(
        calendar: calendar == _undefined
            ? _instance.calendar
            : (calendar as Query$CalendarDay$calendar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CalendarDay$calendar<TRes> get calendar {
    final local$calendar = _instance.calendar;
    return local$calendar == null
        ? CopyWith$Query$CalendarDay$calendar.stub(_then(_instance))
        : CopyWith$Query$CalendarDay$calendar(
            local$calendar, (e) => call(calendar: e));
  }
}

class _CopyWithStubImpl$Query$CalendarDay<TRes>
    implements CopyWith$Query$CalendarDay<TRes> {
  _CopyWithStubImpl$Query$CalendarDay(this._res);

  TRes _res;

  call({
    Query$CalendarDay$calendar? calendar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CalendarDay$calendar<TRes> get calendar =>
      CopyWith$Query$CalendarDay$calendar.stub(_res);
}

const documentNodeQueryCalendarDay = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CalendarDay'),
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
  fragmentDefinitionCalendarEntry,
]);
Query$CalendarDay _parserFn$Query$CalendarDay(Map<String, dynamic> data) =>
    Query$CalendarDay.fromJson(data);
typedef OnQueryComplete$Query$CalendarDay = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$CalendarDay?,
);

class Options$Query$CalendarDay
    extends graphql.QueryOptions<Query$CalendarDay> {
  Options$Query$CalendarDay({
    String? operationName,
    required Variables$Query$CalendarDay variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CalendarDay? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CalendarDay? onComplete,
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
                    data == null ? null : _parserFn$Query$CalendarDay(data),
                  ),
          onError: onError,
          document: documentNodeQueryCalendarDay,
          parserFn: _parserFn$Query$CalendarDay,
        );

  final OnQueryComplete$Query$CalendarDay? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$CalendarDay
    extends graphql.WatchQueryOptions<Query$CalendarDay> {
  WatchOptions$Query$CalendarDay({
    String? operationName,
    required Variables$Query$CalendarDay variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CalendarDay? typedOptimisticResult,
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
          document: documentNodeQueryCalendarDay,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$CalendarDay,
        );
}

class FetchMoreOptions$Query$CalendarDay extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CalendarDay({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$CalendarDay variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryCalendarDay,
        );
}

extension ClientExtension$Query$CalendarDay on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CalendarDay>> query$CalendarDay(
          Options$Query$CalendarDay options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$CalendarDay> watchQuery$CalendarDay(
          WatchOptions$Query$CalendarDay options) =>
      this.watchQuery(options);
  void writeQuery$CalendarDay({
    required Query$CalendarDay data,
    required Variables$Query$CalendarDay variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryCalendarDay),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$CalendarDay? readQuery$CalendarDay({
    required Variables$Query$CalendarDay variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryCalendarDay),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CalendarDay.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CalendarDay> useQuery$CalendarDay(
        Options$Query$CalendarDay options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$CalendarDay> useWatchQuery$CalendarDay(
        WatchOptions$Query$CalendarDay options) =>
    graphql_flutter.useWatchQuery(options);

class Query$CalendarDay$Widget
    extends graphql_flutter.Query<Query$CalendarDay> {
  Query$CalendarDay$Widget({
    widgets.Key? key,
    required Options$Query$CalendarDay options,
    required graphql_flutter.QueryBuilder<Query$CalendarDay> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$CalendarDay$calendar {
  Query$CalendarDay$calendar({
    required this.day,
    this.$__typename = 'Calendar',
  });

  factory Query$CalendarDay$calendar.fromJson(Map<String, dynamic> json) {
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Query$CalendarDay$calendar(
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
    if (!(other is Query$CalendarDay$calendar) ||
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

extension UtilityExtension$Query$CalendarDay$calendar
    on Query$CalendarDay$calendar {
  CopyWith$Query$CalendarDay$calendar<Query$CalendarDay$calendar>
      get copyWith => CopyWith$Query$CalendarDay$calendar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CalendarDay$calendar<TRes> {
  factory CopyWith$Query$CalendarDay$calendar(
    Query$CalendarDay$calendar instance,
    TRes Function(Query$CalendarDay$calendar) then,
  ) = _CopyWithImpl$Query$CalendarDay$calendar;

  factory CopyWith$Query$CalendarDay$calendar.stub(TRes res) =
      _CopyWithStubImpl$Query$CalendarDay$calendar;

  TRes call({
    Fragment$CalendarDay? day,
    String? $__typename,
  });
  CopyWith$Fragment$CalendarDay<TRes> get day;
}

class _CopyWithImpl$Query$CalendarDay$calendar<TRes>
    implements CopyWith$Query$CalendarDay$calendar<TRes> {
  _CopyWithImpl$Query$CalendarDay$calendar(
    this._instance,
    this._then,
  );

  final Query$CalendarDay$calendar _instance;

  final TRes Function(Query$CalendarDay$calendar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CalendarDay$calendar(
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

class _CopyWithStubImpl$Query$CalendarDay$calendar<TRes>
    implements CopyWith$Query$CalendarDay$calendar<TRes> {
  _CopyWithStubImpl$Query$CalendarDay$calendar(this._res);

  TRes _res;

  call({
    Fragment$CalendarDay? day,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CalendarDay<TRes> get day =>
      CopyWith$Fragment$CalendarDay.stub(_res);
}
