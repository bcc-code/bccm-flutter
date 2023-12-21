import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$event {
  factory Variables$Query$event({required String id}) =>
      Variables$Query$event._({
        r'id': id,
      });

  Variables$Query$event._(this._$data);

  factory Variables$Query$event.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$event._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$event<Variables$Query$event> get copyWith =>
      CopyWith$Variables$Query$event(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$event) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$event<TRes> {
  factory CopyWith$Variables$Query$event(
    Variables$Query$event instance,
    TRes Function(Variables$Query$event) then,
  ) = _CopyWithImpl$Variables$Query$event;

  factory CopyWith$Variables$Query$event.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$event;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$event<TRes>
    implements CopyWith$Variables$Query$event<TRes> {
  _CopyWithImpl$Variables$Query$event(
    this._instance,
    this._then,
  );

  final Variables$Query$event _instance;

  final TRes Function(Variables$Query$event) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$event._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$event<TRes>
    implements CopyWith$Variables$Query$event<TRes> {
  _CopyWithStubImpl$Variables$Query$event(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$event {
  Query$event({
    this.event,
    this.$__typename = 'QueryRoot',
  });

  factory Query$event.fromJson(Map<String, dynamic> json) {
    final l$event = json['event'];
    final l$$__typename = json['__typename'];
    return Query$event(
      event: l$event == null
          ? null
          : Query$event$event.fromJson((l$event as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$event$event? event;

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
    if (!(other is Query$event) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$event on Query$event {
  CopyWith$Query$event<Query$event> get copyWith => CopyWith$Query$event(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$event<TRes> {
  factory CopyWith$Query$event(
    Query$event instance,
    TRes Function(Query$event) then,
  ) = _CopyWithImpl$Query$event;

  factory CopyWith$Query$event.stub(TRes res) = _CopyWithStubImpl$Query$event;

  TRes call({
    Query$event$event? event,
    String? $__typename,
  });
  CopyWith$Query$event$event<TRes> get event;
}

class _CopyWithImpl$Query$event<TRes> implements CopyWith$Query$event<TRes> {
  _CopyWithImpl$Query$event(
    this._instance,
    this._then,
  );

  final Query$event _instance;

  final TRes Function(Query$event) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? event = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$event(
        event: event == _undefined
            ? _instance.event
            : (event as Query$event$event?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$event$event<TRes> get event {
    final local$event = _instance.event;
    return local$event == null
        ? CopyWith$Query$event$event.stub(_then(_instance))
        : CopyWith$Query$event$event(local$event, (e) => call(event: e));
  }
}

class _CopyWithStubImpl$Query$event<TRes>
    implements CopyWith$Query$event<TRes> {
  _CopyWithStubImpl$Query$event(this._res);

  TRes _res;

  call({
    Query$event$event? event,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$event$event<TRes> get event =>
      CopyWith$Query$event$event.stub(_res);
}

const documentNodeQueryevent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'event'),
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
            name: NameNode(value: 'title'),
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
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
                name: NameNode(value: 'description'),
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
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'EpisodeCalendarEntry'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'episode'),
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
Query$event _parserFn$Query$event(Map<String, dynamic> data) =>
    Query$event.fromJson(data);
typedef OnQueryComplete$Query$event = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$event?,
);

class Options$Query$event extends graphql.QueryOptions<Query$event> {
  Options$Query$event({
    String? operationName,
    required Variables$Query$event variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$event? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$event? onComplete,
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
                    data == null ? null : _parserFn$Query$event(data),
                  ),
          onError: onError,
          document: documentNodeQueryevent,
          parserFn: _parserFn$Query$event,
        );

  final OnQueryComplete$Query$event? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$event extends graphql.WatchQueryOptions<Query$event> {
  WatchOptions$Query$event({
    String? operationName,
    required Variables$Query$event variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$event? typedOptimisticResult,
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
          document: documentNodeQueryevent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$event,
        );
}

class FetchMoreOptions$Query$event extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$event({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$event variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryevent,
        );
}

extension ClientExtension$Query$event on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$event>> query$event(
          Options$Query$event options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$event> watchQuery$event(
          WatchOptions$Query$event options) =>
      this.watchQuery(options);
  void writeQuery$event({
    required Query$event data,
    required Variables$Query$event variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryevent),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$event? readQuery$event({
    required Variables$Query$event variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryevent),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$event.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$event> useQuery$event(
        Options$Query$event options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$event> useWatchQuery$event(
        WatchOptions$Query$event options) =>
    graphql_flutter.useWatchQuery(options);

class Query$event$Widget extends graphql_flutter.Query<Query$event> {
  Query$event$Widget({
    widgets.Key? key,
    required Options$Query$event options,
    required graphql_flutter.QueryBuilder<Query$event> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$event$event {
  Query$event$event({
    required this.title,
    required this.entries,
    this.$__typename = 'Event',
  });

  factory Query$event$event.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$entries = json['entries'];
    final l$$__typename = json['__typename'];
    return Query$event$event(
      title: (l$title as String),
      entries: (l$entries as List<dynamic>)
          .map((e) =>
              Query$event$event$entries.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final List<Query$event$event$entries> entries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$entries = entries;
    _resultData['entries'] = l$entries.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$entries = entries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      Object.hashAll(l$entries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$event$event) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$event$event on Query$event$event {
  CopyWith$Query$event$event<Query$event$event> get copyWith =>
      CopyWith$Query$event$event(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$event$event<TRes> {
  factory CopyWith$Query$event$event(
    Query$event$event instance,
    TRes Function(Query$event$event) then,
  ) = _CopyWithImpl$Query$event$event;

  factory CopyWith$Query$event$event.stub(TRes res) =
      _CopyWithStubImpl$Query$event$event;

  TRes call({
    String? title,
    List<Query$event$event$entries>? entries,
    String? $__typename,
  });
  TRes entries(
      Iterable<Query$event$event$entries> Function(
              Iterable<
                  CopyWith$Query$event$event$entries<
                      Query$event$event$entries>>)
          _fn);
}

class _CopyWithImpl$Query$event$event<TRes>
    implements CopyWith$Query$event$event<TRes> {
  _CopyWithImpl$Query$event$event(
    this._instance,
    this._then,
  );

  final Query$event$event _instance;

  final TRes Function(Query$event$event) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? entries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$event$event(
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        entries: entries == _undefined || entries == null
            ? _instance.entries
            : (entries as List<Query$event$event$entries>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes entries(
          Iterable<Query$event$event$entries> Function(
                  Iterable<
                      CopyWith$Query$event$event$entries<
                          Query$event$event$entries>>)
              _fn) =>
      call(
          entries: _fn(
              _instance.entries.map((e) => CopyWith$Query$event$event$entries(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$event$event<TRes>
    implements CopyWith$Query$event$event<TRes> {
  _CopyWithStubImpl$Query$event$event(this._res);

  TRes _res;

  call({
    String? title,
    List<Query$event$event$entries>? entries,
    String? $__typename,
  }) =>
      _res;

  entries(_fn) => _res;
}

class Query$event$event$entries {
  Query$event$event$entries({
    required this.$__typename,
    required this.id,
    required this.title,
    required this.description,
    required this.start,
    required this.end,
  });

  factory Query$event$event$entries.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "EpisodeCalendarEntry":
        return Query$event$event$entries$$EpisodeCalendarEntry.fromJson(json);

      case "SimpleCalendarEntry":
        return Query$event$event$entries$$SimpleCalendarEntry.fromJson(json);

      case "SeasonCalendarEntry":
        return Query$event$event$entries$$SeasonCalendarEntry.fromJson(json);

      case "ShowCalendarEntry":
        return Query$event$event$entries$$ShowCalendarEntry.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        final l$id = json['id'];
        final l$title = json['title'];
        final l$description = json['description'];
        final l$start = json['start'];
        final l$end = json['end'];
        return Query$event$event$entries(
          $__typename: (l$$__typename as String),
          id: (l$id as String),
          title: (l$title as String),
          description: (l$description as String),
          start: (l$start as String),
          end: (l$end as String),
        );
    }
  }

  final String $__typename;

  final String id;

  final String title;

  final String description;

  final String start;

  final String end;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$start = start;
    _resultData['start'] = l$start;
    final l$end = end;
    _resultData['end'] = l$end;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$start = start;
    final l$end = end;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$title,
      l$description,
      l$start,
      l$end,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$event$event$entries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    return true;
  }
}

extension UtilityExtension$Query$event$event$entries
    on Query$event$event$entries {
  CopyWith$Query$event$event$entries<Query$event$event$entries> get copyWith =>
      CopyWith$Query$event$event$entries(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$event$event$entries$$EpisodeCalendarEntry)
        episodeCalendarEntry,
    required _T Function(Query$event$event$entries$$SimpleCalendarEntry)
        simpleCalendarEntry,
    required _T Function(Query$event$event$entries$$SeasonCalendarEntry)
        seasonCalendarEntry,
    required _T Function(Query$event$event$entries$$ShowCalendarEntry)
        showCalendarEntry,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "EpisodeCalendarEntry":
        return episodeCalendarEntry(
            this as Query$event$event$entries$$EpisodeCalendarEntry);

      case "SimpleCalendarEntry":
        return simpleCalendarEntry(
            this as Query$event$event$entries$$SimpleCalendarEntry);

      case "SeasonCalendarEntry":
        return seasonCalendarEntry(
            this as Query$event$event$entries$$SeasonCalendarEntry);

      case "ShowCalendarEntry":
        return showCalendarEntry(
            this as Query$event$event$entries$$ShowCalendarEntry);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$event$event$entries$$EpisodeCalendarEntry)?
        episodeCalendarEntry,
    _T Function(Query$event$event$entries$$SimpleCalendarEntry)?
        simpleCalendarEntry,
    _T Function(Query$event$event$entries$$SeasonCalendarEntry)?
        seasonCalendarEntry,
    _T Function(Query$event$event$entries$$ShowCalendarEntry)?
        showCalendarEntry,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "EpisodeCalendarEntry":
        if (episodeCalendarEntry != null) {
          return episodeCalendarEntry(
              this as Query$event$event$entries$$EpisodeCalendarEntry);
        } else {
          return orElse();
        }

      case "SimpleCalendarEntry":
        if (simpleCalendarEntry != null) {
          return simpleCalendarEntry(
              this as Query$event$event$entries$$SimpleCalendarEntry);
        } else {
          return orElse();
        }

      case "SeasonCalendarEntry":
        if (seasonCalendarEntry != null) {
          return seasonCalendarEntry(
              this as Query$event$event$entries$$SeasonCalendarEntry);
        } else {
          return orElse();
        }

      case "ShowCalendarEntry":
        if (showCalendarEntry != null) {
          return showCalendarEntry(
              this as Query$event$event$entries$$ShowCalendarEntry);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$event$event$entries<TRes> {
  factory CopyWith$Query$event$event$entries(
    Query$event$event$entries instance,
    TRes Function(Query$event$event$entries) then,
  ) = _CopyWithImpl$Query$event$event$entries;

  factory CopyWith$Query$event$event$entries.stub(TRes res) =
      _CopyWithStubImpl$Query$event$event$entries;

  TRes call({
    String? $__typename,
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
  });
}

class _CopyWithImpl$Query$event$event$entries<TRes>
    implements CopyWith$Query$event$event$entries<TRes> {
  _CopyWithImpl$Query$event$event$entries(
    this._instance,
    this._then,
  );

  final Query$event$event$entries _instance;

  final TRes Function(Query$event$event$entries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
  }) =>
      _then(Query$event$event$entries(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        start: start == _undefined || start == null
            ? _instance.start
            : (start as String),
        end: end == _undefined || end == null ? _instance.end : (end as String),
      ));
}

class _CopyWithStubImpl$Query$event$event$entries<TRes>
    implements CopyWith$Query$event$event$entries<TRes> {
  _CopyWithStubImpl$Query$event$event$entries(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
  }) =>
      _res;
}

class Query$event$event$entries$$EpisodeCalendarEntry
    implements Query$event$event$entries {
  Query$event$event$entries$$EpisodeCalendarEntry({
    this.episode,
    this.$__typename = 'EpisodeCalendarEntry',
    required this.id,
    required this.title,
    required this.description,
    required this.start,
    required this.end,
  });

  factory Query$event$event$entries$$EpisodeCalendarEntry.fromJson(
      Map<String, dynamic> json) {
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$start = json['start'];
    final l$end = json['end'];
    return Query$event$event$entries$$EpisodeCalendarEntry(
      episode: l$episode == null
          ? null
          : Query$event$event$entries$$EpisodeCalendarEntry$episode.fromJson(
              (l$episode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String),
      start: (l$start as String),
      end: (l$end as String),
    );
  }

  final Query$event$event$entries$$EpisodeCalendarEntry$episode? episode;

  final String $__typename;

  final String id;

  final String title;

  final String description;

  final String start;

  final String end;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$episode = episode;
    _resultData['episode'] = l$episode?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$start = start;
    _resultData['start'] = l$start;
    final l$end = end;
    _resultData['end'] = l$end;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$episode = episode;
    final l$$__typename = $__typename;
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$start = start;
    final l$end = end;
    return Object.hashAll([
      l$episode,
      l$$__typename,
      l$id,
      l$title,
      l$description,
      l$start,
      l$end,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$event$event$entries$$EpisodeCalendarEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    return true;
  }
}

extension UtilityExtension$Query$event$event$entries$$EpisodeCalendarEntry
    on Query$event$event$entries$$EpisodeCalendarEntry {
  CopyWith$Query$event$event$entries$$EpisodeCalendarEntry<
          Query$event$event$entries$$EpisodeCalendarEntry>
      get copyWith => CopyWith$Query$event$event$entries$$EpisodeCalendarEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$event$event$entries$$EpisodeCalendarEntry<TRes> {
  factory CopyWith$Query$event$event$entries$$EpisodeCalendarEntry(
    Query$event$event$entries$$EpisodeCalendarEntry instance,
    TRes Function(Query$event$event$entries$$EpisodeCalendarEntry) then,
  ) = _CopyWithImpl$Query$event$event$entries$$EpisodeCalendarEntry;

  factory CopyWith$Query$event$event$entries$$EpisodeCalendarEntry.stub(
          TRes res) =
      _CopyWithStubImpl$Query$event$event$entries$$EpisodeCalendarEntry;

  TRes call({
    Query$event$event$entries$$EpisodeCalendarEntry$episode? episode,
    String? $__typename,
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
  });
  CopyWith$Query$event$event$entries$$EpisodeCalendarEntry$episode<TRes>
      get episode;
}

class _CopyWithImpl$Query$event$event$entries$$EpisodeCalendarEntry<TRes>
    implements CopyWith$Query$event$event$entries$$EpisodeCalendarEntry<TRes> {
  _CopyWithImpl$Query$event$event$entries$$EpisodeCalendarEntry(
    this._instance,
    this._then,
  );

  final Query$event$event$entries$$EpisodeCalendarEntry _instance;

  final TRes Function(Query$event$event$entries$$EpisodeCalendarEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? episode = _undefined,
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
  }) =>
      _then(Query$event$event$entries$$EpisodeCalendarEntry(
        episode: episode == _undefined
            ? _instance.episode
            : (episode
                as Query$event$event$entries$$EpisodeCalendarEntry$episode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        start: start == _undefined || start == null
            ? _instance.start
            : (start as String),
        end: end == _undefined || end == null ? _instance.end : (end as String),
      ));

  CopyWith$Query$event$event$entries$$EpisodeCalendarEntry$episode<TRes>
      get episode {
    final local$episode = _instance.episode;
    return local$episode == null
        ? CopyWith$Query$event$event$entries$$EpisodeCalendarEntry$episode.stub(
            _then(_instance))
        : CopyWith$Query$event$event$entries$$EpisodeCalendarEntry$episode(
            local$episode, (e) => call(episode: e));
  }
}

class _CopyWithStubImpl$Query$event$event$entries$$EpisodeCalendarEntry<TRes>
    implements CopyWith$Query$event$event$entries$$EpisodeCalendarEntry<TRes> {
  _CopyWithStubImpl$Query$event$event$entries$$EpisodeCalendarEntry(this._res);

  TRes _res;

  call({
    Query$event$event$entries$$EpisodeCalendarEntry$episode? episode,
    String? $__typename,
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
  }) =>
      _res;

  CopyWith$Query$event$event$entries$$EpisodeCalendarEntry$episode<TRes>
      get episode =>
          CopyWith$Query$event$event$entries$$EpisodeCalendarEntry$episode.stub(
              _res);
}

class Query$event$event$entries$$EpisodeCalendarEntry$episode {
  Query$event$event$entries$$EpisodeCalendarEntry$episode({
    required this.id,
    this.$__typename = 'Episode',
  });

  factory Query$event$event$entries$$EpisodeCalendarEntry$episode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$event$event$entries$$EpisodeCalendarEntry$episode(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$event$event$entries$$EpisodeCalendarEntry$episode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$event$event$entries$$EpisodeCalendarEntry$episode
    on Query$event$event$entries$$EpisodeCalendarEntry$episode {
  CopyWith$Query$event$event$entries$$EpisodeCalendarEntry$episode<
          Query$event$event$entries$$EpisodeCalendarEntry$episode>
      get copyWith =>
          CopyWith$Query$event$event$entries$$EpisodeCalendarEntry$episode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$event$event$entries$$EpisodeCalendarEntry$episode<
    TRes> {
  factory CopyWith$Query$event$event$entries$$EpisodeCalendarEntry$episode(
    Query$event$event$entries$$EpisodeCalendarEntry$episode instance,
    TRes Function(Query$event$event$entries$$EpisodeCalendarEntry$episode) then,
  ) = _CopyWithImpl$Query$event$event$entries$$EpisodeCalendarEntry$episode;

  factory CopyWith$Query$event$event$entries$$EpisodeCalendarEntry$episode.stub(
          TRes res) =
      _CopyWithStubImpl$Query$event$event$entries$$EpisodeCalendarEntry$episode;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$event$event$entries$$EpisodeCalendarEntry$episode<
        TRes>
    implements
        CopyWith$Query$event$event$entries$$EpisodeCalendarEntry$episode<TRes> {
  _CopyWithImpl$Query$event$event$entries$$EpisodeCalendarEntry$episode(
    this._instance,
    this._then,
  );

  final Query$event$event$entries$$EpisodeCalendarEntry$episode _instance;

  final TRes Function(Query$event$event$entries$$EpisodeCalendarEntry$episode)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$event$event$entries$$EpisodeCalendarEntry$episode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$event$event$entries$$EpisodeCalendarEntry$episode<
        TRes>
    implements
        CopyWith$Query$event$event$entries$$EpisodeCalendarEntry$episode<TRes> {
  _CopyWithStubImpl$Query$event$event$entries$$EpisodeCalendarEntry$episode(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$event$event$entries$$SimpleCalendarEntry
    implements Query$event$event$entries {
  Query$event$event$entries$$SimpleCalendarEntry({
    this.$__typename = 'SimpleCalendarEntry',
    required this.id,
    required this.title,
    required this.description,
    required this.start,
    required this.end,
  });

  factory Query$event$event$entries$$SimpleCalendarEntry.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$start = json['start'];
    final l$end = json['end'];
    return Query$event$event$entries$$SimpleCalendarEntry(
      $__typename: (l$$__typename as String),
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String),
      start: (l$start as String),
      end: (l$end as String),
    );
  }

  final String $__typename;

  final String id;

  final String title;

  final String description;

  final String start;

  final String end;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$start = start;
    _resultData['start'] = l$start;
    final l$end = end;
    _resultData['end'] = l$end;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$start = start;
    final l$end = end;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$title,
      l$description,
      l$start,
      l$end,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$event$event$entries$$SimpleCalendarEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    return true;
  }
}

extension UtilityExtension$Query$event$event$entries$$SimpleCalendarEntry
    on Query$event$event$entries$$SimpleCalendarEntry {
  CopyWith$Query$event$event$entries$$SimpleCalendarEntry<
          Query$event$event$entries$$SimpleCalendarEntry>
      get copyWith => CopyWith$Query$event$event$entries$$SimpleCalendarEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$event$event$entries$$SimpleCalendarEntry<TRes> {
  factory CopyWith$Query$event$event$entries$$SimpleCalendarEntry(
    Query$event$event$entries$$SimpleCalendarEntry instance,
    TRes Function(Query$event$event$entries$$SimpleCalendarEntry) then,
  ) = _CopyWithImpl$Query$event$event$entries$$SimpleCalendarEntry;

  factory CopyWith$Query$event$event$entries$$SimpleCalendarEntry.stub(
          TRes res) =
      _CopyWithStubImpl$Query$event$event$entries$$SimpleCalendarEntry;

  TRes call({
    String? $__typename,
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
  });
}

class _CopyWithImpl$Query$event$event$entries$$SimpleCalendarEntry<TRes>
    implements CopyWith$Query$event$event$entries$$SimpleCalendarEntry<TRes> {
  _CopyWithImpl$Query$event$event$entries$$SimpleCalendarEntry(
    this._instance,
    this._then,
  );

  final Query$event$event$entries$$SimpleCalendarEntry _instance;

  final TRes Function(Query$event$event$entries$$SimpleCalendarEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
  }) =>
      _then(Query$event$event$entries$$SimpleCalendarEntry(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        start: start == _undefined || start == null
            ? _instance.start
            : (start as String),
        end: end == _undefined || end == null ? _instance.end : (end as String),
      ));
}

class _CopyWithStubImpl$Query$event$event$entries$$SimpleCalendarEntry<TRes>
    implements CopyWith$Query$event$event$entries$$SimpleCalendarEntry<TRes> {
  _CopyWithStubImpl$Query$event$event$entries$$SimpleCalendarEntry(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
  }) =>
      _res;
}

class Query$event$event$entries$$SeasonCalendarEntry
    implements Query$event$event$entries {
  Query$event$event$entries$$SeasonCalendarEntry({
    this.$__typename = 'SeasonCalendarEntry',
    required this.id,
    required this.title,
    required this.description,
    required this.start,
    required this.end,
  });

  factory Query$event$event$entries$$SeasonCalendarEntry.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$start = json['start'];
    final l$end = json['end'];
    return Query$event$event$entries$$SeasonCalendarEntry(
      $__typename: (l$$__typename as String),
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String),
      start: (l$start as String),
      end: (l$end as String),
    );
  }

  final String $__typename;

  final String id;

  final String title;

  final String description;

  final String start;

  final String end;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$start = start;
    _resultData['start'] = l$start;
    final l$end = end;
    _resultData['end'] = l$end;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$start = start;
    final l$end = end;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$title,
      l$description,
      l$start,
      l$end,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$event$event$entries$$SeasonCalendarEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    return true;
  }
}

extension UtilityExtension$Query$event$event$entries$$SeasonCalendarEntry
    on Query$event$event$entries$$SeasonCalendarEntry {
  CopyWith$Query$event$event$entries$$SeasonCalendarEntry<
          Query$event$event$entries$$SeasonCalendarEntry>
      get copyWith => CopyWith$Query$event$event$entries$$SeasonCalendarEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$event$event$entries$$SeasonCalendarEntry<TRes> {
  factory CopyWith$Query$event$event$entries$$SeasonCalendarEntry(
    Query$event$event$entries$$SeasonCalendarEntry instance,
    TRes Function(Query$event$event$entries$$SeasonCalendarEntry) then,
  ) = _CopyWithImpl$Query$event$event$entries$$SeasonCalendarEntry;

  factory CopyWith$Query$event$event$entries$$SeasonCalendarEntry.stub(
          TRes res) =
      _CopyWithStubImpl$Query$event$event$entries$$SeasonCalendarEntry;

  TRes call({
    String? $__typename,
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
  });
}

class _CopyWithImpl$Query$event$event$entries$$SeasonCalendarEntry<TRes>
    implements CopyWith$Query$event$event$entries$$SeasonCalendarEntry<TRes> {
  _CopyWithImpl$Query$event$event$entries$$SeasonCalendarEntry(
    this._instance,
    this._then,
  );

  final Query$event$event$entries$$SeasonCalendarEntry _instance;

  final TRes Function(Query$event$event$entries$$SeasonCalendarEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
  }) =>
      _then(Query$event$event$entries$$SeasonCalendarEntry(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        start: start == _undefined || start == null
            ? _instance.start
            : (start as String),
        end: end == _undefined || end == null ? _instance.end : (end as String),
      ));
}

class _CopyWithStubImpl$Query$event$event$entries$$SeasonCalendarEntry<TRes>
    implements CopyWith$Query$event$event$entries$$SeasonCalendarEntry<TRes> {
  _CopyWithStubImpl$Query$event$event$entries$$SeasonCalendarEntry(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
  }) =>
      _res;
}

class Query$event$event$entries$$ShowCalendarEntry
    implements Query$event$event$entries {
  Query$event$event$entries$$ShowCalendarEntry({
    this.$__typename = 'ShowCalendarEntry',
    required this.id,
    required this.title,
    required this.description,
    required this.start,
    required this.end,
  });

  factory Query$event$event$entries$$ShowCalendarEntry.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$start = json['start'];
    final l$end = json['end'];
    return Query$event$event$entries$$ShowCalendarEntry(
      $__typename: (l$$__typename as String),
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String),
      start: (l$start as String),
      end: (l$end as String),
    );
  }

  final String $__typename;

  final String id;

  final String title;

  final String description;

  final String start;

  final String end;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$start = start;
    _resultData['start'] = l$start;
    final l$end = end;
    _resultData['end'] = l$end;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$start = start;
    final l$end = end;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$title,
      l$description,
      l$start,
      l$end,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$event$event$entries$$ShowCalendarEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    return true;
  }
}

extension UtilityExtension$Query$event$event$entries$$ShowCalendarEntry
    on Query$event$event$entries$$ShowCalendarEntry {
  CopyWith$Query$event$event$entries$$ShowCalendarEntry<
          Query$event$event$entries$$ShowCalendarEntry>
      get copyWith => CopyWith$Query$event$event$entries$$ShowCalendarEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$event$event$entries$$ShowCalendarEntry<TRes> {
  factory CopyWith$Query$event$event$entries$$ShowCalendarEntry(
    Query$event$event$entries$$ShowCalendarEntry instance,
    TRes Function(Query$event$event$entries$$ShowCalendarEntry) then,
  ) = _CopyWithImpl$Query$event$event$entries$$ShowCalendarEntry;

  factory CopyWith$Query$event$event$entries$$ShowCalendarEntry.stub(TRes res) =
      _CopyWithStubImpl$Query$event$event$entries$$ShowCalendarEntry;

  TRes call({
    String? $__typename,
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
  });
}

class _CopyWithImpl$Query$event$event$entries$$ShowCalendarEntry<TRes>
    implements CopyWith$Query$event$event$entries$$ShowCalendarEntry<TRes> {
  _CopyWithImpl$Query$event$event$entries$$ShowCalendarEntry(
    this._instance,
    this._then,
  );

  final Query$event$event$entries$$ShowCalendarEntry _instance;

  final TRes Function(Query$event$event$entries$$ShowCalendarEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
  }) =>
      _then(Query$event$event$entries$$ShowCalendarEntry(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        start: start == _undefined || start == null
            ? _instance.start
            : (start as String),
        end: end == _undefined || end == null ? _instance.end : (end as String),
      ));
}

class _CopyWithStubImpl$Query$event$event$entries$$ShowCalendarEntry<TRes>
    implements CopyWith$Query$event$event$entries$$ShowCalendarEntry<TRes> {
  _CopyWithStubImpl$Query$event$event$entries$$ShowCalendarEntry(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
  }) =>
      _res;
}
