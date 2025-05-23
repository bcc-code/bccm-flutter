import '../schema/mutations.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$SetDeviceToken {
  factory Variables$Mutation$SetDeviceToken({
    required String token,
    required List<String> languages,
  }) =>
      Variables$Mutation$SetDeviceToken._({
        r'token': token,
        r'languages': languages,
      });

  Variables$Mutation$SetDeviceToken._(this._$data);

  factory Variables$Mutation$SetDeviceToken.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    final l$languages = data['languages'];
    result$data['languages'] =
        (l$languages as List<dynamic>).map((e) => (e as String)).toList();
    return Variables$Mutation$SetDeviceToken._(result$data);
  }

  Map<String, dynamic> _$data;

  String get token => (_$data['token'] as String);

  List<String> get languages => (_$data['languages'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$token = token;
    result$data['token'] = l$token;
    final l$languages = languages;
    result$data['languages'] = l$languages.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$SetDeviceToken<Variables$Mutation$SetDeviceToken>
      get copyWith => CopyWith$Variables$Mutation$SetDeviceToken(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SetDeviceToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$languages = languages;
    final lOther$languages = other.languages;
    if (l$languages.length != lOther$languages.length) {
      return false;
    }
    for (int i = 0; i < l$languages.length; i++) {
      final l$languages$entry = l$languages[i];
      final lOther$languages$entry = lOther$languages[i];
      if (l$languages$entry != lOther$languages$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$languages = languages;
    return Object.hashAll([
      l$token,
      Object.hashAll(l$languages.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SetDeviceToken<TRes> {
  factory CopyWith$Variables$Mutation$SetDeviceToken(
    Variables$Mutation$SetDeviceToken instance,
    TRes Function(Variables$Mutation$SetDeviceToken) then,
  ) = _CopyWithImpl$Variables$Mutation$SetDeviceToken;

  factory CopyWith$Variables$Mutation$SetDeviceToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetDeviceToken;

  TRes call({
    String? token,
    List<String>? languages,
  });
}

class _CopyWithImpl$Variables$Mutation$SetDeviceToken<TRes>
    implements CopyWith$Variables$Mutation$SetDeviceToken<TRes> {
  _CopyWithImpl$Variables$Mutation$SetDeviceToken(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SetDeviceToken _instance;

  final TRes Function(Variables$Mutation$SetDeviceToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? languages = _undefined,
  }) =>
      _then(Variables$Mutation$SetDeviceToken._({
        ..._instance._$data,
        if (token != _undefined && token != null) 'token': (token as String),
        if (languages != _undefined && languages != null)
          'languages': (languages as List<String>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SetDeviceToken<TRes>
    implements CopyWith$Variables$Mutation$SetDeviceToken<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetDeviceToken(this._res);

  TRes _res;

  call({
    String? token,
    List<String>? languages,
  }) =>
      _res;
}

class Mutation$SetDeviceToken {
  Mutation$SetDeviceToken({
    this.setDevicePushToken,
    this.$__typename = 'MutationRoot',
  });

  factory Mutation$SetDeviceToken.fromJson(Map<String, dynamic> json) {
    final l$setDevicePushToken = json['setDevicePushToken'];
    final l$$__typename = json['__typename'];
    return Mutation$SetDeviceToken(
      setDevicePushToken: l$setDevicePushToken == null
          ? null
          : Mutation$SetDeviceToken$setDevicePushToken.fromJson(
              (l$setDevicePushToken as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  @Deprecated('Use setDevicePushTokenV2 instead')
  final Mutation$SetDeviceToken$setDevicePushToken? setDevicePushToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$setDevicePushToken = setDevicePushToken;
    _resultData['setDevicePushToken'] = l$setDevicePushToken?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$setDevicePushToken = setDevicePushToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$setDevicePushToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SetDeviceToken || runtimeType != other.runtimeType) {
      return false;
    }
    final l$setDevicePushToken = setDevicePushToken;
    final lOther$setDevicePushToken = other.setDevicePushToken;
    if (l$setDevicePushToken != lOther$setDevicePushToken) {
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

extension UtilityExtension$Mutation$SetDeviceToken on Mutation$SetDeviceToken {
  CopyWith$Mutation$SetDeviceToken<Mutation$SetDeviceToken> get copyWith =>
      CopyWith$Mutation$SetDeviceToken(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SetDeviceToken<TRes> {
  factory CopyWith$Mutation$SetDeviceToken(
    Mutation$SetDeviceToken instance,
    TRes Function(Mutation$SetDeviceToken) then,
  ) = _CopyWithImpl$Mutation$SetDeviceToken;

  factory CopyWith$Mutation$SetDeviceToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetDeviceToken;

  TRes call({
    Mutation$SetDeviceToken$setDevicePushToken? setDevicePushToken,
    String? $__typename,
  });
  CopyWith$Mutation$SetDeviceToken$setDevicePushToken<TRes>
      get setDevicePushToken;
}

class _CopyWithImpl$Mutation$SetDeviceToken<TRes>
    implements CopyWith$Mutation$SetDeviceToken<TRes> {
  _CopyWithImpl$Mutation$SetDeviceToken(
    this._instance,
    this._then,
  );

  final Mutation$SetDeviceToken _instance;

  final TRes Function(Mutation$SetDeviceToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? setDevicePushToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SetDeviceToken(
        setDevicePushToken: setDevicePushToken == _undefined
            ? _instance.setDevicePushToken
            : (setDevicePushToken
                as Mutation$SetDeviceToken$setDevicePushToken?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SetDeviceToken$setDevicePushToken<TRes>
      get setDevicePushToken {
    final local$setDevicePushToken = _instance.setDevicePushToken;
    return local$setDevicePushToken == null
        ? CopyWith$Mutation$SetDeviceToken$setDevicePushToken.stub(
            _then(_instance))
        : CopyWith$Mutation$SetDeviceToken$setDevicePushToken(
            local$setDevicePushToken, (e) => call(setDevicePushToken: e));
  }
}

class _CopyWithStubImpl$Mutation$SetDeviceToken<TRes>
    implements CopyWith$Mutation$SetDeviceToken<TRes> {
  _CopyWithStubImpl$Mutation$SetDeviceToken(this._res);

  TRes _res;

  call({
    Mutation$SetDeviceToken$setDevicePushToken? setDevicePushToken,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SetDeviceToken$setDevicePushToken<TRes>
      get setDevicePushToken =>
          CopyWith$Mutation$SetDeviceToken$setDevicePushToken.stub(_res);
}

const documentNodeMutationSetDeviceToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SetDeviceToken'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'token')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'languages')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'setDevicePushToken'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'token'),
            value: VariableNode(name: NameNode(value: 'token')),
          ),
          ArgumentNode(
            name: NameNode(value: 'languages'),
            value: VariableNode(name: NameNode(value: 'languages')),
          ),
        ],
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
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
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
Mutation$SetDeviceToken _parserFn$Mutation$SetDeviceToken(
        Map<String, dynamic> data) =>
    Mutation$SetDeviceToken.fromJson(data);
typedef OnMutationCompleted$Mutation$SetDeviceToken = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SetDeviceToken?,
);

class Options$Mutation$SetDeviceToken
    extends graphql.MutationOptions<Mutation$SetDeviceToken> {
  Options$Mutation$SetDeviceToken({
    String? operationName,
    required Variables$Mutation$SetDeviceToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetDeviceToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SetDeviceToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$SetDeviceToken>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SetDeviceToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSetDeviceToken,
          parserFn: _parserFn$Mutation$SetDeviceToken,
        );

  final OnMutationCompleted$Mutation$SetDeviceToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SetDeviceToken
    extends graphql.WatchQueryOptions<Mutation$SetDeviceToken> {
  WatchOptions$Mutation$SetDeviceToken({
    String? operationName,
    required Variables$Mutation$SetDeviceToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetDeviceToken? typedOptimisticResult,
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
          document: documentNodeMutationSetDeviceToken,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SetDeviceToken,
        );
}

extension ClientExtension$Mutation$SetDeviceToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SetDeviceToken>> mutate$SetDeviceToken(
          Options$Mutation$SetDeviceToken options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SetDeviceToken> watchMutation$SetDeviceToken(
          WatchOptions$Mutation$SetDeviceToken options) =>
      this.watchMutation(options);
}

class Mutation$SetDeviceToken$HookResult {
  Mutation$SetDeviceToken$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SetDeviceToken runMutation;

  final graphql.QueryResult<Mutation$SetDeviceToken> result;
}

Mutation$SetDeviceToken$HookResult useMutation$SetDeviceToken(
    [WidgetOptions$Mutation$SetDeviceToken? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SetDeviceToken());
  return Mutation$SetDeviceToken$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SetDeviceToken>
    useWatchMutation$SetDeviceToken(
            WatchOptions$Mutation$SetDeviceToken options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SetDeviceToken
    extends graphql.MutationOptions<Mutation$SetDeviceToken> {
  WidgetOptions$Mutation$SetDeviceToken({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetDeviceToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SetDeviceToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$SetDeviceToken>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SetDeviceToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSetDeviceToken,
          parserFn: _parserFn$Mutation$SetDeviceToken,
        );

  final OnMutationCompleted$Mutation$SetDeviceToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SetDeviceToken
    = graphql.MultiSourceResult<Mutation$SetDeviceToken> Function(
  Variables$Mutation$SetDeviceToken, {
  Object? optimisticResult,
  Mutation$SetDeviceToken? typedOptimisticResult,
});
typedef Builder$Mutation$SetDeviceToken = widgets.Widget Function(
  RunMutation$Mutation$SetDeviceToken,
  graphql.QueryResult<Mutation$SetDeviceToken>?,
);

class Mutation$SetDeviceToken$Widget
    extends graphql_flutter.Mutation<Mutation$SetDeviceToken> {
  Mutation$SetDeviceToken$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SetDeviceToken? options,
    required Builder$Mutation$SetDeviceToken builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SetDeviceToken(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$SetDeviceToken$setDevicePushToken {
  Mutation$SetDeviceToken$setDevicePushToken({
    this.$__typename = 'Device',
    required this.token,
    required this.updatedAt,
  });

  factory Mutation$SetDeviceToken$setDevicePushToken.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$token = json['token'];
    final l$updatedAt = json['updatedAt'];
    return Mutation$SetDeviceToken$setDevicePushToken(
      $__typename: (l$$__typename as String),
      token: (l$token as String),
      updatedAt: (l$updatedAt as String),
    );
  }

  final String $__typename;

  final String token;

  final String updatedAt;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$token = token;
    _resultData['token'] = l$token;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$token = token;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      l$$__typename,
      l$token,
      l$updatedAt,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SetDeviceToken$setDevicePushToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SetDeviceToken$setDevicePushToken
    on Mutation$SetDeviceToken$setDevicePushToken {
  CopyWith$Mutation$SetDeviceToken$setDevicePushToken<
          Mutation$SetDeviceToken$setDevicePushToken>
      get copyWith => CopyWith$Mutation$SetDeviceToken$setDevicePushToken(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SetDeviceToken$setDevicePushToken<TRes> {
  factory CopyWith$Mutation$SetDeviceToken$setDevicePushToken(
    Mutation$SetDeviceToken$setDevicePushToken instance,
    TRes Function(Mutation$SetDeviceToken$setDevicePushToken) then,
  ) = _CopyWithImpl$Mutation$SetDeviceToken$setDevicePushToken;

  factory CopyWith$Mutation$SetDeviceToken$setDevicePushToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetDeviceToken$setDevicePushToken;

  TRes call({
    String? $__typename,
    String? token,
    String? updatedAt,
  });
}

class _CopyWithImpl$Mutation$SetDeviceToken$setDevicePushToken<TRes>
    implements CopyWith$Mutation$SetDeviceToken$setDevicePushToken<TRes> {
  _CopyWithImpl$Mutation$SetDeviceToken$setDevicePushToken(
    this._instance,
    this._then,
  );

  final Mutation$SetDeviceToken$setDevicePushToken _instance;

  final TRes Function(Mutation$SetDeviceToken$setDevicePushToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? token = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Mutation$SetDeviceToken$setDevicePushToken(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as String),
      ));
}

class _CopyWithStubImpl$Mutation$SetDeviceToken$setDevicePushToken<TRes>
    implements CopyWith$Mutation$SetDeviceToken$setDevicePushToken<TRes> {
  _CopyWithStubImpl$Mutation$SetDeviceToken$setDevicePushToken(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? token,
    String? updatedAt,
  }) =>
      _res;
}

class Variables$Mutation$SetDeviceTokenV2 {
  factory Variables$Mutation$SetDeviceTokenV2({
    required String token,
    required List<String> languages,
    required Enum$OS os,
    required int appBuildNumber,
  }) =>
      Variables$Mutation$SetDeviceTokenV2._({
        r'token': token,
        r'languages': languages,
        r'os': os,
        r'appBuildNumber': appBuildNumber,
      });

  Variables$Mutation$SetDeviceTokenV2._(this._$data);

  factory Variables$Mutation$SetDeviceTokenV2.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    final l$languages = data['languages'];
    result$data['languages'] =
        (l$languages as List<dynamic>).map((e) => (e as String)).toList();
    final l$os = data['os'];
    result$data['os'] = fromJson$Enum$OS((l$os as String));
    final l$appBuildNumber = data['appBuildNumber'];
    result$data['appBuildNumber'] = (l$appBuildNumber as int);
    return Variables$Mutation$SetDeviceTokenV2._(result$data);
  }

  Map<String, dynamic> _$data;

  String get token => (_$data['token'] as String);

  List<String> get languages => (_$data['languages'] as List<String>);

  Enum$OS get os => (_$data['os'] as Enum$OS);

  int get appBuildNumber => (_$data['appBuildNumber'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$token = token;
    result$data['token'] = l$token;
    final l$languages = languages;
    result$data['languages'] = l$languages.map((e) => e).toList();
    final l$os = os;
    result$data['os'] = toJson$Enum$OS(l$os);
    final l$appBuildNumber = appBuildNumber;
    result$data['appBuildNumber'] = l$appBuildNumber;
    return result$data;
  }

  CopyWith$Variables$Mutation$SetDeviceTokenV2<
          Variables$Mutation$SetDeviceTokenV2>
      get copyWith => CopyWith$Variables$Mutation$SetDeviceTokenV2(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SetDeviceTokenV2 ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$languages = languages;
    final lOther$languages = other.languages;
    if (l$languages.length != lOther$languages.length) {
      return false;
    }
    for (int i = 0; i < l$languages.length; i++) {
      final l$languages$entry = l$languages[i];
      final lOther$languages$entry = lOther$languages[i];
      if (l$languages$entry != lOther$languages$entry) {
        return false;
      }
    }
    final l$os = os;
    final lOther$os = other.os;
    if (l$os != lOther$os) {
      return false;
    }
    final l$appBuildNumber = appBuildNumber;
    final lOther$appBuildNumber = other.appBuildNumber;
    if (l$appBuildNumber != lOther$appBuildNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$languages = languages;
    final l$os = os;
    final l$appBuildNumber = appBuildNumber;
    return Object.hashAll([
      l$token,
      Object.hashAll(l$languages.map((v) => v)),
      l$os,
      l$appBuildNumber,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SetDeviceTokenV2<TRes> {
  factory CopyWith$Variables$Mutation$SetDeviceTokenV2(
    Variables$Mutation$SetDeviceTokenV2 instance,
    TRes Function(Variables$Mutation$SetDeviceTokenV2) then,
  ) = _CopyWithImpl$Variables$Mutation$SetDeviceTokenV2;

  factory CopyWith$Variables$Mutation$SetDeviceTokenV2.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetDeviceTokenV2;

  TRes call({
    String? token,
    List<String>? languages,
    Enum$OS? os,
    int? appBuildNumber,
  });
}

class _CopyWithImpl$Variables$Mutation$SetDeviceTokenV2<TRes>
    implements CopyWith$Variables$Mutation$SetDeviceTokenV2<TRes> {
  _CopyWithImpl$Variables$Mutation$SetDeviceTokenV2(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SetDeviceTokenV2 _instance;

  final TRes Function(Variables$Mutation$SetDeviceTokenV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? languages = _undefined,
    Object? os = _undefined,
    Object? appBuildNumber = _undefined,
  }) =>
      _then(Variables$Mutation$SetDeviceTokenV2._({
        ..._instance._$data,
        if (token != _undefined && token != null) 'token': (token as String),
        if (languages != _undefined && languages != null)
          'languages': (languages as List<String>),
        if (os != _undefined && os != null) 'os': (os as Enum$OS),
        if (appBuildNumber != _undefined && appBuildNumber != null)
          'appBuildNumber': (appBuildNumber as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SetDeviceTokenV2<TRes>
    implements CopyWith$Variables$Mutation$SetDeviceTokenV2<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetDeviceTokenV2(this._res);

  TRes _res;

  call({
    String? token,
    List<String>? languages,
    Enum$OS? os,
    int? appBuildNumber,
  }) =>
      _res;
}

class Mutation$SetDeviceTokenV2 {
  Mutation$SetDeviceTokenV2({
    this.setDevicePushTokenV2,
    this.$__typename = 'MutationRoot',
  });

  factory Mutation$SetDeviceTokenV2.fromJson(Map<String, dynamic> json) {
    final l$setDevicePushTokenV2 = json['setDevicePushTokenV2'];
    final l$$__typename = json['__typename'];
    return Mutation$SetDeviceTokenV2(
      setDevicePushTokenV2: l$setDevicePushTokenV2 == null
          ? null
          : Mutation$SetDeviceTokenV2$setDevicePushTokenV2.fromJson(
              (l$setDevicePushTokenV2 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SetDeviceTokenV2$setDevicePushTokenV2? setDevicePushTokenV2;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$setDevicePushTokenV2 = setDevicePushTokenV2;
    _resultData['setDevicePushTokenV2'] = l$setDevicePushTokenV2?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$setDevicePushTokenV2 = setDevicePushTokenV2;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$setDevicePushTokenV2,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SetDeviceTokenV2 ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$setDevicePushTokenV2 = setDevicePushTokenV2;
    final lOther$setDevicePushTokenV2 = other.setDevicePushTokenV2;
    if (l$setDevicePushTokenV2 != lOther$setDevicePushTokenV2) {
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

extension UtilityExtension$Mutation$SetDeviceTokenV2
    on Mutation$SetDeviceTokenV2 {
  CopyWith$Mutation$SetDeviceTokenV2<Mutation$SetDeviceTokenV2> get copyWith =>
      CopyWith$Mutation$SetDeviceTokenV2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SetDeviceTokenV2<TRes> {
  factory CopyWith$Mutation$SetDeviceTokenV2(
    Mutation$SetDeviceTokenV2 instance,
    TRes Function(Mutation$SetDeviceTokenV2) then,
  ) = _CopyWithImpl$Mutation$SetDeviceTokenV2;

  factory CopyWith$Mutation$SetDeviceTokenV2.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetDeviceTokenV2;

  TRes call({
    Mutation$SetDeviceTokenV2$setDevicePushTokenV2? setDevicePushTokenV2,
    String? $__typename,
  });
  CopyWith$Mutation$SetDeviceTokenV2$setDevicePushTokenV2<TRes>
      get setDevicePushTokenV2;
}

class _CopyWithImpl$Mutation$SetDeviceTokenV2<TRes>
    implements CopyWith$Mutation$SetDeviceTokenV2<TRes> {
  _CopyWithImpl$Mutation$SetDeviceTokenV2(
    this._instance,
    this._then,
  );

  final Mutation$SetDeviceTokenV2 _instance;

  final TRes Function(Mutation$SetDeviceTokenV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? setDevicePushTokenV2 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SetDeviceTokenV2(
        setDevicePushTokenV2: setDevicePushTokenV2 == _undefined
            ? _instance.setDevicePushTokenV2
            : (setDevicePushTokenV2
                as Mutation$SetDeviceTokenV2$setDevicePushTokenV2?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SetDeviceTokenV2$setDevicePushTokenV2<TRes>
      get setDevicePushTokenV2 {
    final local$setDevicePushTokenV2 = _instance.setDevicePushTokenV2;
    return local$setDevicePushTokenV2 == null
        ? CopyWith$Mutation$SetDeviceTokenV2$setDevicePushTokenV2.stub(
            _then(_instance))
        : CopyWith$Mutation$SetDeviceTokenV2$setDevicePushTokenV2(
            local$setDevicePushTokenV2, (e) => call(setDevicePushTokenV2: e));
  }
}

class _CopyWithStubImpl$Mutation$SetDeviceTokenV2<TRes>
    implements CopyWith$Mutation$SetDeviceTokenV2<TRes> {
  _CopyWithStubImpl$Mutation$SetDeviceTokenV2(this._res);

  TRes _res;

  call({
    Mutation$SetDeviceTokenV2$setDevicePushTokenV2? setDevicePushTokenV2,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SetDeviceTokenV2$setDevicePushTokenV2<TRes>
      get setDevicePushTokenV2 =>
          CopyWith$Mutation$SetDeviceTokenV2$setDevicePushTokenV2.stub(_res);
}

const documentNodeMutationSetDeviceTokenV2 = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SetDeviceTokenV2'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'token')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'languages')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'os')),
        type: NamedTypeNode(
          name: NameNode(value: 'OS'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'appBuildNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'setDevicePushTokenV2'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'token'),
            value: VariableNode(name: NameNode(value: 'token')),
          ),
          ArgumentNode(
            name: NameNode(value: 'languages'),
            value: VariableNode(name: NameNode(value: 'languages')),
          ),
          ArgumentNode(
            name: NameNode(value: 'os'),
            value: VariableNode(name: NameNode(value: 'os')),
          ),
          ArgumentNode(
            name: NameNode(value: 'appBuildNumber'),
            value: VariableNode(name: NameNode(value: 'appBuildNumber')),
          ),
        ],
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
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
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
Mutation$SetDeviceTokenV2 _parserFn$Mutation$SetDeviceTokenV2(
        Map<String, dynamic> data) =>
    Mutation$SetDeviceTokenV2.fromJson(data);
typedef OnMutationCompleted$Mutation$SetDeviceTokenV2 = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SetDeviceTokenV2?,
);

class Options$Mutation$SetDeviceTokenV2
    extends graphql.MutationOptions<Mutation$SetDeviceTokenV2> {
  Options$Mutation$SetDeviceTokenV2({
    String? operationName,
    required Variables$Mutation$SetDeviceTokenV2 variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetDeviceTokenV2? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SetDeviceTokenV2? onCompleted,
    graphql.OnMutationUpdate<Mutation$SetDeviceTokenV2>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SetDeviceTokenV2(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSetDeviceTokenV2,
          parserFn: _parserFn$Mutation$SetDeviceTokenV2,
        );

  final OnMutationCompleted$Mutation$SetDeviceTokenV2? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SetDeviceTokenV2
    extends graphql.WatchQueryOptions<Mutation$SetDeviceTokenV2> {
  WatchOptions$Mutation$SetDeviceTokenV2({
    String? operationName,
    required Variables$Mutation$SetDeviceTokenV2 variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetDeviceTokenV2? typedOptimisticResult,
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
          document: documentNodeMutationSetDeviceTokenV2,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SetDeviceTokenV2,
        );
}

extension ClientExtension$Mutation$SetDeviceTokenV2 on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SetDeviceTokenV2>>
      mutate$SetDeviceTokenV2(
              Options$Mutation$SetDeviceTokenV2 options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$SetDeviceTokenV2>
      watchMutation$SetDeviceTokenV2(
              WatchOptions$Mutation$SetDeviceTokenV2 options) =>
          this.watchMutation(options);
}

class Mutation$SetDeviceTokenV2$HookResult {
  Mutation$SetDeviceTokenV2$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SetDeviceTokenV2 runMutation;

  final graphql.QueryResult<Mutation$SetDeviceTokenV2> result;
}

Mutation$SetDeviceTokenV2$HookResult useMutation$SetDeviceTokenV2(
    [WidgetOptions$Mutation$SetDeviceTokenV2? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SetDeviceTokenV2());
  return Mutation$SetDeviceTokenV2$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SetDeviceTokenV2>
    useWatchMutation$SetDeviceTokenV2(
            WatchOptions$Mutation$SetDeviceTokenV2 options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SetDeviceTokenV2
    extends graphql.MutationOptions<Mutation$SetDeviceTokenV2> {
  WidgetOptions$Mutation$SetDeviceTokenV2({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetDeviceTokenV2? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SetDeviceTokenV2? onCompleted,
    graphql.OnMutationUpdate<Mutation$SetDeviceTokenV2>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SetDeviceTokenV2(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSetDeviceTokenV2,
          parserFn: _parserFn$Mutation$SetDeviceTokenV2,
        );

  final OnMutationCompleted$Mutation$SetDeviceTokenV2? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SetDeviceTokenV2
    = graphql.MultiSourceResult<Mutation$SetDeviceTokenV2> Function(
  Variables$Mutation$SetDeviceTokenV2, {
  Object? optimisticResult,
  Mutation$SetDeviceTokenV2? typedOptimisticResult,
});
typedef Builder$Mutation$SetDeviceTokenV2 = widgets.Widget Function(
  RunMutation$Mutation$SetDeviceTokenV2,
  graphql.QueryResult<Mutation$SetDeviceTokenV2>?,
);

class Mutation$SetDeviceTokenV2$Widget
    extends graphql_flutter.Mutation<Mutation$SetDeviceTokenV2> {
  Mutation$SetDeviceTokenV2$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SetDeviceTokenV2? options,
    required Builder$Mutation$SetDeviceTokenV2 builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SetDeviceTokenV2(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$SetDeviceTokenV2$setDevicePushTokenV2 {
  Mutation$SetDeviceTokenV2$setDevicePushTokenV2({
    this.$__typename = 'Device',
    required this.token,
    required this.updatedAt,
  });

  factory Mutation$SetDeviceTokenV2$setDevicePushTokenV2.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$token = json['token'];
    final l$updatedAt = json['updatedAt'];
    return Mutation$SetDeviceTokenV2$setDevicePushTokenV2(
      $__typename: (l$$__typename as String),
      token: (l$token as String),
      updatedAt: (l$updatedAt as String),
    );
  }

  final String $__typename;

  final String token;

  final String updatedAt;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$token = token;
    _resultData['token'] = l$token;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$token = token;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      l$$__typename,
      l$token,
      l$updatedAt,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SetDeviceTokenV2$setDevicePushTokenV2 ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SetDeviceTokenV2$setDevicePushTokenV2
    on Mutation$SetDeviceTokenV2$setDevicePushTokenV2 {
  CopyWith$Mutation$SetDeviceTokenV2$setDevicePushTokenV2<
          Mutation$SetDeviceTokenV2$setDevicePushTokenV2>
      get copyWith => CopyWith$Mutation$SetDeviceTokenV2$setDevicePushTokenV2(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SetDeviceTokenV2$setDevicePushTokenV2<TRes> {
  factory CopyWith$Mutation$SetDeviceTokenV2$setDevicePushTokenV2(
    Mutation$SetDeviceTokenV2$setDevicePushTokenV2 instance,
    TRes Function(Mutation$SetDeviceTokenV2$setDevicePushTokenV2) then,
  ) = _CopyWithImpl$Mutation$SetDeviceTokenV2$setDevicePushTokenV2;

  factory CopyWith$Mutation$SetDeviceTokenV2$setDevicePushTokenV2.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetDeviceTokenV2$setDevicePushTokenV2;

  TRes call({
    String? $__typename,
    String? token,
    String? updatedAt,
  });
}

class _CopyWithImpl$Mutation$SetDeviceTokenV2$setDevicePushTokenV2<TRes>
    implements CopyWith$Mutation$SetDeviceTokenV2$setDevicePushTokenV2<TRes> {
  _CopyWithImpl$Mutation$SetDeviceTokenV2$setDevicePushTokenV2(
    this._instance,
    this._then,
  );

  final Mutation$SetDeviceTokenV2$setDevicePushTokenV2 _instance;

  final TRes Function(Mutation$SetDeviceTokenV2$setDevicePushTokenV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? token = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Mutation$SetDeviceTokenV2$setDevicePushTokenV2(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as String),
      ));
}

class _CopyWithStubImpl$Mutation$SetDeviceTokenV2$setDevicePushTokenV2<TRes>
    implements CopyWith$Mutation$SetDeviceTokenV2$setDevicePushTokenV2<TRes> {
  _CopyWithStubImpl$Mutation$SetDeviceTokenV2$setDevicePushTokenV2(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? token,
    String? updatedAt,
  }) =>
      _res;
}
