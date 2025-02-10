import '../episode.graphql.dart';
import '../page.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetShow {
  factory Variables$Query$GetShow({required String id}) =>
      Variables$Query$GetShow._({
        r'id': id,
      });

  Variables$Query$GetShow._(this._$data);

  factory Variables$Query$GetShow.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetShow._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetShow<Variables$Query$GetShow> get copyWith =>
      CopyWith$Variables$Query$GetShow(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetShow || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$GetShow<TRes> {
  factory CopyWith$Variables$Query$GetShow(
    Variables$Query$GetShow instance,
    TRes Function(Variables$Query$GetShow) then,
  ) = _CopyWithImpl$Variables$Query$GetShow;

  factory CopyWith$Variables$Query$GetShow.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetShow;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetShow<TRes>
    implements CopyWith$Variables$Query$GetShow<TRes> {
  _CopyWithImpl$Variables$Query$GetShow(
    this._instance,
    this._then,
  );

  final Variables$Query$GetShow _instance;

  final TRes Function(Variables$Query$GetShow) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetShow._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetShow<TRes>
    implements CopyWith$Variables$Query$GetShow<TRes> {
  _CopyWithStubImpl$Variables$Query$GetShow(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetShow {
  Query$GetShow({
    required this.$show,
    this.$__typename = 'QueryRoot',
  });

  factory Query$GetShow.fromJson(Map<String, dynamic> json) {
    final l$$show = json['show'];
    final l$$__typename = json['__typename'];
    return Query$GetShow(
      $show: Query$GetShow$show.fromJson((l$$show as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetShow$show $show;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$show = $show;
    _resultData['show'] = l$$show.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$show = $show;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$$show,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetShow || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$show = $show;
    final lOther$$show = other.$show;
    if (l$$show != lOther$$show) {
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

extension UtilityExtension$Query$GetShow on Query$GetShow {
  CopyWith$Query$GetShow<Query$GetShow> get copyWith => CopyWith$Query$GetShow(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetShow<TRes> {
  factory CopyWith$Query$GetShow(
    Query$GetShow instance,
    TRes Function(Query$GetShow) then,
  ) = _CopyWithImpl$Query$GetShow;

  factory CopyWith$Query$GetShow.stub(TRes res) =
      _CopyWithStubImpl$Query$GetShow;

  TRes call({
    Query$GetShow$show? $show,
    String? $__typename,
  });
  CopyWith$Query$GetShow$show<TRes> get $show;
}

class _CopyWithImpl$Query$GetShow<TRes>
    implements CopyWith$Query$GetShow<TRes> {
  _CopyWithImpl$Query$GetShow(
    this._instance,
    this._then,
  );

  final Query$GetShow _instance;

  final TRes Function(Query$GetShow) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $show = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetShow(
        $show: $show == _undefined || $show == null
            ? _instance.$show
            : ($show as Query$GetShow$show),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetShow$show<TRes> get $show {
    final local$$show = _instance.$show;
    return CopyWith$Query$GetShow$show(local$$show, (e) => call($show: e));
  }
}

class _CopyWithStubImpl$Query$GetShow<TRes>
    implements CopyWith$Query$GetShow<TRes> {
  _CopyWithStubImpl$Query$GetShow(this._res);

  TRes _res;

  call({
    Query$GetShow$show? $show,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetShow$show<TRes> get $show =>
      CopyWith$Query$GetShow$show.stub(_res);
}

const documentNodeQueryGetShow = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetShow'),
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
        name: NameNode(value: 'show'),
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
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seasons'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'dir'),
                value: StringValueNode(
                  value: 'desc',
                  isBlock: false,
                ),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'items'),
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
                    name: NameNode(value: 'number'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'episodes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'items'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          InlineFragmentNode(
                            typeCondition: TypeConditionNode(
                                on: NamedTypeNode(
                              name: NameNode(value: 'Episode'),
                              isNonNull: false,
                            )),
                            directives: [],
                            selectionSet: SelectionSetNode(selections: [
                              FragmentSpreadNode(
                                name: NameNode(value: 'SeasonListEpisode'),
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
  fragmentDefinitionSeasonListEpisode,
  fragmentDefinitionEpisodeThumbnail,
]);
Query$GetShow _parserFn$Query$GetShow(Map<String, dynamic> data) =>
    Query$GetShow.fromJson(data);
typedef OnQueryComplete$Query$GetShow = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetShow?,
);

class Options$Query$GetShow extends graphql.QueryOptions<Query$GetShow> {
  Options$Query$GetShow({
    String? operationName,
    required Variables$Query$GetShow variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetShow? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetShow? onComplete,
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
                    data == null ? null : _parserFn$Query$GetShow(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetShow,
          parserFn: _parserFn$Query$GetShow,
        );

  final OnQueryComplete$Query$GetShow? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetShow
    extends graphql.WatchQueryOptions<Query$GetShow> {
  WatchOptions$Query$GetShow({
    String? operationName,
    required Variables$Query$GetShow variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetShow? typedOptimisticResult,
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
          document: documentNodeQueryGetShow,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetShow,
        );
}

class FetchMoreOptions$Query$GetShow extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetShow({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetShow variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetShow,
        );
}

extension ClientExtension$Query$GetShow on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetShow>> query$GetShow(
          Options$Query$GetShow options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetShow> watchQuery$GetShow(
          WatchOptions$Query$GetShow options) =>
      this.watchQuery(options);
  void writeQuery$GetShow({
    required Query$GetShow data,
    required Variables$Query$GetShow variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetShow),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetShow? readQuery$GetShow({
    required Variables$Query$GetShow variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetShow),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetShow.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetShow> useQuery$GetShow(
        Options$Query$GetShow options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetShow> useWatchQuery$GetShow(
        WatchOptions$Query$GetShow options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetShow$Widget extends graphql_flutter.Query<Query$GetShow> {
  Query$GetShow$Widget({
    widgets.Key? key,
    required Options$Query$GetShow options,
    required graphql_flutter.QueryBuilder<Query$GetShow> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetShow$show {
  Query$GetShow$show({
    required this.id,
    required this.title,
    required this.description,
    this.image,
    required this.seasons,
    this.$__typename = 'Show',
  });

  factory Query$GetShow$show.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$image = json['image'];
    final l$seasons = json['seasons'];
    final l$$__typename = json['__typename'];
    return Query$GetShow$show(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String),
      image: (l$image as String?),
      seasons: Query$GetShow$show$seasons.fromJson(
          (l$seasons as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String description;

  final String? image;

  final Query$GetShow$show$seasons seasons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$seasons = seasons;
    _resultData['seasons'] = l$seasons.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$image = image;
    final l$seasons = seasons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$image,
      l$seasons,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetShow$show || runtimeType != other.runtimeType) {
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
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$seasons = seasons;
    final lOther$seasons = other.seasons;
    if (l$seasons != lOther$seasons) {
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

extension UtilityExtension$Query$GetShow$show on Query$GetShow$show {
  CopyWith$Query$GetShow$show<Query$GetShow$show> get copyWith =>
      CopyWith$Query$GetShow$show(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetShow$show<TRes> {
  factory CopyWith$Query$GetShow$show(
    Query$GetShow$show instance,
    TRes Function(Query$GetShow$show) then,
  ) = _CopyWithImpl$Query$GetShow$show;

  factory CopyWith$Query$GetShow$show.stub(TRes res) =
      _CopyWithStubImpl$Query$GetShow$show;

  TRes call({
    String? id,
    String? title,
    String? description,
    String? image,
    Query$GetShow$show$seasons? seasons,
    String? $__typename,
  });
  CopyWith$Query$GetShow$show$seasons<TRes> get seasons;
}

class _CopyWithImpl$Query$GetShow$show<TRes>
    implements CopyWith$Query$GetShow$show<TRes> {
  _CopyWithImpl$Query$GetShow$show(
    this._instance,
    this._then,
  );

  final Query$GetShow$show _instance;

  final TRes Function(Query$GetShow$show) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? image = _undefined,
    Object? seasons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetShow$show(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        image: image == _undefined ? _instance.image : (image as String?),
        seasons: seasons == _undefined || seasons == null
            ? _instance.seasons
            : (seasons as Query$GetShow$show$seasons),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetShow$show$seasons<TRes> get seasons {
    final local$seasons = _instance.seasons;
    return CopyWith$Query$GetShow$show$seasons(
        local$seasons, (e) => call(seasons: e));
  }
}

class _CopyWithStubImpl$Query$GetShow$show<TRes>
    implements CopyWith$Query$GetShow$show<TRes> {
  _CopyWithStubImpl$Query$GetShow$show(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    String? image,
    Query$GetShow$show$seasons? seasons,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetShow$show$seasons<TRes> get seasons =>
      CopyWith$Query$GetShow$show$seasons.stub(_res);
}

class Query$GetShow$show$seasons {
  Query$GetShow$show$seasons({
    required this.items,
    this.$__typename = 'SeasonPagination',
  });

  factory Query$GetShow$show$seasons.fromJson(Map<String, dynamic> json) {
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$GetShow$show$seasons(
      items: (l$items as List<dynamic>)
          .map((e) => Query$GetShow$show$seasons$items.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetShow$show$seasons$items> items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$items.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetShow$show$seasons ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items.length != lOther$items.length) {
      return false;
    }
    for (int i = 0; i < l$items.length; i++) {
      final l$items$entry = l$items[i];
      final lOther$items$entry = lOther$items[i];
      if (l$items$entry != lOther$items$entry) {
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

extension UtilityExtension$Query$GetShow$show$seasons
    on Query$GetShow$show$seasons {
  CopyWith$Query$GetShow$show$seasons<Query$GetShow$show$seasons>
      get copyWith => CopyWith$Query$GetShow$show$seasons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetShow$show$seasons<TRes> {
  factory CopyWith$Query$GetShow$show$seasons(
    Query$GetShow$show$seasons instance,
    TRes Function(Query$GetShow$show$seasons) then,
  ) = _CopyWithImpl$Query$GetShow$show$seasons;

  factory CopyWith$Query$GetShow$show$seasons.stub(TRes res) =
      _CopyWithStubImpl$Query$GetShow$show$seasons;

  TRes call({
    List<Query$GetShow$show$seasons$items>? items,
    String? $__typename,
  });
  TRes items(
      Iterable<Query$GetShow$show$seasons$items> Function(
              Iterable<
                  CopyWith$Query$GetShow$show$seasons$items<
                      Query$GetShow$show$seasons$items>>)
          _fn);
}

class _CopyWithImpl$Query$GetShow$show$seasons<TRes>
    implements CopyWith$Query$GetShow$show$seasons<TRes> {
  _CopyWithImpl$Query$GetShow$show$seasons(
    this._instance,
    this._then,
  );

  final Query$GetShow$show$seasons _instance;

  final TRes Function(Query$GetShow$show$seasons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetShow$show$seasons(
        items: items == _undefined || items == null
            ? _instance.items
            : (items as List<Query$GetShow$show$seasons$items>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes items(
          Iterable<Query$GetShow$show$seasons$items> Function(
                  Iterable<
                      CopyWith$Query$GetShow$show$seasons$items<
                          Query$GetShow$show$seasons$items>>)
              _fn) =>
      call(
          items: _fn(_instance.items
              .map((e) => CopyWith$Query$GetShow$show$seasons$items(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetShow$show$seasons<TRes>
    implements CopyWith$Query$GetShow$show$seasons<TRes> {
  _CopyWithStubImpl$Query$GetShow$show$seasons(this._res);

  TRes _res;

  call({
    List<Query$GetShow$show$seasons$items>? items,
    String? $__typename,
  }) =>
      _res;

  items(_fn) => _res;
}

class Query$GetShow$show$seasons$items {
  Query$GetShow$show$seasons$items({
    required this.id,
    required this.title,
    required this.number,
    required this.episodes,
    this.$__typename = 'Season',
  });

  factory Query$GetShow$show$seasons$items.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$number = json['number'];
    final l$episodes = json['episodes'];
    final l$$__typename = json['__typename'];
    return Query$GetShow$show$seasons$items(
      id: (l$id as String),
      title: (l$title as String),
      number: (l$number as int),
      episodes: Query$GetShow$show$seasons$items$episodes.fromJson(
          (l$episodes as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final int number;

  final Query$GetShow$show$seasons$items$episodes episodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$number = number;
    _resultData['number'] = l$number;
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$number = number;
    final l$episodes = episodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$number,
      l$episodes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetShow$show$seasons$items ||
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
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
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

extension UtilityExtension$Query$GetShow$show$seasons$items
    on Query$GetShow$show$seasons$items {
  CopyWith$Query$GetShow$show$seasons$items<Query$GetShow$show$seasons$items>
      get copyWith => CopyWith$Query$GetShow$show$seasons$items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetShow$show$seasons$items<TRes> {
  factory CopyWith$Query$GetShow$show$seasons$items(
    Query$GetShow$show$seasons$items instance,
    TRes Function(Query$GetShow$show$seasons$items) then,
  ) = _CopyWithImpl$Query$GetShow$show$seasons$items;

  factory CopyWith$Query$GetShow$show$seasons$items.stub(TRes res) =
      _CopyWithStubImpl$Query$GetShow$show$seasons$items;

  TRes call({
    String? id,
    String? title,
    int? number,
    Query$GetShow$show$seasons$items$episodes? episodes,
    String? $__typename,
  });
  CopyWith$Query$GetShow$show$seasons$items$episodes<TRes> get episodes;
}

class _CopyWithImpl$Query$GetShow$show$seasons$items<TRes>
    implements CopyWith$Query$GetShow$show$seasons$items<TRes> {
  _CopyWithImpl$Query$GetShow$show$seasons$items(
    this._instance,
    this._then,
  );

  final Query$GetShow$show$seasons$items _instance;

  final TRes Function(Query$GetShow$show$seasons$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? number = _undefined,
    Object? episodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetShow$show$seasons$items(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        number: number == _undefined || number == null
            ? _instance.number
            : (number as int),
        episodes: episodes == _undefined || episodes == null
            ? _instance.episodes
            : (episodes as Query$GetShow$show$seasons$items$episodes),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetShow$show$seasons$items$episodes<TRes> get episodes {
    final local$episodes = _instance.episodes;
    return CopyWith$Query$GetShow$show$seasons$items$episodes(
        local$episodes, (e) => call(episodes: e));
  }
}

class _CopyWithStubImpl$Query$GetShow$show$seasons$items<TRes>
    implements CopyWith$Query$GetShow$show$seasons$items<TRes> {
  _CopyWithStubImpl$Query$GetShow$show$seasons$items(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    int? number,
    Query$GetShow$show$seasons$items$episodes? episodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetShow$show$seasons$items$episodes<TRes> get episodes =>
      CopyWith$Query$GetShow$show$seasons$items$episodes.stub(_res);
}

class Query$GetShow$show$seasons$items$episodes {
  Query$GetShow$show$seasons$items$episodes({
    required this.items,
    this.$__typename = 'EpisodePagination',
  });

  factory Query$GetShow$show$seasons$items$episodes.fromJson(
      Map<String, dynamic> json) {
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$GetShow$show$seasons$items$episodes(
      items: (l$items as List<dynamic>)
          .map((e) => Query$GetShow$show$seasons$items$episodes$items.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetShow$show$seasons$items$episodes$items> items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$items.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetShow$show$seasons$items$episodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items.length != lOther$items.length) {
      return false;
    }
    for (int i = 0; i < l$items.length; i++) {
      final l$items$entry = l$items[i];
      final lOther$items$entry = lOther$items[i];
      if (l$items$entry != lOther$items$entry) {
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

extension UtilityExtension$Query$GetShow$show$seasons$items$episodes
    on Query$GetShow$show$seasons$items$episodes {
  CopyWith$Query$GetShow$show$seasons$items$episodes<
          Query$GetShow$show$seasons$items$episodes>
      get copyWith => CopyWith$Query$GetShow$show$seasons$items$episodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetShow$show$seasons$items$episodes<TRes> {
  factory CopyWith$Query$GetShow$show$seasons$items$episodes(
    Query$GetShow$show$seasons$items$episodes instance,
    TRes Function(Query$GetShow$show$seasons$items$episodes) then,
  ) = _CopyWithImpl$Query$GetShow$show$seasons$items$episodes;

  factory CopyWith$Query$GetShow$show$seasons$items$episodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes;

  TRes call({
    List<Query$GetShow$show$seasons$items$episodes$items>? items,
    String? $__typename,
  });
  TRes items(
      Iterable<Query$GetShow$show$seasons$items$episodes$items> Function(
              Iterable<
                  CopyWith$Query$GetShow$show$seasons$items$episodes$items<
                      Query$GetShow$show$seasons$items$episodes$items>>)
          _fn);
}

class _CopyWithImpl$Query$GetShow$show$seasons$items$episodes<TRes>
    implements CopyWith$Query$GetShow$show$seasons$items$episodes<TRes> {
  _CopyWithImpl$Query$GetShow$show$seasons$items$episodes(
    this._instance,
    this._then,
  );

  final Query$GetShow$show$seasons$items$episodes _instance;

  final TRes Function(Query$GetShow$show$seasons$items$episodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetShow$show$seasons$items$episodes(
        items: items == _undefined || items == null
            ? _instance.items
            : (items as List<Query$GetShow$show$seasons$items$episodes$items>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes items(
          Iterable<Query$GetShow$show$seasons$items$episodes$items> Function(
                  Iterable<
                      CopyWith$Query$GetShow$show$seasons$items$episodes$items<
                          Query$GetShow$show$seasons$items$episodes$items>>)
              _fn) =>
      call(
          items: _fn(_instance.items.map(
              (e) => CopyWith$Query$GetShow$show$seasons$items$episodes$items(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes<TRes>
    implements CopyWith$Query$GetShow$show$seasons$items$episodes<TRes> {
  _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes(this._res);

  TRes _res;

  call({
    List<Query$GetShow$show$seasons$items$episodes$items>? items,
    String? $__typename,
  }) =>
      _res;

  items(_fn) => _res;
}

class Query$GetShow$show$seasons$items$episodes$items
    implements Fragment$SeasonListEpisode, Fragment$EpisodeThumbnail {
  Query$GetShow$show$seasons$items$episodes$items({
    required this.id,
    this.image,
    this.number,
    required this.title,
    required this.publishDate,
    required this.ageRating,
    required this.duration,
    required this.locked,
    required this.lessons,
    this.progress,
    this.season,
    this.$__typename = 'Episode',
  });

  factory Query$GetShow$show$seasons$items$episodes$items.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$image = json['image'];
    final l$number = json['number'];
    final l$title = json['title'];
    final l$publishDate = json['publishDate'];
    final l$ageRating = json['ageRating'];
    final l$duration = json['duration'];
    final l$locked = json['locked'];
    final l$lessons = json['lessons'];
    final l$progress = json['progress'];
    final l$season = json['season'];
    final l$$__typename = json['__typename'];
    return Query$GetShow$show$seasons$items$episodes$items(
      id: (l$id as String),
      image: (l$image as String?),
      number: (l$number as int?),
      title: (l$title as String),
      publishDate: (l$publishDate as String),
      ageRating: (l$ageRating as String),
      duration: (l$duration as int),
      locked: (l$locked as bool),
      lessons: Query$GetShow$show$seasons$items$episodes$items$lessons.fromJson(
          (l$lessons as Map<String, dynamic>)),
      progress: (l$progress as int?),
      season: l$season == null
          ? null
          : Query$GetShow$show$seasons$items$episodes$items$season.fromJson(
              (l$season as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? image;

  final int? number;

  final String title;

  final String publishDate;

  final String ageRating;

  final int duration;

  final bool locked;

  final Query$GetShow$show$seasons$items$episodes$items$lessons lessons;

  final int? progress;

  final Query$GetShow$show$seasons$items$episodes$items$season? season;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$number = number;
    _resultData['number'] = l$number;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$publishDate = publishDate;
    _resultData['publishDate'] = l$publishDate;
    final l$ageRating = ageRating;
    _resultData['ageRating'] = l$ageRating;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$locked = locked;
    _resultData['locked'] = l$locked;
    final l$lessons = lessons;
    _resultData['lessons'] = l$lessons.toJson();
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$season = season;
    _resultData['season'] = l$season?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$image = image;
    final l$number = number;
    final l$title = title;
    final l$publishDate = publishDate;
    final l$ageRating = ageRating;
    final l$duration = duration;
    final l$locked = locked;
    final l$lessons = lessons;
    final l$progress = progress;
    final l$season = season;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$image,
      l$number,
      l$title,
      l$publishDate,
      l$ageRating,
      l$duration,
      l$locked,
      l$lessons,
      l$progress,
      l$season,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetShow$show$seasons$items$episodes$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$publishDate = publishDate;
    final lOther$publishDate = other.publishDate;
    if (l$publishDate != lOther$publishDate) {
      return false;
    }
    final l$ageRating = ageRating;
    final lOther$ageRating = other.ageRating;
    if (l$ageRating != lOther$ageRating) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$locked = locked;
    final lOther$locked = other.locked;
    if (l$locked != lOther$locked) {
      return false;
    }
    final l$lessons = lessons;
    final lOther$lessons = other.lessons;
    if (l$lessons != lOther$lessons) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
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

extension UtilityExtension$Query$GetShow$show$seasons$items$episodes$items
    on Query$GetShow$show$seasons$items$episodes$items {
  CopyWith$Query$GetShow$show$seasons$items$episodes$items<
          Query$GetShow$show$seasons$items$episodes$items>
      get copyWith => CopyWith$Query$GetShow$show$seasons$items$episodes$items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetShow$show$seasons$items$episodes$items<TRes> {
  factory CopyWith$Query$GetShow$show$seasons$items$episodes$items(
    Query$GetShow$show$seasons$items$episodes$items instance,
    TRes Function(Query$GetShow$show$seasons$items$episodes$items) then,
  ) = _CopyWithImpl$Query$GetShow$show$seasons$items$episodes$items;

  factory CopyWith$Query$GetShow$show$seasons$items$episodes$items.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes$items;

  TRes call({
    String? id,
    String? image,
    int? number,
    String? title,
    String? publishDate,
    String? ageRating,
    int? duration,
    bool? locked,
    Query$GetShow$show$seasons$items$episodes$items$lessons? lessons,
    int? progress,
    Query$GetShow$show$seasons$items$episodes$items$season? season,
    String? $__typename,
  });
  CopyWith$Query$GetShow$show$seasons$items$episodes$items$lessons<TRes>
      get lessons;
  CopyWith$Query$GetShow$show$seasons$items$episodes$items$season<TRes>
      get season;
}

class _CopyWithImpl$Query$GetShow$show$seasons$items$episodes$items<TRes>
    implements CopyWith$Query$GetShow$show$seasons$items$episodes$items<TRes> {
  _CopyWithImpl$Query$GetShow$show$seasons$items$episodes$items(
    this._instance,
    this._then,
  );

  final Query$GetShow$show$seasons$items$episodes$items _instance;

  final TRes Function(Query$GetShow$show$seasons$items$episodes$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? image = _undefined,
    Object? number = _undefined,
    Object? title = _undefined,
    Object? publishDate = _undefined,
    Object? ageRating = _undefined,
    Object? duration = _undefined,
    Object? locked = _undefined,
    Object? lessons = _undefined,
    Object? progress = _undefined,
    Object? season = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetShow$show$seasons$items$episodes$items(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        image: image == _undefined ? _instance.image : (image as String?),
        number: number == _undefined ? _instance.number : (number as int?),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        publishDate: publishDate == _undefined || publishDate == null
            ? _instance.publishDate
            : (publishDate as String),
        ageRating: ageRating == _undefined || ageRating == null
            ? _instance.ageRating
            : (ageRating as String),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as int),
        locked: locked == _undefined || locked == null
            ? _instance.locked
            : (locked as bool),
        lessons: lessons == _undefined || lessons == null
            ? _instance.lessons
            : (lessons
                as Query$GetShow$show$seasons$items$episodes$items$lessons),
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        season: season == _undefined
            ? _instance.season
            : (season
                as Query$GetShow$show$seasons$items$episodes$items$season?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetShow$show$seasons$items$episodes$items$lessons<TRes>
      get lessons {
    final local$lessons = _instance.lessons;
    return CopyWith$Query$GetShow$show$seasons$items$episodes$items$lessons(
        local$lessons, (e) => call(lessons: e));
  }

  CopyWith$Query$GetShow$show$seasons$items$episodes$items$season<TRes>
      get season {
    final local$season = _instance.season;
    return local$season == null
        ? CopyWith$Query$GetShow$show$seasons$items$episodes$items$season.stub(
            _then(_instance))
        : CopyWith$Query$GetShow$show$seasons$items$episodes$items$season(
            local$season, (e) => call(season: e));
  }
}

class _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes$items<TRes>
    implements CopyWith$Query$GetShow$show$seasons$items$episodes$items<TRes> {
  _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes$items(this._res);

  TRes _res;

  call({
    String? id,
    String? image,
    int? number,
    String? title,
    String? publishDate,
    String? ageRating,
    int? duration,
    bool? locked,
    Query$GetShow$show$seasons$items$episodes$items$lessons? lessons,
    int? progress,
    Query$GetShow$show$seasons$items$episodes$items$season? season,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetShow$show$seasons$items$episodes$items$lessons<TRes>
      get lessons =>
          CopyWith$Query$GetShow$show$seasons$items$episodes$items$lessons.stub(
              _res);

  CopyWith$Query$GetShow$show$seasons$items$episodes$items$season<TRes>
      get season =>
          CopyWith$Query$GetShow$show$seasons$items$episodes$items$season.stub(
              _res);
}

class Query$GetShow$show$seasons$items$episodes$items$lessons
    implements Fragment$SeasonListEpisode$lessons {
  Query$GetShow$show$seasons$items$episodes$items$lessons({
    required this.total,
    this.$__typename = 'LessonPagination',
  });

  factory Query$GetShow$show$seasons$items$episodes$items$lessons.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Query$GetShow$show$seasons$items$episodes$items$lessons(
      total: (l$total as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetShow$show$seasons$items$episodes$items$lessons ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Query$GetShow$show$seasons$items$episodes$items$lessons
    on Query$GetShow$show$seasons$items$episodes$items$lessons {
  CopyWith$Query$GetShow$show$seasons$items$episodes$items$lessons<
          Query$GetShow$show$seasons$items$episodes$items$lessons>
      get copyWith =>
          CopyWith$Query$GetShow$show$seasons$items$episodes$items$lessons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetShow$show$seasons$items$episodes$items$lessons<
    TRes> {
  factory CopyWith$Query$GetShow$show$seasons$items$episodes$items$lessons(
    Query$GetShow$show$seasons$items$episodes$items$lessons instance,
    TRes Function(Query$GetShow$show$seasons$items$episodes$items$lessons) then,
  ) = _CopyWithImpl$Query$GetShow$show$seasons$items$episodes$items$lessons;

  factory CopyWith$Query$GetShow$show$seasons$items$episodes$items$lessons.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes$items$lessons;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetShow$show$seasons$items$episodes$items$lessons<
        TRes>
    implements
        CopyWith$Query$GetShow$show$seasons$items$episodes$items$lessons<TRes> {
  _CopyWithImpl$Query$GetShow$show$seasons$items$episodes$items$lessons(
    this._instance,
    this._then,
  );

  final Query$GetShow$show$seasons$items$episodes$items$lessons _instance;

  final TRes Function(Query$GetShow$show$seasons$items$episodes$items$lessons)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetShow$show$seasons$items$episodes$items$lessons(
        total: total == _undefined || total == null
            ? _instance.total
            : (total as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes$items$lessons<
        TRes>
    implements
        CopyWith$Query$GetShow$show$seasons$items$episodes$items$lessons<TRes> {
  _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes$items$lessons(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetShow$show$seasons$items$episodes$items$season
    implements
        Fragment$SeasonListEpisode$season,
        Fragment$EpisodeThumbnail$season {
  Query$GetShow$show$seasons$items$episodes$items$season({
    required this.number,
    required this.$show,
    this.$__typename = 'Season',
  });

  factory Query$GetShow$show$seasons$items$episodes$items$season.fromJson(
      Map<String, dynamic> json) {
    final l$number = json['number'];
    final l$$show = json['show'];
    final l$$__typename = json['__typename'];
    return Query$GetShow$show$seasons$items$episodes$items$season(
      number: (l$number as int),
      $show:
          Query$GetShow$show$seasons$items$episodes$items$season$show.fromJson(
              (l$$show as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int number;

  final Query$GetShow$show$seasons$items$episodes$items$season$show $show;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$number = number;
    _resultData['number'] = l$number;
    final l$$show = $show;
    _resultData['show'] = l$$show.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$number = number;
    final l$$show = $show;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$number,
      l$$show,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetShow$show$seasons$items$episodes$items$season ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$$show = $show;
    final lOther$$show = other.$show;
    if (l$$show != lOther$$show) {
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

extension UtilityExtension$Query$GetShow$show$seasons$items$episodes$items$season
    on Query$GetShow$show$seasons$items$episodes$items$season {
  CopyWith$Query$GetShow$show$seasons$items$episodes$items$season<
          Query$GetShow$show$seasons$items$episodes$items$season>
      get copyWith =>
          CopyWith$Query$GetShow$show$seasons$items$episodes$items$season(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetShow$show$seasons$items$episodes$items$season<
    TRes> {
  factory CopyWith$Query$GetShow$show$seasons$items$episodes$items$season(
    Query$GetShow$show$seasons$items$episodes$items$season instance,
    TRes Function(Query$GetShow$show$seasons$items$episodes$items$season) then,
  ) = _CopyWithImpl$Query$GetShow$show$seasons$items$episodes$items$season;

  factory CopyWith$Query$GetShow$show$seasons$items$episodes$items$season.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes$items$season;

  TRes call({
    int? number,
    Query$GetShow$show$seasons$items$episodes$items$season$show? $show,
    String? $__typename,
  });
  CopyWith$Query$GetShow$show$seasons$items$episodes$items$season$show<TRes>
      get $show;
}

class _CopyWithImpl$Query$GetShow$show$seasons$items$episodes$items$season<TRes>
    implements
        CopyWith$Query$GetShow$show$seasons$items$episodes$items$season<TRes> {
  _CopyWithImpl$Query$GetShow$show$seasons$items$episodes$items$season(
    this._instance,
    this._then,
  );

  final Query$GetShow$show$seasons$items$episodes$items$season _instance;

  final TRes Function(Query$GetShow$show$seasons$items$episodes$items$season)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? number = _undefined,
    Object? $show = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetShow$show$seasons$items$episodes$items$season(
        number: number == _undefined || number == null
            ? _instance.number
            : (number as int),
        $show: $show == _undefined || $show == null
            ? _instance.$show
            : ($show
                as Query$GetShow$show$seasons$items$episodes$items$season$show),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetShow$show$seasons$items$episodes$items$season$show<TRes>
      get $show {
    final local$$show = _instance.$show;
    return CopyWith$Query$GetShow$show$seasons$items$episodes$items$season$show(
        local$$show, (e) => call($show: e));
  }
}

class _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes$items$season<
        TRes>
    implements
        CopyWith$Query$GetShow$show$seasons$items$episodes$items$season<TRes> {
  _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes$items$season(
      this._res);

  TRes _res;

  call({
    int? number,
    Query$GetShow$show$seasons$items$episodes$items$season$show? $show,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetShow$show$seasons$items$episodes$items$season$show<TRes>
      get $show =>
          CopyWith$Query$GetShow$show$seasons$items$episodes$items$season$show
              .stub(_res);
}

class Query$GetShow$show$seasons$items$episodes$items$season$show
    implements
        Fragment$SeasonListEpisode$season$show,
        Fragment$EpisodeThumbnail$season$show {
  Query$GetShow$show$seasons$items$episodes$items$season$show({
    required this.title,
    this.$__typename = 'Show',
  });

  factory Query$GetShow$show$seasons$items$episodes$items$season$show.fromJson(
      Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$GetShow$show$seasons$items$episodes$items$season$show(
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetShow$show$seasons$items$episodes$items$season$show ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$GetShow$show$seasons$items$episodes$items$season$show
    on Query$GetShow$show$seasons$items$episodes$items$season$show {
  CopyWith$Query$GetShow$show$seasons$items$episodes$items$season$show<
          Query$GetShow$show$seasons$items$episodes$items$season$show>
      get copyWith =>
          CopyWith$Query$GetShow$show$seasons$items$episodes$items$season$show(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetShow$show$seasons$items$episodes$items$season$show<
    TRes> {
  factory CopyWith$Query$GetShow$show$seasons$items$episodes$items$season$show(
    Query$GetShow$show$seasons$items$episodes$items$season$show instance,
    TRes Function(Query$GetShow$show$seasons$items$episodes$items$season$show)
        then,
  ) = _CopyWithImpl$Query$GetShow$show$seasons$items$episodes$items$season$show;

  factory CopyWith$Query$GetShow$show$seasons$items$episodes$items$season$show.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes$items$season$show;

  TRes call({
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetShow$show$seasons$items$episodes$items$season$show<
        TRes>
    implements
        CopyWith$Query$GetShow$show$seasons$items$episodes$items$season$show<
            TRes> {
  _CopyWithImpl$Query$GetShow$show$seasons$items$episodes$items$season$show(
    this._instance,
    this._then,
  );

  final Query$GetShow$show$seasons$items$episodes$items$season$show _instance;

  final TRes Function(
      Query$GetShow$show$seasons$items$episodes$items$season$show) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetShow$show$seasons$items$episodes$items$season$show(
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes$items$season$show<
        TRes>
    implements
        CopyWith$Query$GetShow$show$seasons$items$episodes$items$season$show<
            TRes> {
  _CopyWithStubImpl$Query$GetShow$show$seasons$items$episodes$items$season$show(
      this._res);

  TRes _res;

  call({
    String? title,
    String? $__typename,
  }) =>
      _res;
}
