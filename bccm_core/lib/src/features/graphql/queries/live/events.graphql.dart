import 'calendar_days.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetEvent {
  factory Variables$Query$GetEvent({required String id}) =>
      Variables$Query$GetEvent._({
        r'id': id,
      });

  Variables$Query$GetEvent._(this._$data);

  factory Variables$Query$GetEvent.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetEvent._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetEvent<Variables$Query$GetEvent> get copyWith =>
      CopyWith$Variables$Query$GetEvent(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetEvent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetEvent<TRes> {
  factory CopyWith$Variables$Query$GetEvent(
    Variables$Query$GetEvent instance,
    TRes Function(Variables$Query$GetEvent) then,
  ) = _CopyWithImpl$Variables$Query$GetEvent;

  factory CopyWith$Variables$Query$GetEvent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetEvent;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetEvent<TRes>
    implements CopyWith$Variables$Query$GetEvent<TRes> {
  _CopyWithImpl$Variables$Query$GetEvent(
    this._instance,
    this._then,
  );

  final Variables$Query$GetEvent _instance;

  final TRes Function(Variables$Query$GetEvent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetEvent._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetEvent<TRes>
    implements CopyWith$Variables$Query$GetEvent<TRes> {
  _CopyWithStubImpl$Variables$Query$GetEvent(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetEvent {
  Query$GetEvent({
    this.event,
    this.$__typename = 'QueryRoot',
  });

  factory Query$GetEvent.fromJson(Map<String, dynamic> json) {
    final l$event = json['event'];
    final l$$__typename = json['__typename'];
    return Query$GetEvent(
      event: l$event == null
          ? null
          : Query$GetEvent$event.fromJson((l$event as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetEvent$event? event;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$event = event;
    _resultData['event'] = l$event?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$event = event;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$event,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetEvent) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$event = event;
    final lOther$event = other.event;
    if (l$event != lOther$event) {
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

extension UtilityExtension$Query$GetEvent on Query$GetEvent {
  CopyWith$Query$GetEvent<Query$GetEvent> get copyWith =>
      CopyWith$Query$GetEvent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetEvent<TRes> {
  factory CopyWith$Query$GetEvent(
    Query$GetEvent instance,
    TRes Function(Query$GetEvent) then,
  ) = _CopyWithImpl$Query$GetEvent;

  factory CopyWith$Query$GetEvent.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEvent;

  TRes call({
    Query$GetEvent$event? event,
    String? $__typename,
  });
  CopyWith$Query$GetEvent$event<TRes> get event;
}

class _CopyWithImpl$Query$GetEvent<TRes>
    implements CopyWith$Query$GetEvent<TRes> {
  _CopyWithImpl$Query$GetEvent(
    this._instance,
    this._then,
  );

  final Query$GetEvent _instance;

  final TRes Function(Query$GetEvent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? event = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEvent(
        event: event == _undefined
            ? _instance.event
            : (event as Query$GetEvent$event?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetEvent$event<TRes> get event {
    final local$event = _instance.event;
    return local$event == null
        ? CopyWith$Query$GetEvent$event.stub(_then(_instance))
        : CopyWith$Query$GetEvent$event(local$event, (e) => call(event: e));
  }
}

class _CopyWithStubImpl$Query$GetEvent<TRes>
    implements CopyWith$Query$GetEvent<TRes> {
  _CopyWithStubImpl$Query$GetEvent(this._res);

  TRes _res;

  call({
    Query$GetEvent$event? event,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetEvent$event<TRes> get event =>
      CopyWith$Query$GetEvent$event.stub(_res);
}

const documentNodeQueryGetEvent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetEvent'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'event'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
            name: NameNode(value: 'entries'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'CalendarEntry'),
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
  fragmentDefinitionCalendarEntry,
]);
Query$GetEvent _parserFn$Query$GetEvent(Map<String, dynamic> data) =>
    Query$GetEvent.fromJson(data);
typedef OnQueryComplete$Query$GetEvent = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetEvent?,
);

class Options$Query$GetEvent extends graphql.QueryOptions<Query$GetEvent> {
  Options$Query$GetEvent({
    String? operationName,
    required Variables$Query$GetEvent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetEvent? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetEvent? onComplete,
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
                    data == null ? null : _parserFn$Query$GetEvent(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetEvent,
          parserFn: _parserFn$Query$GetEvent,
        );

  final OnQueryComplete$Query$GetEvent? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetEvent
    extends graphql.WatchQueryOptions<Query$GetEvent> {
  WatchOptions$Query$GetEvent({
    String? operationName,
    required Variables$Query$GetEvent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetEvent? typedOptimisticResult,
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
          document: documentNodeQueryGetEvent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetEvent,
        );
}

class FetchMoreOptions$Query$GetEvent extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetEvent({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetEvent variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetEvent,
        );
}

extension ClientExtension$Query$GetEvent on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetEvent>> query$GetEvent(
          Options$Query$GetEvent options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetEvent> watchQuery$GetEvent(
          WatchOptions$Query$GetEvent options) =>
      this.watchQuery(options);
  void writeQuery$GetEvent({
    required Query$GetEvent data,
    required Variables$Query$GetEvent variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetEvent),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetEvent? readQuery$GetEvent({
    required Variables$Query$GetEvent variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetEvent),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetEvent.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetEvent> useQuery$GetEvent(
        Options$Query$GetEvent options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetEvent> useWatchQuery$GetEvent(
        WatchOptions$Query$GetEvent options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetEvent$Widget extends graphql_flutter.Query<Query$GetEvent> {
  Query$GetEvent$Widget({
    widgets.Key? key,
    required Options$Query$GetEvent options,
    required graphql_flutter.QueryBuilder<Query$GetEvent> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetEvent$event {
  Query$GetEvent$event({
    required this.id,
    required this.title,
    required this.start,
    required this.end,
    required this.entries,
    this.$__typename = 'Event',
  });

  factory Query$GetEvent$event.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$start = json['start'];
    final l$end = json['end'];
    final l$entries = json['entries'];
    final l$$__typename = json['__typename'];
    return Query$GetEvent$event(
      id: (l$id as String),
      title: (l$title as String),
      start: (l$start as String),
      end: (l$end as String),
      entries: (l$entries as List<dynamic>)
          .map((e) =>
              Fragment$CalendarEntry.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String start;

  final String end;

  final List<Fragment$CalendarEntry> entries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$start = start;
    _resultData['start'] = l$start;
    final l$end = end;
    _resultData['end'] = l$end;
    final l$entries = entries;
    _resultData['entries'] = l$entries.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$start = start;
    final l$end = end;
    final l$entries = entries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$start,
      l$end,
      Object.hashAll(l$entries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetEvent$event) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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
    final l$entries = entries;
    final lOther$entries = other.entries;
    if (l$entries.length != lOther$entries.length) {
      return false;
    }
    for (int i = 0; i < l$entries.length; i++) {
      final l$entries$entry = l$entries[i];
      final lOther$entries$entry = lOther$entries[i];
      if (l$entries$entry != lOther$entries$entry) {
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

extension UtilityExtension$Query$GetEvent$event on Query$GetEvent$event {
  CopyWith$Query$GetEvent$event<Query$GetEvent$event> get copyWith =>
      CopyWith$Query$GetEvent$event(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetEvent$event<TRes> {
  factory CopyWith$Query$GetEvent$event(
    Query$GetEvent$event instance,
    TRes Function(Query$GetEvent$event) then,
  ) = _CopyWithImpl$Query$GetEvent$event;

  factory CopyWith$Query$GetEvent$event.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEvent$event;

  TRes call({
    String? id,
    String? title,
    String? start,
    String? end,
    List<Fragment$CalendarEntry>? entries,
    String? $__typename,
  });
  TRes entries(
      Iterable<Fragment$CalendarEntry> Function(
              Iterable<CopyWith$Fragment$CalendarEntry<Fragment$CalendarEntry>>)
          _fn);
}

class _CopyWithImpl$Query$GetEvent$event<TRes>
    implements CopyWith$Query$GetEvent$event<TRes> {
  _CopyWithImpl$Query$GetEvent$event(
    this._instance,
    this._then,
  );

  final Query$GetEvent$event _instance;

  final TRes Function(Query$GetEvent$event) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
    Object? entries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEvent$event(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        start: start == _undefined || start == null
            ? _instance.start
            : (start as String),
        end: end == _undefined || end == null ? _instance.end : (end as String),
        entries: entries == _undefined || entries == null
            ? _instance.entries
            : (entries as List<Fragment$CalendarEntry>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes entries(
          Iterable<Fragment$CalendarEntry> Function(
                  Iterable<
                      CopyWith$Fragment$CalendarEntry<Fragment$CalendarEntry>>)
              _fn) =>
      call(
          entries:
              _fn(_instance.entries.map((e) => CopyWith$Fragment$CalendarEntry(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetEvent$event<TRes>
    implements CopyWith$Query$GetEvent$event<TRes> {
  _CopyWithStubImpl$Query$GetEvent$event(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? start,
    String? end,
    List<Fragment$CalendarEntry>? entries,
    String? $__typename,
  }) =>
      _res;

  entries(_fn) => _res;
}

class Query$ListEvents {
  Query$ListEvents({
    this.calendar,
    this.$__typename = 'QueryRoot',
  });

  factory Query$ListEvents.fromJson(Map<String, dynamic> json) {
    final l$calendar = json['calendar'];
    final l$$__typename = json['__typename'];
    return Query$ListEvents(
      calendar: l$calendar == null
          ? null
          : Query$ListEvents$calendar.fromJson(
              (l$calendar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ListEvents$calendar? calendar;

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
    if (!(other is Query$ListEvents) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$ListEvents on Query$ListEvents {
  CopyWith$Query$ListEvents<Query$ListEvents> get copyWith =>
      CopyWith$Query$ListEvents(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ListEvents<TRes> {
  factory CopyWith$Query$ListEvents(
    Query$ListEvents instance,
    TRes Function(Query$ListEvents) then,
  ) = _CopyWithImpl$Query$ListEvents;

  factory CopyWith$Query$ListEvents.stub(TRes res) =
      _CopyWithStubImpl$Query$ListEvents;

  TRes call({
    Query$ListEvents$calendar? calendar,
    String? $__typename,
  });
  CopyWith$Query$ListEvents$calendar<TRes> get calendar;
}

class _CopyWithImpl$Query$ListEvents<TRes>
    implements CopyWith$Query$ListEvents<TRes> {
  _CopyWithImpl$Query$ListEvents(
    this._instance,
    this._then,
  );

  final Query$ListEvents _instance;

  final TRes Function(Query$ListEvents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? calendar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ListEvents(
        calendar: calendar == _undefined
            ? _instance.calendar
            : (calendar as Query$ListEvents$calendar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ListEvents$calendar<TRes> get calendar {
    final local$calendar = _instance.calendar;
    return local$calendar == null
        ? CopyWith$Query$ListEvents$calendar.stub(_then(_instance))
        : CopyWith$Query$ListEvents$calendar(
            local$calendar, (e) => call(calendar: e));
  }
}

class _CopyWithStubImpl$Query$ListEvents<TRes>
    implements CopyWith$Query$ListEvents<TRes> {
  _CopyWithStubImpl$Query$ListEvents(this._res);

  TRes _res;

  call({
    Query$ListEvents$calendar? calendar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ListEvents$calendar<TRes> get calendar =>
      CopyWith$Query$ListEvents$calendar.stub(_res);
}

const documentNodeQueryListEvents = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ListEvents'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'calendar'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'events'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
]);
Query$ListEvents _parserFn$Query$ListEvents(Map<String, dynamic> data) =>
    Query$ListEvents.fromJson(data);
typedef OnQueryComplete$Query$ListEvents = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ListEvents?,
);

class Options$Query$ListEvents extends graphql.QueryOptions<Query$ListEvents> {
  Options$Query$ListEvents({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ListEvents? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ListEvents? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn$Query$ListEvents(data),
                  ),
          onError: onError,
          document: documentNodeQueryListEvents,
          parserFn: _parserFn$Query$ListEvents,
        );

  final OnQueryComplete$Query$ListEvents? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ListEvents
    extends graphql.WatchQueryOptions<Query$ListEvents> {
  WatchOptions$Query$ListEvents({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ListEvents? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryListEvents,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ListEvents,
        );
}

class FetchMoreOptions$Query$ListEvents extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ListEvents({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryListEvents,
        );
}

extension ClientExtension$Query$ListEvents on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ListEvents>> query$ListEvents(
          [Options$Query$ListEvents? options]) async =>
      await this.query(options ?? Options$Query$ListEvents());
  graphql.ObservableQuery<Query$ListEvents> watchQuery$ListEvents(
          [WatchOptions$Query$ListEvents? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ListEvents());
  void writeQuery$ListEvents({
    required Query$ListEvents data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryListEvents)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ListEvents? readQuery$ListEvents({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryListEvents)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ListEvents.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ListEvents> useQuery$ListEvents(
        [Options$Query$ListEvents? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$ListEvents());
graphql.ObservableQuery<Query$ListEvents> useWatchQuery$ListEvents(
        [WatchOptions$Query$ListEvents? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$ListEvents());

class Query$ListEvents$Widget extends graphql_flutter.Query<Query$ListEvents> {
  Query$ListEvents$Widget({
    widgets.Key? key,
    Options$Query$ListEvents? options,
    required graphql_flutter.QueryBuilder<Query$ListEvents> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$ListEvents(),
          builder: builder,
        );
}

class Query$ListEvents$calendar {
  Query$ListEvents$calendar({
    required this.events,
    this.$__typename = 'Calendar',
  });

  factory Query$ListEvents$calendar.fromJson(Map<String, dynamic> json) {
    final l$events = json['events'];
    final l$$__typename = json['__typename'];
    return Query$ListEvents$calendar(
      events: (l$events as List<dynamic>)
          .map((e) => Query$ListEvents$calendar$events.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ListEvents$calendar$events> events;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$events = events;
    _resultData['events'] = l$events.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$events = events;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$events.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ListEvents$calendar) ||
        runtimeType != other.runtimeType) {
      return false;
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

extension UtilityExtension$Query$ListEvents$calendar
    on Query$ListEvents$calendar {
  CopyWith$Query$ListEvents$calendar<Query$ListEvents$calendar> get copyWith =>
      CopyWith$Query$ListEvents$calendar(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ListEvents$calendar<TRes> {
  factory CopyWith$Query$ListEvents$calendar(
    Query$ListEvents$calendar instance,
    TRes Function(Query$ListEvents$calendar) then,
  ) = _CopyWithImpl$Query$ListEvents$calendar;

  factory CopyWith$Query$ListEvents$calendar.stub(TRes res) =
      _CopyWithStubImpl$Query$ListEvents$calendar;

  TRes call({
    List<Query$ListEvents$calendar$events>? events,
    String? $__typename,
  });
  TRes events(
      Iterable<Query$ListEvents$calendar$events> Function(
              Iterable<
                  CopyWith$Query$ListEvents$calendar$events<
                      Query$ListEvents$calendar$events>>)
          _fn);
}

class _CopyWithImpl$Query$ListEvents$calendar<TRes>
    implements CopyWith$Query$ListEvents$calendar<TRes> {
  _CopyWithImpl$Query$ListEvents$calendar(
    this._instance,
    this._then,
  );

  final Query$ListEvents$calendar _instance;

  final TRes Function(Query$ListEvents$calendar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? events = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ListEvents$calendar(
        events: events == _undefined || events == null
            ? _instance.events
            : (events as List<Query$ListEvents$calendar$events>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes events(
          Iterable<Query$ListEvents$calendar$events> Function(
                  Iterable<
                      CopyWith$Query$ListEvents$calendar$events<
                          Query$ListEvents$calendar$events>>)
              _fn) =>
      call(
          events: _fn(_instance.events
              .map((e) => CopyWith$Query$ListEvents$calendar$events(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$ListEvents$calendar<TRes>
    implements CopyWith$Query$ListEvents$calendar<TRes> {
  _CopyWithStubImpl$Query$ListEvents$calendar(this._res);

  TRes _res;

  call({
    List<Query$ListEvents$calendar$events>? events,
    String? $__typename,
  }) =>
      _res;

  events(_fn) => _res;
}

class Query$ListEvents$calendar$events {
  Query$ListEvents$calendar$events({
    required this.id,
    required this.title,
    required this.start,
    required this.end,
    this.$__typename = 'Event',
  });

  factory Query$ListEvents$calendar$events.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$start = json['start'];
    final l$end = json['end'];
    final l$$__typename = json['__typename'];
    return Query$ListEvents$calendar$events(
      id: (l$id as String),
      title: (l$title as String),
      start: (l$start as String),
      end: (l$end as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String start;

  final String end;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
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
    final l$id = id;
    final l$title = title;
    final l$start = start;
    final l$end = end;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
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
    if (!(other is Query$ListEvents$calendar$events) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$ListEvents$calendar$events
    on Query$ListEvents$calendar$events {
  CopyWith$Query$ListEvents$calendar$events<Query$ListEvents$calendar$events>
      get copyWith => CopyWith$Query$ListEvents$calendar$events(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ListEvents$calendar$events<TRes> {
  factory CopyWith$Query$ListEvents$calendar$events(
    Query$ListEvents$calendar$events instance,
    TRes Function(Query$ListEvents$calendar$events) then,
  ) = _CopyWithImpl$Query$ListEvents$calendar$events;

  factory CopyWith$Query$ListEvents$calendar$events.stub(TRes res) =
      _CopyWithStubImpl$Query$ListEvents$calendar$events;

  TRes call({
    String? id,
    String? title,
    String? start,
    String? end,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ListEvents$calendar$events<TRes>
    implements CopyWith$Query$ListEvents$calendar$events<TRes> {
  _CopyWithImpl$Query$ListEvents$calendar$events(
    this._instance,
    this._then,
  );

  final Query$ListEvents$calendar$events _instance;

  final TRes Function(Query$ListEvents$calendar$events) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ListEvents$calendar$events(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        start: start == _undefined || start == null
            ? _instance.start
            : (start as String),
        end: end == _undefined || end == null ? _instance.end : (end as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ListEvents$calendar$events<TRes>
    implements CopyWith$Query$ListEvents$calendar$events<TRes> {
  _CopyWithStubImpl$Query$ListEvents$calendar$events(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? start,
    String? end,
    String? $__typename,
  }) =>
      _res;
}
