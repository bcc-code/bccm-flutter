import 'dart:async';
import 'episode.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$PlayableMediaItemShort {
  Fragment$PlayableMediaItemShort({
    required this.id,
    required this.streams,
    required this.title,
    this.image,
    this.$__typename = 'Short',
  });

  factory Fragment$PlayableMediaItemShort.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$streams = json['streams'];
    final l$title = json['title'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Fragment$PlayableMediaItemShort(
      id: (l$id as String),
      streams: (l$streams as List<dynamic>)
          .map(
              (e) => Fragment$BasicStream.fromJson((e as Map<String, dynamic>)))
          .toList(),
      title: (l$title as String),
      image: (l$image as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Fragment$BasicStream> streams;

  final String title;

  final String? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$streams = streams;
    _resultData['streams'] = l$streams.map((e) => e.toJson()).toList();
    final l$title = title;
    _resultData['title'] = l$title;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$streams = streams;
    final l$title = title;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$streams.map((v) => v)),
      l$title,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PlayableMediaItemShort) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$streams = streams;
    final lOther$streams = other.streams;
    if (l$streams.length != lOther$streams.length) {
      return false;
    }
    for (int i = 0; i < l$streams.length; i++) {
      final l$streams$entry = l$streams[i];
      final lOther$streams$entry = lOther$streams[i];
      if (l$streams$entry != lOther$streams$entry) {
        return false;
      }
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
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

extension UtilityExtension$Fragment$PlayableMediaItemShort
    on Fragment$PlayableMediaItemShort {
  CopyWith$Fragment$PlayableMediaItemShort<Fragment$PlayableMediaItemShort>
      get copyWith => CopyWith$Fragment$PlayableMediaItemShort(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PlayableMediaItemShort<TRes> {
  factory CopyWith$Fragment$PlayableMediaItemShort(
    Fragment$PlayableMediaItemShort instance,
    TRes Function(Fragment$PlayableMediaItemShort) then,
  ) = _CopyWithImpl$Fragment$PlayableMediaItemShort;

  factory CopyWith$Fragment$PlayableMediaItemShort.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PlayableMediaItemShort;

  TRes call({
    String? id,
    List<Fragment$BasicStream>? streams,
    String? title,
    String? image,
    String? $__typename,
  });
  TRes streams(
      Iterable<Fragment$BasicStream> Function(
              Iterable<CopyWith$Fragment$BasicStream<Fragment$BasicStream>>)
          _fn);
}

class _CopyWithImpl$Fragment$PlayableMediaItemShort<TRes>
    implements CopyWith$Fragment$PlayableMediaItemShort<TRes> {
  _CopyWithImpl$Fragment$PlayableMediaItemShort(
    this._instance,
    this._then,
  );

  final Fragment$PlayableMediaItemShort _instance;

  final TRes Function(Fragment$PlayableMediaItemShort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? streams = _undefined,
    Object? title = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PlayableMediaItemShort(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        streams: streams == _undefined || streams == null
            ? _instance.streams
            : (streams as List<Fragment$BasicStream>),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        image: image == _undefined ? _instance.image : (image as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes streams(
          Iterable<Fragment$BasicStream> Function(
                  Iterable<CopyWith$Fragment$BasicStream<Fragment$BasicStream>>)
              _fn) =>
      call(
          streams:
              _fn(_instance.streams.map((e) => CopyWith$Fragment$BasicStream(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$PlayableMediaItemShort<TRes>
    implements CopyWith$Fragment$PlayableMediaItemShort<TRes> {
  _CopyWithStubImpl$Fragment$PlayableMediaItemShort(this._res);

  TRes _res;

  call({
    String? id,
    List<Fragment$BasicStream>? streams,
    String? title,
    String? image,
    String? $__typename,
  }) =>
      _res;

  streams(_fn) => _res;
}

const fragmentDefinitionPlayableMediaItemShort = FragmentDefinitionNode(
  name: NameNode(value: 'PlayableMediaItemShort'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Short'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'streams'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'BasicStream'),
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
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'image'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'style'),
          value: EnumValueNode(name: NameNode(value: 'poster')),
        )
      ],
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
);
const documentNodeFragmentPlayableMediaItemShort = DocumentNode(definitions: [
  fragmentDefinitionPlayableMediaItemShort,
  fragmentDefinitionBasicStream,
]);

extension ClientExtension$Fragment$PlayableMediaItemShort
    on graphql.GraphQLClient {
  void writeFragment$PlayableMediaItemShort({
    required Fragment$PlayableMediaItemShort data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PlayableMediaItemShort',
            document: documentNodeFragmentPlayableMediaItemShort,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PlayableMediaItemShort? readFragment$PlayableMediaItemShort({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PlayableMediaItemShort',
          document: documentNodeFragmentPlayableMediaItemShort,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$PlayableMediaItemShort.fromJson(result);
  }
}

class Fragment$Short implements Fragment$PlayableMediaItemShort {
  Fragment$Short({
    required this.id,
    required this.title,
    this.description,
    required this.inMyList,
    this.image,
    this.source,
    required this.streams,
    this.$__typename = 'Short',
  });

  factory Fragment$Short.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$inMyList = json['inMyList'];
    final l$image = json['image'];
    final l$source = json['source'];
    final l$streams = json['streams'];
    final l$$__typename = json['__typename'];
    return Fragment$Short(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String?),
      inMyList: (l$inMyList as bool),
      image: (l$image as String?),
      source: l$source == null
          ? null
          : Fragment$Short$source.fromJson((l$source as Map<String, dynamic>)),
      streams: (l$streams as List<dynamic>)
          .map(
              (e) => Fragment$BasicStream.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String? description;

  final bool inMyList;

  final String? image;

  final Fragment$Short$source? source;

  final List<Fragment$BasicStream> streams;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$inMyList = inMyList;
    _resultData['inMyList'] = l$inMyList;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$source = source;
    _resultData['source'] = l$source?.toJson();
    final l$streams = streams;
    _resultData['streams'] = l$streams.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$inMyList = inMyList;
    final l$image = image;
    final l$source = source;
    final l$streams = streams;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$inMyList,
      l$image,
      l$source,
      Object.hashAll(l$streams.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Short) || runtimeType != other.runtimeType) {
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
    final l$inMyList = inMyList;
    final lOther$inMyList = other.inMyList;
    if (l$inMyList != lOther$inMyList) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
      return false;
    }
    final l$streams = streams;
    final lOther$streams = other.streams;
    if (l$streams.length != lOther$streams.length) {
      return false;
    }
    for (int i = 0; i < l$streams.length; i++) {
      final l$streams$entry = l$streams[i];
      final lOther$streams$entry = lOther$streams[i];
      if (l$streams$entry != lOther$streams$entry) {
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

extension UtilityExtension$Fragment$Short on Fragment$Short {
  CopyWith$Fragment$Short<Fragment$Short> get copyWith =>
      CopyWith$Fragment$Short(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Short<TRes> {
  factory CopyWith$Fragment$Short(
    Fragment$Short instance,
    TRes Function(Fragment$Short) then,
  ) = _CopyWithImpl$Fragment$Short;

  factory CopyWith$Fragment$Short.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Short;

  TRes call({
    String? id,
    String? title,
    String? description,
    bool? inMyList,
    String? image,
    Fragment$Short$source? source,
    List<Fragment$BasicStream>? streams,
    String? $__typename,
  });
  CopyWith$Fragment$Short$source<TRes> get source;
  TRes streams(
      Iterable<Fragment$BasicStream> Function(
              Iterable<CopyWith$Fragment$BasicStream<Fragment$BasicStream>>)
          _fn);
}

class _CopyWithImpl$Fragment$Short<TRes>
    implements CopyWith$Fragment$Short<TRes> {
  _CopyWithImpl$Fragment$Short(
    this._instance,
    this._then,
  );

  final Fragment$Short _instance;

  final TRes Function(Fragment$Short) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? inMyList = _undefined,
    Object? image = _undefined,
    Object? source = _undefined,
    Object? streams = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Short(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        inMyList: inMyList == _undefined || inMyList == null
            ? _instance.inMyList
            : (inMyList as bool),
        image: image == _undefined ? _instance.image : (image as String?),
        source: source == _undefined
            ? _instance.source
            : (source as Fragment$Short$source?),
        streams: streams == _undefined || streams == null
            ? _instance.streams
            : (streams as List<Fragment$BasicStream>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Short$source<TRes> get source {
    final local$source = _instance.source;
    return local$source == null
        ? CopyWith$Fragment$Short$source.stub(_then(_instance))
        : CopyWith$Fragment$Short$source(local$source, (e) => call(source: e));
  }

  TRes streams(
          Iterable<Fragment$BasicStream> Function(
                  Iterable<CopyWith$Fragment$BasicStream<Fragment$BasicStream>>)
              _fn) =>
      call(
          streams:
              _fn(_instance.streams.map((e) => CopyWith$Fragment$BasicStream(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$Short<TRes>
    implements CopyWith$Fragment$Short<TRes> {
  _CopyWithStubImpl$Fragment$Short(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    bool? inMyList,
    String? image,
    Fragment$Short$source? source,
    List<Fragment$BasicStream>? streams,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Short$source<TRes> get source =>
      CopyWith$Fragment$Short$source.stub(_res);

  streams(_fn) => _res;
}

const fragmentDefinitionShort = FragmentDefinitionNode(
  name: NameNode(value: 'Short'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Short'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'inMyList'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'image'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'style'),
          value: EnumValueNode(name: NameNode(value: 'poster')),
        )
      ],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'source'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'item'),
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
    FragmentSpreadNode(
      name: NameNode(value: 'PlayableMediaItemShort'),
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
);
const documentNodeFragmentShort = DocumentNode(definitions: [
  fragmentDefinitionShort,
  fragmentDefinitionPlayableMediaItemShort,
  fragmentDefinitionBasicStream,
]);

extension ClientExtension$Fragment$Short on graphql.GraphQLClient {
  void writeFragment$Short({
    required Fragment$Short data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Short',
            document: documentNodeFragmentShort,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Short? readFragment$Short({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Short',
          document: documentNodeFragmentShort,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Short.fromJson(result);
  }
}

class Fragment$Short$source {
  Fragment$Short$source({
    required this.item,
    this.start,
    this.end,
    this.$__typename = 'SubclipSource',
  });

  factory Fragment$Short$source.fromJson(Map<String, dynamic> json) {
    final l$item = json['item'];
    final l$start = json['start'];
    final l$end = json['end'];
    final l$$__typename = json['__typename'];
    return Fragment$Short$source(
      item:
          Fragment$Short$source$item.fromJson((l$item as Map<String, dynamic>)),
      start: (l$start as num?)?.toDouble(),
      end: (l$end as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Short$source$item item;

  final double? start;

  final double? end;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$item = item;
    _resultData['item'] = l$item.toJson();
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
    final l$item = item;
    final l$start = start;
    final l$end = end;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$item,
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
    if (!(other is Fragment$Short$source) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$item = item;
    final lOther$item = other.item;
    if (l$item != lOther$item) {
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

extension UtilityExtension$Fragment$Short$source on Fragment$Short$source {
  CopyWith$Fragment$Short$source<Fragment$Short$source> get copyWith =>
      CopyWith$Fragment$Short$source(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Short$source<TRes> {
  factory CopyWith$Fragment$Short$source(
    Fragment$Short$source instance,
    TRes Function(Fragment$Short$source) then,
  ) = _CopyWithImpl$Fragment$Short$source;

  factory CopyWith$Fragment$Short$source.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Short$source;

  TRes call({
    Fragment$Short$source$item? item,
    double? start,
    double? end,
    String? $__typename,
  });
  CopyWith$Fragment$Short$source$item<TRes> get item;
}

class _CopyWithImpl$Fragment$Short$source<TRes>
    implements CopyWith$Fragment$Short$source<TRes> {
  _CopyWithImpl$Fragment$Short$source(
    this._instance,
    this._then,
  );

  final Fragment$Short$source _instance;

  final TRes Function(Fragment$Short$source) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? item = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Short$source(
        item: item == _undefined || item == null
            ? _instance.item
            : (item as Fragment$Short$source$item),
        start: start == _undefined ? _instance.start : (start as double?),
        end: end == _undefined ? _instance.end : (end as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Short$source$item<TRes> get item {
    final local$item = _instance.item;
    return CopyWith$Fragment$Short$source$item(
        local$item, (e) => call(item: e));
  }
}

class _CopyWithStubImpl$Fragment$Short$source<TRes>
    implements CopyWith$Fragment$Short$source<TRes> {
  _CopyWithStubImpl$Fragment$Short$source(this._res);

  TRes _res;

  call({
    Fragment$Short$source$item? item,
    double? start,
    double? end,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Short$source$item<TRes> get item =>
      CopyWith$Fragment$Short$source$item.stub(_res);
}

class Fragment$Short$source$item {
  Fragment$Short$source$item({required this.$__typename});

  factory Fragment$Short$source$item.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Episode":
        return Fragment$Short$source$item$$Episode.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Fragment$Short$source$item(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Short$source$item) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Short$source$item
    on Fragment$Short$source$item {
  CopyWith$Fragment$Short$source$item<Fragment$Short$source$item>
      get copyWith => CopyWith$Fragment$Short$source$item(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Fragment$Short$source$item$$Episode) episode,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Episode":
        return episode(this as Fragment$Short$source$item$$Episode);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$Short$source$item$$Episode)? episode,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Episode":
        if (episode != null) {
          return episode(this as Fragment$Short$source$item$$Episode);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$Short$source$item<TRes> {
  factory CopyWith$Fragment$Short$source$item(
    Fragment$Short$source$item instance,
    TRes Function(Fragment$Short$source$item) then,
  ) = _CopyWithImpl$Fragment$Short$source$item;

  factory CopyWith$Fragment$Short$source$item.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Short$source$item;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Fragment$Short$source$item<TRes>
    implements CopyWith$Fragment$Short$source$item<TRes> {
  _CopyWithImpl$Fragment$Short$source$item(
    this._instance,
    this._then,
  );

  final Fragment$Short$source$item _instance;

  final TRes Function(Fragment$Short$source$item) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Fragment$Short$source$item(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$Short$source$item<TRes>
    implements CopyWith$Fragment$Short$source$item<TRes> {
  _CopyWithStubImpl$Fragment$Short$source$item(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Fragment$Short$source$item$$Episode
    implements Fragment$Short$source$item {
  Fragment$Short$source$item$$Episode({
    required this.id,
    required this.title,
    this.$__typename = 'Episode',
  });

  factory Fragment$Short$source$item$$Episode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Fragment$Short$source$item$$Episode(
      id: (l$id as String),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Short$source$item$$Episode) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Short$source$item$$Episode
    on Fragment$Short$source$item$$Episode {
  CopyWith$Fragment$Short$source$item$$Episode<
          Fragment$Short$source$item$$Episode>
      get copyWith => CopyWith$Fragment$Short$source$item$$Episode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Short$source$item$$Episode<TRes> {
  factory CopyWith$Fragment$Short$source$item$$Episode(
    Fragment$Short$source$item$$Episode instance,
    TRes Function(Fragment$Short$source$item$$Episode) then,
  ) = _CopyWithImpl$Fragment$Short$source$item$$Episode;

  factory CopyWith$Fragment$Short$source$item$$Episode.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Short$source$item$$Episode;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Short$source$item$$Episode<TRes>
    implements CopyWith$Fragment$Short$source$item$$Episode<TRes> {
  _CopyWithImpl$Fragment$Short$source$item$$Episode(
    this._instance,
    this._then,
  );

  final Fragment$Short$source$item$$Episode _instance;

  final TRes Function(Fragment$Short$source$item$$Episode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Short$source$item$$Episode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Short$source$item$$Episode<TRes>
    implements CopyWith$Fragment$Short$source$item$$Episode<TRes> {
  _CopyWithStubImpl$Fragment$Short$source$item$$Episode(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$getShorts {
  factory Variables$Query$getShorts({
    String? cursor,
    int? limit,
    String? initialShortId,
  }) =>
      Variables$Query$getShorts._({
        if (cursor != null) r'cursor': cursor,
        if (limit != null) r'limit': limit,
        if (initialShortId != null) r'initialShortId': initialShortId,
      });

  Variables$Query$getShorts._(this._$data);

  factory Variables$Query$getShorts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cursor')) {
      final l$cursor = data['cursor'];
      result$data['cursor'] = (l$cursor as String?);
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('initialShortId')) {
      final l$initialShortId = data['initialShortId'];
      result$data['initialShortId'] = (l$initialShortId as String?);
    }
    return Variables$Query$getShorts._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get cursor => (_$data['cursor'] as String?);

  int? get limit => (_$data['limit'] as int?);

  String? get initialShortId => (_$data['initialShortId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cursor')) {
      final l$cursor = cursor;
      result$data['cursor'] = l$cursor;
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('initialShortId')) {
      final l$initialShortId = initialShortId;
      result$data['initialShortId'] = l$initialShortId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getShorts<Variables$Query$getShorts> get copyWith =>
      CopyWith$Variables$Query$getShorts(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getShorts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cursor = cursor;
    final lOther$cursor = other.cursor;
    if (_$data.containsKey('cursor') != other._$data.containsKey('cursor')) {
      return false;
    }
    if (l$cursor != lOther$cursor) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$initialShortId = initialShortId;
    final lOther$initialShortId = other.initialShortId;
    if (_$data.containsKey('initialShortId') !=
        other._$data.containsKey('initialShortId')) {
      return false;
    }
    if (l$initialShortId != lOther$initialShortId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cursor = cursor;
    final l$limit = limit;
    final l$initialShortId = initialShortId;
    return Object.hashAll([
      _$data.containsKey('cursor') ? l$cursor : const {},
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('initialShortId') ? l$initialShortId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getShorts<TRes> {
  factory CopyWith$Variables$Query$getShorts(
    Variables$Query$getShorts instance,
    TRes Function(Variables$Query$getShorts) then,
  ) = _CopyWithImpl$Variables$Query$getShorts;

  factory CopyWith$Variables$Query$getShorts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getShorts;

  TRes call({
    String? cursor,
    int? limit,
    String? initialShortId,
  });
}

class _CopyWithImpl$Variables$Query$getShorts<TRes>
    implements CopyWith$Variables$Query$getShorts<TRes> {
  _CopyWithImpl$Variables$Query$getShorts(
    this._instance,
    this._then,
  );

  final Variables$Query$getShorts _instance;

  final TRes Function(Variables$Query$getShorts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cursor = _undefined,
    Object? limit = _undefined,
    Object? initialShortId = _undefined,
  }) =>
      _then(Variables$Query$getShorts._({
        ..._instance._$data,
        if (cursor != _undefined) 'cursor': (cursor as String?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (initialShortId != _undefined)
          'initialShortId': (initialShortId as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getShorts<TRes>
    implements CopyWith$Variables$Query$getShorts<TRes> {
  _CopyWithStubImpl$Variables$Query$getShorts(this._res);

  TRes _res;

  call({
    String? cursor,
    int? limit,
    String? initialShortId,
  }) =>
      _res;
}

class Query$getShorts {
  Query$getShorts({
    required this.shorts,
    this.$__typename = 'QueryRoot',
  });

  factory Query$getShorts.fromJson(Map<String, dynamic> json) {
    final l$shorts = json['shorts'];
    final l$$__typename = json['__typename'];
    return Query$getShorts(
      shorts:
          Query$getShorts$shorts.fromJson((l$shorts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getShorts$shorts shorts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shorts = shorts;
    _resultData['shorts'] = l$shorts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shorts = shorts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$shorts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getShorts) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$shorts = shorts;
    final lOther$shorts = other.shorts;
    if (l$shorts != lOther$shorts) {
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

extension UtilityExtension$Query$getShorts on Query$getShorts {
  CopyWith$Query$getShorts<Query$getShorts> get copyWith =>
      CopyWith$Query$getShorts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getShorts<TRes> {
  factory CopyWith$Query$getShorts(
    Query$getShorts instance,
    TRes Function(Query$getShorts) then,
  ) = _CopyWithImpl$Query$getShorts;

  factory CopyWith$Query$getShorts.stub(TRes res) =
      _CopyWithStubImpl$Query$getShorts;

  TRes call({
    Query$getShorts$shorts? shorts,
    String? $__typename,
  });
  CopyWith$Query$getShorts$shorts<TRes> get shorts;
}

class _CopyWithImpl$Query$getShorts<TRes>
    implements CopyWith$Query$getShorts<TRes> {
  _CopyWithImpl$Query$getShorts(
    this._instance,
    this._then,
  );

  final Query$getShorts _instance;

  final TRes Function(Query$getShorts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? shorts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getShorts(
        shorts: shorts == _undefined || shorts == null
            ? _instance.shorts
            : (shorts as Query$getShorts$shorts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getShorts$shorts<TRes> get shorts {
    final local$shorts = _instance.shorts;
    return CopyWith$Query$getShorts$shorts(
        local$shorts, (e) => call(shorts: e));
  }
}

class _CopyWithStubImpl$Query$getShorts<TRes>
    implements CopyWith$Query$getShorts<TRes> {
  _CopyWithStubImpl$Query$getShorts(this._res);

  TRes _res;

  call({
    Query$getShorts$shorts? shorts,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getShorts$shorts<TRes> get shorts =>
      CopyWith$Query$getShorts$shorts.stub(_res);
}

const documentNodeQuerygetShorts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getShorts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cursor')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'initialShortId')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'shorts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'cursor'),
            value: VariableNode(name: NameNode(value: 'cursor')),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'initialShortId'),
            value: VariableNode(name: NameNode(value: 'initialShortId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'cursor'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nextCursor'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'shorts'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Short'),
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
  fragmentDefinitionShort,
  fragmentDefinitionPlayableMediaItemShort,
  fragmentDefinitionBasicStream,
]);
Query$getShorts _parserFn$Query$getShorts(Map<String, dynamic> data) =>
    Query$getShorts.fromJson(data);
typedef OnQueryComplete$Query$getShorts = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getShorts?,
);

class Options$Query$getShorts extends graphql.QueryOptions<Query$getShorts> {
  Options$Query$getShorts({
    String? operationName,
    Variables$Query$getShorts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getShorts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getShorts? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
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
                    data == null ? null : _parserFn$Query$getShorts(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetShorts,
          parserFn: _parserFn$Query$getShorts,
        );

  final OnQueryComplete$Query$getShorts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getShorts
    extends graphql.WatchQueryOptions<Query$getShorts> {
  WatchOptions$Query$getShorts({
    String? operationName,
    Variables$Query$getShorts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getShorts? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetShorts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getShorts,
        );
}

class FetchMoreOptions$Query$getShorts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getShorts({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getShorts? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetShorts,
        );
}

extension ClientExtension$Query$getShorts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getShorts>> query$getShorts(
          [Options$Query$getShorts? options]) async =>
      await this.query(options ?? Options$Query$getShorts());
  graphql.ObservableQuery<Query$getShorts> watchQuery$getShorts(
          [WatchOptions$Query$getShorts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getShorts());
  void writeQuery$getShorts({
    required Query$getShorts data,
    Variables$Query$getShorts? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerygetShorts),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getShorts? readQuery$getShorts({
    Variables$Query$getShorts? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerygetShorts),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getShorts.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getShorts> useQuery$getShorts(
        [Options$Query$getShorts? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$getShorts());
graphql.ObservableQuery<Query$getShorts> useWatchQuery$getShorts(
        [WatchOptions$Query$getShorts? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$getShorts());

class Query$getShorts$Widget extends graphql_flutter.Query<Query$getShorts> {
  Query$getShorts$Widget({
    widgets.Key? key,
    Options$Query$getShorts? options,
    required graphql_flutter.QueryBuilder<Query$getShorts> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$getShorts(),
          builder: builder,
        );
}

class Query$getShorts$shorts {
  Query$getShorts$shorts({
    required this.cursor,
    required this.nextCursor,
    required this.shorts,
    this.$__typename = 'ShortsPagination',
  });

  factory Query$getShorts$shorts.fromJson(Map<String, dynamic> json) {
    final l$cursor = json['cursor'];
    final l$nextCursor = json['nextCursor'];
    final l$shorts = json['shorts'];
    final l$$__typename = json['__typename'];
    return Query$getShorts$shorts(
      cursor: (l$cursor as String),
      nextCursor: (l$nextCursor as String),
      shorts: (l$shorts as List<dynamic>)
          .map((e) => Fragment$Short.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String cursor;

  final String nextCursor;

  final List<Fragment$Short> shorts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cursor = cursor;
    _resultData['cursor'] = l$cursor;
    final l$nextCursor = nextCursor;
    _resultData['nextCursor'] = l$nextCursor;
    final l$shorts = shorts;
    _resultData['shorts'] = l$shorts.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cursor = cursor;
    final l$nextCursor = nextCursor;
    final l$shorts = shorts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cursor,
      l$nextCursor,
      Object.hashAll(l$shorts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getShorts$shorts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cursor = cursor;
    final lOther$cursor = other.cursor;
    if (l$cursor != lOther$cursor) {
      return false;
    }
    final l$nextCursor = nextCursor;
    final lOther$nextCursor = other.nextCursor;
    if (l$nextCursor != lOther$nextCursor) {
      return false;
    }
    final l$shorts = shorts;
    final lOther$shorts = other.shorts;
    if (l$shorts.length != lOther$shorts.length) {
      return false;
    }
    for (int i = 0; i < l$shorts.length; i++) {
      final l$shorts$entry = l$shorts[i];
      final lOther$shorts$entry = lOther$shorts[i];
      if (l$shorts$entry != lOther$shorts$entry) {
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

extension UtilityExtension$Query$getShorts$shorts on Query$getShorts$shorts {
  CopyWith$Query$getShorts$shorts<Query$getShorts$shorts> get copyWith =>
      CopyWith$Query$getShorts$shorts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getShorts$shorts<TRes> {
  factory CopyWith$Query$getShorts$shorts(
    Query$getShorts$shorts instance,
    TRes Function(Query$getShorts$shorts) then,
  ) = _CopyWithImpl$Query$getShorts$shorts;

  factory CopyWith$Query$getShorts$shorts.stub(TRes res) =
      _CopyWithStubImpl$Query$getShorts$shorts;

  TRes call({
    String? cursor,
    String? nextCursor,
    List<Fragment$Short>? shorts,
    String? $__typename,
  });
  TRes shorts(
      Iterable<Fragment$Short> Function(
              Iterable<CopyWith$Fragment$Short<Fragment$Short>>)
          _fn);
}

class _CopyWithImpl$Query$getShorts$shorts<TRes>
    implements CopyWith$Query$getShorts$shorts<TRes> {
  _CopyWithImpl$Query$getShorts$shorts(
    this._instance,
    this._then,
  );

  final Query$getShorts$shorts _instance;

  final TRes Function(Query$getShorts$shorts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cursor = _undefined,
    Object? nextCursor = _undefined,
    Object? shorts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getShorts$shorts(
        cursor: cursor == _undefined || cursor == null
            ? _instance.cursor
            : (cursor as String),
        nextCursor: nextCursor == _undefined || nextCursor == null
            ? _instance.nextCursor
            : (nextCursor as String),
        shorts: shorts == _undefined || shorts == null
            ? _instance.shorts
            : (shorts as List<Fragment$Short>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes shorts(
          Iterable<Fragment$Short> Function(
                  Iterable<CopyWith$Fragment$Short<Fragment$Short>>)
              _fn) =>
      call(
          shorts: _fn(_instance.shorts.map((e) => CopyWith$Fragment$Short(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$getShorts$shorts<TRes>
    implements CopyWith$Query$getShorts$shorts<TRes> {
  _CopyWithStubImpl$Query$getShorts$shorts(this._res);

  TRes _res;

  call({
    String? cursor,
    String? nextCursor,
    List<Fragment$Short>? shorts,
    String? $__typename,
  }) =>
      _res;

  shorts(_fn) => _res;
}

class Variables$Query$getShort {
  factory Variables$Query$getShort({required String id}) =>
      Variables$Query$getShort._({
        r'id': id,
      });

  Variables$Query$getShort._(this._$data);

  factory Variables$Query$getShort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$getShort._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$getShort<Variables$Query$getShort> get copyWith =>
      CopyWith$Variables$Query$getShort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getShort) ||
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

abstract class CopyWith$Variables$Query$getShort<TRes> {
  factory CopyWith$Variables$Query$getShort(
    Variables$Query$getShort instance,
    TRes Function(Variables$Query$getShort) then,
  ) = _CopyWithImpl$Variables$Query$getShort;

  factory CopyWith$Variables$Query$getShort.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getShort;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$getShort<TRes>
    implements CopyWith$Variables$Query$getShort<TRes> {
  _CopyWithImpl$Variables$Query$getShort(
    this._instance,
    this._then,
  );

  final Variables$Query$getShort _instance;

  final TRes Function(Variables$Query$getShort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$getShort._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$getShort<TRes>
    implements CopyWith$Variables$Query$getShort<TRes> {
  _CopyWithStubImpl$Variables$Query$getShort(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$getShort {
  Query$getShort({
    required this.short,
    this.$__typename = 'QueryRoot',
  });

  factory Query$getShort.fromJson(Map<String, dynamic> json) {
    final l$short = json['short'];
    final l$$__typename = json['__typename'];
    return Query$getShort(
      short: Fragment$Short.fromJson((l$short as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Short short;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$short = short;
    _resultData['short'] = l$short.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$short = short;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$short,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getShort) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$short = short;
    final lOther$short = other.short;
    if (l$short != lOther$short) {
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

extension UtilityExtension$Query$getShort on Query$getShort {
  CopyWith$Query$getShort<Query$getShort> get copyWith =>
      CopyWith$Query$getShort(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getShort<TRes> {
  factory CopyWith$Query$getShort(
    Query$getShort instance,
    TRes Function(Query$getShort) then,
  ) = _CopyWithImpl$Query$getShort;

  factory CopyWith$Query$getShort.stub(TRes res) =
      _CopyWithStubImpl$Query$getShort;

  TRes call({
    Fragment$Short? short,
    String? $__typename,
  });
  CopyWith$Fragment$Short<TRes> get short;
}

class _CopyWithImpl$Query$getShort<TRes>
    implements CopyWith$Query$getShort<TRes> {
  _CopyWithImpl$Query$getShort(
    this._instance,
    this._then,
  );

  final Query$getShort _instance;

  final TRes Function(Query$getShort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? short = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getShort(
        short: short == _undefined || short == null
            ? _instance.short
            : (short as Fragment$Short),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Short<TRes> get short {
    final local$short = _instance.short;
    return CopyWith$Fragment$Short(local$short, (e) => call(short: e));
  }
}

class _CopyWithStubImpl$Query$getShort<TRes>
    implements CopyWith$Query$getShort<TRes> {
  _CopyWithStubImpl$Query$getShort(this._res);

  TRes _res;

  call({
    Fragment$Short? short,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Short<TRes> get short => CopyWith$Fragment$Short.stub(_res);
}

const documentNodeQuerygetShort = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getShort'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'short'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Short'),
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
  fragmentDefinitionShort,
  fragmentDefinitionPlayableMediaItemShort,
  fragmentDefinitionBasicStream,
]);
Query$getShort _parserFn$Query$getShort(Map<String, dynamic> data) =>
    Query$getShort.fromJson(data);
typedef OnQueryComplete$Query$getShort = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getShort?,
);

class Options$Query$getShort extends graphql.QueryOptions<Query$getShort> {
  Options$Query$getShort({
    String? operationName,
    required Variables$Query$getShort variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getShort? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getShort? onComplete,
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
                    data == null ? null : _parserFn$Query$getShort(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetShort,
          parserFn: _parserFn$Query$getShort,
        );

  final OnQueryComplete$Query$getShort? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getShort
    extends graphql.WatchQueryOptions<Query$getShort> {
  WatchOptions$Query$getShort({
    String? operationName,
    required Variables$Query$getShort variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getShort? typedOptimisticResult,
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
          document: documentNodeQuerygetShort,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getShort,
        );
}

class FetchMoreOptions$Query$getShort extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getShort({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$getShort variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerygetShort,
        );
}

extension ClientExtension$Query$getShort on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getShort>> query$getShort(
          Options$Query$getShort options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$getShort> watchQuery$getShort(
          WatchOptions$Query$getShort options) =>
      this.watchQuery(options);
  void writeQuery$getShort({
    required Query$getShort data,
    required Variables$Query$getShort variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerygetShort),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getShort? readQuery$getShort({
    required Variables$Query$getShort variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerygetShort),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getShort.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getShort> useQuery$getShort(
        Options$Query$getShort options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$getShort> useWatchQuery$getShort(
        WatchOptions$Query$getShort options) =>
    graphql_flutter.useWatchQuery(options);

class Query$getShort$Widget extends graphql_flutter.Query<Query$getShort> {
  Query$getShort$Widget({
    widgets.Key? key,
    required Options$Query$getShort options,
    required graphql_flutter.QueryBuilder<Query$getShort> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Variables$Mutation$setShortProgress {
  factory Variables$Mutation$setShortProgress({
    required String id,
    required double progress,
  }) =>
      Variables$Mutation$setShortProgress._({
        r'id': id,
        r'progress': progress,
      });

  Variables$Mutation$setShortProgress._(this._$data);

  factory Variables$Mutation$setShortProgress.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$progress = data['progress'];
    result$data['progress'] = (l$progress as num).toDouble();
    return Variables$Mutation$setShortProgress._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  double get progress => (_$data['progress'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$progress = progress;
    result$data['progress'] = l$progress;
    return result$data;
  }

  CopyWith$Variables$Mutation$setShortProgress<
          Variables$Mutation$setShortProgress>
      get copyWith => CopyWith$Variables$Mutation$setShortProgress(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$setShortProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$progress = progress;
    return Object.hashAll([
      l$id,
      l$progress,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$setShortProgress<TRes> {
  factory CopyWith$Variables$Mutation$setShortProgress(
    Variables$Mutation$setShortProgress instance,
    TRes Function(Variables$Mutation$setShortProgress) then,
  ) = _CopyWithImpl$Variables$Mutation$setShortProgress;

  factory CopyWith$Variables$Mutation$setShortProgress.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$setShortProgress;

  TRes call({
    String? id,
    double? progress,
  });
}

class _CopyWithImpl$Variables$Mutation$setShortProgress<TRes>
    implements CopyWith$Variables$Mutation$setShortProgress<TRes> {
  _CopyWithImpl$Variables$Mutation$setShortProgress(
    this._instance,
    this._then,
  );

  final Variables$Mutation$setShortProgress _instance;

  final TRes Function(Variables$Mutation$setShortProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? progress = _undefined,
  }) =>
      _then(Variables$Mutation$setShortProgress._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (progress != _undefined && progress != null)
          'progress': (progress as double),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$setShortProgress<TRes>
    implements CopyWith$Variables$Mutation$setShortProgress<TRes> {
  _CopyWithStubImpl$Variables$Mutation$setShortProgress(this._res);

  TRes _res;

  call({
    String? id,
    double? progress,
  }) =>
      _res;
}

class Mutation$setShortProgress {
  Mutation$setShortProgress({
    required this.setShortProgress,
    this.$__typename = 'MutationRoot',
  });

  factory Mutation$setShortProgress.fromJson(Map<String, dynamic> json) {
    final l$setShortProgress = json['setShortProgress'];
    final l$$__typename = json['__typename'];
    return Mutation$setShortProgress(
      setShortProgress:
          Fragment$Short.fromJson((l$setShortProgress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Short setShortProgress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$setShortProgress = setShortProgress;
    _resultData['setShortProgress'] = l$setShortProgress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$setShortProgress = setShortProgress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$setShortProgress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$setShortProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$setShortProgress = setShortProgress;
    final lOther$setShortProgress = other.setShortProgress;
    if (l$setShortProgress != lOther$setShortProgress) {
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

extension UtilityExtension$Mutation$setShortProgress
    on Mutation$setShortProgress {
  CopyWith$Mutation$setShortProgress<Mutation$setShortProgress> get copyWith =>
      CopyWith$Mutation$setShortProgress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$setShortProgress<TRes> {
  factory CopyWith$Mutation$setShortProgress(
    Mutation$setShortProgress instance,
    TRes Function(Mutation$setShortProgress) then,
  ) = _CopyWithImpl$Mutation$setShortProgress;

  factory CopyWith$Mutation$setShortProgress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$setShortProgress;

  TRes call({
    Fragment$Short? setShortProgress,
    String? $__typename,
  });
  CopyWith$Fragment$Short<TRes> get setShortProgress;
}

class _CopyWithImpl$Mutation$setShortProgress<TRes>
    implements CopyWith$Mutation$setShortProgress<TRes> {
  _CopyWithImpl$Mutation$setShortProgress(
    this._instance,
    this._then,
  );

  final Mutation$setShortProgress _instance;

  final TRes Function(Mutation$setShortProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? setShortProgress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$setShortProgress(
        setShortProgress:
            setShortProgress == _undefined || setShortProgress == null
                ? _instance.setShortProgress
                : (setShortProgress as Fragment$Short),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Short<TRes> get setShortProgress {
    final local$setShortProgress = _instance.setShortProgress;
    return CopyWith$Fragment$Short(
        local$setShortProgress, (e) => call(setShortProgress: e));
  }
}

class _CopyWithStubImpl$Mutation$setShortProgress<TRes>
    implements CopyWith$Mutation$setShortProgress<TRes> {
  _CopyWithStubImpl$Mutation$setShortProgress(this._res);

  TRes _res;

  call({
    Fragment$Short? setShortProgress,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Short<TRes> get setShortProgress =>
      CopyWith$Fragment$Short.stub(_res);
}

const documentNodeMutationsetShortProgress = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'setShortProgress'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'progress')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'setShortProgress'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'progress'),
            value: VariableNode(name: NameNode(value: 'progress')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Short'),
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
  fragmentDefinitionShort,
  fragmentDefinitionPlayableMediaItemShort,
  fragmentDefinitionBasicStream,
]);
Mutation$setShortProgress _parserFn$Mutation$setShortProgress(
        Map<String, dynamic> data) =>
    Mutation$setShortProgress.fromJson(data);
typedef OnMutationCompleted$Mutation$setShortProgress = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$setShortProgress?,
);

class Options$Mutation$setShortProgress
    extends graphql.MutationOptions<Mutation$setShortProgress> {
  Options$Mutation$setShortProgress({
    String? operationName,
    required Variables$Mutation$setShortProgress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$setShortProgress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$setShortProgress? onCompleted,
    graphql.OnMutationUpdate<Mutation$setShortProgress>? update,
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
                        : _parserFn$Mutation$setShortProgress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationsetShortProgress,
          parserFn: _parserFn$Mutation$setShortProgress,
        );

  final OnMutationCompleted$Mutation$setShortProgress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$setShortProgress
    extends graphql.WatchQueryOptions<Mutation$setShortProgress> {
  WatchOptions$Mutation$setShortProgress({
    String? operationName,
    required Variables$Mutation$setShortProgress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$setShortProgress? typedOptimisticResult,
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
          document: documentNodeMutationsetShortProgress,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$setShortProgress,
        );
}

extension ClientExtension$Mutation$setShortProgress on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$setShortProgress>>
      mutate$setShortProgress(
              Options$Mutation$setShortProgress options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$setShortProgress>
      watchMutation$setShortProgress(
              WatchOptions$Mutation$setShortProgress options) =>
          this.watchMutation(options);
}

class Mutation$setShortProgress$HookResult {
  Mutation$setShortProgress$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$setShortProgress runMutation;

  final graphql.QueryResult<Mutation$setShortProgress> result;
}

Mutation$setShortProgress$HookResult useMutation$setShortProgress(
    [WidgetOptions$Mutation$setShortProgress? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$setShortProgress());
  return Mutation$setShortProgress$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$setShortProgress>
    useWatchMutation$setShortProgress(
            WatchOptions$Mutation$setShortProgress options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$setShortProgress
    extends graphql.MutationOptions<Mutation$setShortProgress> {
  WidgetOptions$Mutation$setShortProgress({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$setShortProgress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$setShortProgress? onCompleted,
    graphql.OnMutationUpdate<Mutation$setShortProgress>? update,
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
                        : _parserFn$Mutation$setShortProgress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationsetShortProgress,
          parserFn: _parserFn$Mutation$setShortProgress,
        );

  final OnMutationCompleted$Mutation$setShortProgress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$setShortProgress
    = graphql.MultiSourceResult<Mutation$setShortProgress> Function(
  Variables$Mutation$setShortProgress, {
  Object? optimisticResult,
  Mutation$setShortProgress? typedOptimisticResult,
});
typedef Builder$Mutation$setShortProgress = widgets.Widget Function(
  RunMutation$Mutation$setShortProgress,
  graphql.QueryResult<Mutation$setShortProgress>?,
);

class Mutation$setShortProgress$Widget
    extends graphql_flutter.Mutation<Mutation$setShortProgress> {
  Mutation$setShortProgress$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$setShortProgress? options,
    required Builder$Mutation$setShortProgress builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$setShortProgress(),
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

class Variables$Query$getShortStreams {
  factory Variables$Query$getShortStreams({required String id}) =>
      Variables$Query$getShortStreams._({
        r'id': id,
      });

  Variables$Query$getShortStreams._(this._$data);

  factory Variables$Query$getShortStreams.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$getShortStreams._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$getShortStreams<Variables$Query$getShortStreams>
      get copyWith => CopyWith$Variables$Query$getShortStreams(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getShortStreams) ||
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

abstract class CopyWith$Variables$Query$getShortStreams<TRes> {
  factory CopyWith$Variables$Query$getShortStreams(
    Variables$Query$getShortStreams instance,
    TRes Function(Variables$Query$getShortStreams) then,
  ) = _CopyWithImpl$Variables$Query$getShortStreams;

  factory CopyWith$Variables$Query$getShortStreams.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getShortStreams;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$getShortStreams<TRes>
    implements CopyWith$Variables$Query$getShortStreams<TRes> {
  _CopyWithImpl$Variables$Query$getShortStreams(
    this._instance,
    this._then,
  );

  final Variables$Query$getShortStreams _instance;

  final TRes Function(Variables$Query$getShortStreams) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$getShortStreams._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$getShortStreams<TRes>
    implements CopyWith$Variables$Query$getShortStreams<TRes> {
  _CopyWithStubImpl$Variables$Query$getShortStreams(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$getShortStreams {
  Query$getShortStreams({
    required this.short,
    this.$__typename = 'QueryRoot',
  });

  factory Query$getShortStreams.fromJson(Map<String, dynamic> json) {
    final l$short = json['short'];
    final l$$__typename = json['__typename'];
    return Query$getShortStreams(
      short: Query$getShortStreams$short.fromJson(
          (l$short as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getShortStreams$short short;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$short = short;
    _resultData['short'] = l$short.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$short = short;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$short,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getShortStreams) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$short = short;
    final lOther$short = other.short;
    if (l$short != lOther$short) {
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

extension UtilityExtension$Query$getShortStreams on Query$getShortStreams {
  CopyWith$Query$getShortStreams<Query$getShortStreams> get copyWith =>
      CopyWith$Query$getShortStreams(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getShortStreams<TRes> {
  factory CopyWith$Query$getShortStreams(
    Query$getShortStreams instance,
    TRes Function(Query$getShortStreams) then,
  ) = _CopyWithImpl$Query$getShortStreams;

  factory CopyWith$Query$getShortStreams.stub(TRes res) =
      _CopyWithStubImpl$Query$getShortStreams;

  TRes call({
    Query$getShortStreams$short? short,
    String? $__typename,
  });
  CopyWith$Query$getShortStreams$short<TRes> get short;
}

class _CopyWithImpl$Query$getShortStreams<TRes>
    implements CopyWith$Query$getShortStreams<TRes> {
  _CopyWithImpl$Query$getShortStreams(
    this._instance,
    this._then,
  );

  final Query$getShortStreams _instance;

  final TRes Function(Query$getShortStreams) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? short = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getShortStreams(
        short: short == _undefined || short == null
            ? _instance.short
            : (short as Query$getShortStreams$short),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getShortStreams$short<TRes> get short {
    final local$short = _instance.short;
    return CopyWith$Query$getShortStreams$short(
        local$short, (e) => call(short: e));
  }
}

class _CopyWithStubImpl$Query$getShortStreams<TRes>
    implements CopyWith$Query$getShortStreams<TRes> {
  _CopyWithStubImpl$Query$getShortStreams(this._res);

  TRes _res;

  call({
    Query$getShortStreams$short? short,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getShortStreams$short<TRes> get short =>
      CopyWith$Query$getShortStreams$short.stub(_res);
}

const documentNodeQuerygetShortStreams = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getShortStreams'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'short'),
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
            name: NameNode(value: 'streams'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'BasicStream'),
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
  fragmentDefinitionBasicStream,
]);
Query$getShortStreams _parserFn$Query$getShortStreams(
        Map<String, dynamic> data) =>
    Query$getShortStreams.fromJson(data);
typedef OnQueryComplete$Query$getShortStreams = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getShortStreams?,
);

class Options$Query$getShortStreams
    extends graphql.QueryOptions<Query$getShortStreams> {
  Options$Query$getShortStreams({
    String? operationName,
    required Variables$Query$getShortStreams variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getShortStreams? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getShortStreams? onComplete,
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
                    data == null ? null : _parserFn$Query$getShortStreams(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetShortStreams,
          parserFn: _parserFn$Query$getShortStreams,
        );

  final OnQueryComplete$Query$getShortStreams? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getShortStreams
    extends graphql.WatchQueryOptions<Query$getShortStreams> {
  WatchOptions$Query$getShortStreams({
    String? operationName,
    required Variables$Query$getShortStreams variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getShortStreams? typedOptimisticResult,
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
          document: documentNodeQuerygetShortStreams,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getShortStreams,
        );
}

class FetchMoreOptions$Query$getShortStreams extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getShortStreams({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$getShortStreams variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerygetShortStreams,
        );
}

extension ClientExtension$Query$getShortStreams on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getShortStreams>> query$getShortStreams(
          Options$Query$getShortStreams options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$getShortStreams> watchQuery$getShortStreams(
          WatchOptions$Query$getShortStreams options) =>
      this.watchQuery(options);
  void writeQuery$getShortStreams({
    required Query$getShortStreams data,
    required Variables$Query$getShortStreams variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerygetShortStreams),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getShortStreams? readQuery$getShortStreams({
    required Variables$Query$getShortStreams variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerygetShortStreams),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getShortStreams.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getShortStreams> useQuery$getShortStreams(
        Options$Query$getShortStreams options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$getShortStreams> useWatchQuery$getShortStreams(
        WatchOptions$Query$getShortStreams options) =>
    graphql_flutter.useWatchQuery(options);

class Query$getShortStreams$Widget
    extends graphql_flutter.Query<Query$getShortStreams> {
  Query$getShortStreams$Widget({
    widgets.Key? key,
    required Options$Query$getShortStreams options,
    required graphql_flutter.QueryBuilder<Query$getShortStreams> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$getShortStreams$short {
  Query$getShortStreams$short({
    required this.streams,
    this.$__typename = 'Short',
  });

  factory Query$getShortStreams$short.fromJson(Map<String, dynamic> json) {
    final l$streams = json['streams'];
    final l$$__typename = json['__typename'];
    return Query$getShortStreams$short(
      streams: (l$streams as List<dynamic>)
          .map(
              (e) => Fragment$BasicStream.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$BasicStream> streams;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$streams = streams;
    _resultData['streams'] = l$streams.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$streams = streams;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$streams.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getShortStreams$short) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$streams = streams;
    final lOther$streams = other.streams;
    if (l$streams.length != lOther$streams.length) {
      return false;
    }
    for (int i = 0; i < l$streams.length; i++) {
      final l$streams$entry = l$streams[i];
      final lOther$streams$entry = lOther$streams[i];
      if (l$streams$entry != lOther$streams$entry) {
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

extension UtilityExtension$Query$getShortStreams$short
    on Query$getShortStreams$short {
  CopyWith$Query$getShortStreams$short<Query$getShortStreams$short>
      get copyWith => CopyWith$Query$getShortStreams$short(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getShortStreams$short<TRes> {
  factory CopyWith$Query$getShortStreams$short(
    Query$getShortStreams$short instance,
    TRes Function(Query$getShortStreams$short) then,
  ) = _CopyWithImpl$Query$getShortStreams$short;

  factory CopyWith$Query$getShortStreams$short.stub(TRes res) =
      _CopyWithStubImpl$Query$getShortStreams$short;

  TRes call({
    List<Fragment$BasicStream>? streams,
    String? $__typename,
  });
  TRes streams(
      Iterable<Fragment$BasicStream> Function(
              Iterable<CopyWith$Fragment$BasicStream<Fragment$BasicStream>>)
          _fn);
}

class _CopyWithImpl$Query$getShortStreams$short<TRes>
    implements CopyWith$Query$getShortStreams$short<TRes> {
  _CopyWithImpl$Query$getShortStreams$short(
    this._instance,
    this._then,
  );

  final Query$getShortStreams$short _instance;

  final TRes Function(Query$getShortStreams$short) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? streams = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getShortStreams$short(
        streams: streams == _undefined || streams == null
            ? _instance.streams
            : (streams as List<Fragment$BasicStream>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes streams(
          Iterable<Fragment$BasicStream> Function(
                  Iterable<CopyWith$Fragment$BasicStream<Fragment$BasicStream>>)
              _fn) =>
      call(
          streams:
              _fn(_instance.streams.map((e) => CopyWith$Fragment$BasicStream(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getShortStreams$short<TRes>
    implements CopyWith$Query$getShortStreams$short<TRes> {
  _CopyWithStubImpl$Query$getShortStreams$short(this._res);

  TRes _res;

  call({
    List<Fragment$BasicStream>? streams,
    String? $__typename,
  }) =>
      _res;

  streams(_fn) => _res;
}
