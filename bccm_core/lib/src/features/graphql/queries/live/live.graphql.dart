import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetLive {
  Query$GetLive({
    required this.live,
    this.$__typename = 'QueryRoot',
  });

  factory Query$GetLive.fromJson(Map<String, dynamic> json) {
    final l$live = json['live'];
    final l$$__typename = json['__typename'];
    return Query$GetLive(
      live: Query$GetLive$live.fromJson((l$live as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetLive$live live;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$live = live;
    _resultData['live'] = l$live.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$live = live;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$live,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetLive || runtimeType != other.runtimeType) {
      return false;
    }
    final l$live = live;
    final lOther$live = other.live;
    if (l$live != lOther$live) {
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

extension UtilityExtension$Query$GetLive on Query$GetLive {
  CopyWith$Query$GetLive<Query$GetLive> get copyWith => CopyWith$Query$GetLive(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetLive<TRes> {
  factory CopyWith$Query$GetLive(
    Query$GetLive instance,
    TRes Function(Query$GetLive) then,
  ) = _CopyWithImpl$Query$GetLive;

  factory CopyWith$Query$GetLive.stub(TRes res) =
      _CopyWithStubImpl$Query$GetLive;

  TRes call({
    Query$GetLive$live? live,
    String? $__typename,
  });
  CopyWith$Query$GetLive$live<TRes> get live;
}

class _CopyWithImpl$Query$GetLive<TRes>
    implements CopyWith$Query$GetLive<TRes> {
  _CopyWithImpl$Query$GetLive(
    this._instance,
    this._then,
  );

  final Query$GetLive _instance;

  final TRes Function(Query$GetLive) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? live = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetLive(
        live: live == _undefined || live == null
            ? _instance.live
            : (live as Query$GetLive$live),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetLive$live<TRes> get live {
    final local$live = _instance.live;
    return CopyWith$Query$GetLive$live(local$live, (e) => call(live: e));
  }
}

class _CopyWithStubImpl$Query$GetLive<TRes>
    implements CopyWith$Query$GetLive<TRes> {
  _CopyWithStubImpl$Query$GetLive(this._res);

  TRes _res;

  call({
    Query$GetLive$live? live,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetLive$live<TRes> get live =>
      CopyWith$Query$GetLive$live.stub(_res);
}

const documentNodeQueryGetLive = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetLive'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'live'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'isOnline'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'expiresAt'),
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
]);
Query$GetLive _parserFn$Query$GetLive(Map<String, dynamic> data) =>
    Query$GetLive.fromJson(data);
typedef OnQueryComplete$Query$GetLive = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetLive?,
);

class Options$Query$GetLive extends graphql.QueryOptions<Query$GetLive> {
  Options$Query$GetLive({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetLive? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetLive? onComplete,
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
                    data == null ? null : _parserFn$Query$GetLive(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetLive,
          parserFn: _parserFn$Query$GetLive,
        );

  final OnQueryComplete$Query$GetLive? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetLive
    extends graphql.WatchQueryOptions<Query$GetLive> {
  WatchOptions$Query$GetLive({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetLive? typedOptimisticResult,
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
          document: documentNodeQueryGetLive,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetLive,
        );
}

class FetchMoreOptions$Query$GetLive extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetLive({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetLive,
        );
}

extension ClientExtension$Query$GetLive on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetLive>> query$GetLive(
          [Options$Query$GetLive? options]) async =>
      await this.query(options ?? Options$Query$GetLive());

  graphql.ObservableQuery<Query$GetLive> watchQuery$GetLive(
          [WatchOptions$Query$GetLive? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetLive());

  void writeQuery$GetLive({
    required Query$GetLive data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryGetLive)),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$GetLive? readQuery$GetLive({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetLive)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetLive.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetLive> useQuery$GetLive(
        [Options$Query$GetLive? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetLive());
graphql.ObservableQuery<Query$GetLive> useWatchQuery$GetLive(
        [WatchOptions$Query$GetLive? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetLive());

class Query$GetLive$Widget extends graphql_flutter.Query<Query$GetLive> {
  Query$GetLive$Widget({
    widgets.Key? key,
    Options$Query$GetLive? options,
    required graphql_flutter.QueryBuilder<Query$GetLive> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetLive(),
          builder: builder,
        );
}

class Query$GetLive$live {
  Query$GetLive$live({
    required this.isOnline,
    this.url,
    this.expiresAt,
    this.$__typename = 'Live',
  });

  factory Query$GetLive$live.fromJson(Map<String, dynamic> json) {
    final l$isOnline = json['isOnline'];
    final l$url = json['url'];
    final l$expiresAt = json['expiresAt'];
    final l$$__typename = json['__typename'];
    return Query$GetLive$live(
      isOnline: (l$isOnline as bool),
      url: (l$url as String?),
      expiresAt: (l$expiresAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isOnline;

  final String? url;

  final String? expiresAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isOnline = isOnline;
    _resultData['isOnline'] = l$isOnline;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$expiresAt = expiresAt;
    _resultData['expiresAt'] = l$expiresAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isOnline = isOnline;
    final l$url = url;
    final l$expiresAt = expiresAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isOnline,
      l$url,
      l$expiresAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetLive$live || runtimeType != other.runtimeType) {
      return false;
    }
    final l$isOnline = isOnline;
    final lOther$isOnline = other.isOnline;
    if (l$isOnline != lOther$isOnline) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (l$expiresAt != lOther$expiresAt) {
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

extension UtilityExtension$Query$GetLive$live on Query$GetLive$live {
  CopyWith$Query$GetLive$live<Query$GetLive$live> get copyWith =>
      CopyWith$Query$GetLive$live(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetLive$live<TRes> {
  factory CopyWith$Query$GetLive$live(
    Query$GetLive$live instance,
    TRes Function(Query$GetLive$live) then,
  ) = _CopyWithImpl$Query$GetLive$live;

  factory CopyWith$Query$GetLive$live.stub(TRes res) =
      _CopyWithStubImpl$Query$GetLive$live;

  TRes call({
    bool? isOnline,
    String? url,
    String? expiresAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetLive$live<TRes>
    implements CopyWith$Query$GetLive$live<TRes> {
  _CopyWithImpl$Query$GetLive$live(
    this._instance,
    this._then,
  );

  final Query$GetLive$live _instance;

  final TRes Function(Query$GetLive$live) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isOnline = _undefined,
    Object? url = _undefined,
    Object? expiresAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetLive$live(
        isOnline: isOnline == _undefined || isOnline == null
            ? _instance.isOnline
            : (isOnline as bool),
        url: url == _undefined ? _instance.url : (url as String?),
        expiresAt: expiresAt == _undefined
            ? _instance.expiresAt
            : (expiresAt as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetLive$live<TRes>
    implements CopyWith$Query$GetLive$live<TRes> {
  _CopyWithStubImpl$Query$GetLive$live(this._res);

  TRes _res;

  call({
    bool? isOnline,
    String? url,
    String? expiresAt,
    String? $__typename,
  }) =>
      _res;
}
