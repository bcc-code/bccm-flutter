import '../schema/persons.graphql.dart';
import 'dart:async';
import 'episode.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$PlaylistDetails {
  Fragment$PlaylistDetails({
    required this.id,
    required this.title,
    this.description,
    this.image,
    this.$__typename = 'Playlist',
  });

  factory Fragment$PlaylistDetails.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Fragment$PlaylistDetails(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String?),
      image: (l$image as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String? description;

  final String? image;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PlaylistDetails ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$PlaylistDetails
    on Fragment$PlaylistDetails {
  CopyWith$Fragment$PlaylistDetails<Fragment$PlaylistDetails> get copyWith =>
      CopyWith$Fragment$PlaylistDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PlaylistDetails<TRes> {
  factory CopyWith$Fragment$PlaylistDetails(
    Fragment$PlaylistDetails instance,
    TRes Function(Fragment$PlaylistDetails) then,
  ) = _CopyWithImpl$Fragment$PlaylistDetails;

  factory CopyWith$Fragment$PlaylistDetails.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PlaylistDetails;

  TRes call({
    String? id,
    String? title,
    String? description,
    String? image,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PlaylistDetails<TRes>
    implements CopyWith$Fragment$PlaylistDetails<TRes> {
  _CopyWithImpl$Fragment$PlaylistDetails(
    this._instance,
    this._then,
  );

  final Fragment$PlaylistDetails _instance;

  final TRes Function(Fragment$PlaylistDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PlaylistDetails(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PlaylistDetails<TRes>
    implements CopyWith$Fragment$PlaylistDetails<TRes> {
  _CopyWithStubImpl$Fragment$PlaylistDetails(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    String? image,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPlaylistDetails = FragmentDefinitionNode(
  name: NameNode(value: 'PlaylistDetails'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Playlist'),
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
      name: NameNode(value: 'image'),
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
);
const documentNodeFragmentPlaylistDetails = DocumentNode(definitions: [
  fragmentDefinitionPlaylistDetails,
]);

extension ClientExtension$Fragment$PlaylistDetails on graphql.GraphQLClient {
  void writeFragment$PlaylistDetails({
    required Fragment$PlaylistDetails data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PlaylistDetails',
            document: documentNodeFragmentPlaylistDetails,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Fragment$PlaylistDetails? readFragment$PlaylistDetails({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PlaylistDetails',
          document: documentNodeFragmentPlaylistDetails,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PlaylistDetails.fromJson(result);
  }
}

class Fragment$PlaylistContributor {
  Fragment$PlaylistContributor({
    required this.contributionTypes,
    required this.person,
    this.$__typename = 'Contributor',
  });

  factory Fragment$PlaylistContributor.fromJson(Map<String, dynamic> json) {
    final l$contributionTypes = json['contributionTypes'];
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Fragment$PlaylistContributor(
      contributionTypes: (l$contributionTypes as List<dynamic>)
          .map((e) => fromJson$Enum$ContributionTypeCode((e as String)))
          .toList(),
      person: Fragment$PlaylistContributor$person.fromJson(
          (l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Enum$ContributionTypeCode> contributionTypes;

  final Fragment$PlaylistContributor$person person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contributionTypes = contributionTypes;
    _resultData['contributionTypes'] = l$contributionTypes
        .map((e) => toJson$Enum$ContributionTypeCode(e))
        .toList();
    final l$person = person;
    _resultData['person'] = l$person.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contributionTypes = contributionTypes;
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$contributionTypes.map((v) => v)),
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PlaylistContributor ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contributionTypes = contributionTypes;
    final lOther$contributionTypes = other.contributionTypes;
    if (l$contributionTypes.length != lOther$contributionTypes.length) {
      return false;
    }
    for (int i = 0; i < l$contributionTypes.length; i++) {
      final l$contributionTypes$entry = l$contributionTypes[i];
      final lOther$contributionTypes$entry = lOther$contributionTypes[i];
      if (l$contributionTypes$entry != lOther$contributionTypes$entry) {
        return false;
      }
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
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

extension UtilityExtension$Fragment$PlaylistContributor
    on Fragment$PlaylistContributor {
  CopyWith$Fragment$PlaylistContributor<Fragment$PlaylistContributor>
      get copyWith => CopyWith$Fragment$PlaylistContributor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PlaylistContributor<TRes> {
  factory CopyWith$Fragment$PlaylistContributor(
    Fragment$PlaylistContributor instance,
    TRes Function(Fragment$PlaylistContributor) then,
  ) = _CopyWithImpl$Fragment$PlaylistContributor;

  factory CopyWith$Fragment$PlaylistContributor.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PlaylistContributor;

  TRes call({
    List<Enum$ContributionTypeCode>? contributionTypes,
    Fragment$PlaylistContributor$person? person,
    String? $__typename,
  });
  CopyWith$Fragment$PlaylistContributor$person<TRes> get person;
}

class _CopyWithImpl$Fragment$PlaylistContributor<TRes>
    implements CopyWith$Fragment$PlaylistContributor<TRes> {
  _CopyWithImpl$Fragment$PlaylistContributor(
    this._instance,
    this._then,
  );

  final Fragment$PlaylistContributor _instance;

  final TRes Function(Fragment$PlaylistContributor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contributionTypes = _undefined,
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PlaylistContributor(
        contributionTypes:
            contributionTypes == _undefined || contributionTypes == null
                ? _instance.contributionTypes
                : (contributionTypes as List<Enum$ContributionTypeCode>),
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Fragment$PlaylistContributor$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PlaylistContributor$person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Fragment$PlaylistContributor$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Fragment$PlaylistContributor<TRes>
    implements CopyWith$Fragment$PlaylistContributor<TRes> {
  _CopyWithStubImpl$Fragment$PlaylistContributor(this._res);

  TRes _res;

  call({
    List<Enum$ContributionTypeCode>? contributionTypes,
    Fragment$PlaylistContributor$person? person,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PlaylistContributor$person<TRes> get person =>
      CopyWith$Fragment$PlaylistContributor$person.stub(_res);
}

const fragmentDefinitionPlaylistContributor = FragmentDefinitionNode(
  name: NameNode(value: 'PlaylistContributor'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Contributor'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'contributionTypes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'person'),
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
          name: NameNode(value: 'name'),
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
);
const documentNodeFragmentPlaylistContributor = DocumentNode(definitions: [
  fragmentDefinitionPlaylistContributor,
]);

extension ClientExtension$Fragment$PlaylistContributor
    on graphql.GraphQLClient {
  void writeFragment$PlaylistContributor({
    required Fragment$PlaylistContributor data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PlaylistContributor',
            document: documentNodeFragmentPlaylistContributor,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Fragment$PlaylistContributor? readFragment$PlaylistContributor({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PlaylistContributor',
          document: documentNodeFragmentPlaylistContributor,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$PlaylistContributor.fromJson(result);
  }
}

class Fragment$PlaylistContributor$person {
  Fragment$PlaylistContributor$person({
    required this.id,
    required this.name,
    this.$__typename = 'Person',
  });

  factory Fragment$PlaylistContributor$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$PlaylistContributor$person(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PlaylistContributor$person ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$PlaylistContributor$person
    on Fragment$PlaylistContributor$person {
  CopyWith$Fragment$PlaylistContributor$person<
          Fragment$PlaylistContributor$person>
      get copyWith => CopyWith$Fragment$PlaylistContributor$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PlaylistContributor$person<TRes> {
  factory CopyWith$Fragment$PlaylistContributor$person(
    Fragment$PlaylistContributor$person instance,
    TRes Function(Fragment$PlaylistContributor$person) then,
  ) = _CopyWithImpl$Fragment$PlaylistContributor$person;

  factory CopyWith$Fragment$PlaylistContributor$person.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PlaylistContributor$person;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PlaylistContributor$person<TRes>
    implements CopyWith$Fragment$PlaylistContributor$person<TRes> {
  _CopyWithImpl$Fragment$PlaylistContributor$person(
    this._instance,
    this._then,
  );

  final Fragment$PlaylistContributor$person _instance;

  final TRes Function(Fragment$PlaylistContributor$person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PlaylistContributor$person(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PlaylistContributor$person<TRes>
    implements CopyWith$Fragment$PlaylistContributor$person<TRes> {
  _CopyWithStubImpl$Fragment$PlaylistContributor$person(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$PlaylistSong {
  Fragment$PlaylistSong({
    required this.id,
    required this.key,
    required this.title,
    required this.urls,
    required this.collection,
    required this.contributors,
    this.$__typename = 'Song',
  });

  factory Fragment$PlaylistSong.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$key = json['key'];
    final l$title = json['title'];
    final l$urls = json['urls'];
    final l$collection = json['collection'];
    final l$contributors = json['contributors'];
    final l$$__typename = json['__typename'];
    return Fragment$PlaylistSong(
      id: (l$id as String),
      key: (l$key as String),
      title: (l$title as String),
      urls: (l$urls as List<dynamic>).map((e) => (e as String)).toList(),
      collection: Fragment$PlaylistSong$collection.fromJson(
          (l$collection as Map<String, dynamic>)),
      contributors: (l$contributors as List<dynamic>)
          .map((e) => Fragment$PlaylistContributor.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String key;

  final String title;

  final List<String> urls;

  final Fragment$PlaylistSong$collection collection;

  final List<Fragment$PlaylistContributor> contributors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$key = key;
    _resultData['key'] = l$key;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$urls = urls;
    _resultData['urls'] = l$urls.map((e) => e).toList();
    final l$collection = collection;
    _resultData['collection'] = l$collection.toJson();
    final l$contributors = contributors;
    _resultData['contributors'] =
        l$contributors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$key = key;
    final l$title = title;
    final l$urls = urls;
    final l$collection = collection;
    final l$contributors = contributors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$key,
      l$title,
      Object.hashAll(l$urls.map((v) => v)),
      l$collection,
      Object.hashAll(l$contributors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PlaylistSong || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$urls = urls;
    final lOther$urls = other.urls;
    if (l$urls.length != lOther$urls.length) {
      return false;
    }
    for (int i = 0; i < l$urls.length; i++) {
      final l$urls$entry = l$urls[i];
      final lOther$urls$entry = lOther$urls[i];
      if (l$urls$entry != lOther$urls$entry) {
        return false;
      }
    }
    final l$collection = collection;
    final lOther$collection = other.collection;
    if (l$collection != lOther$collection) {
      return false;
    }
    final l$contributors = contributors;
    final lOther$contributors = other.contributors;
    if (l$contributors.length != lOther$contributors.length) {
      return false;
    }
    for (int i = 0; i < l$contributors.length; i++) {
      final l$contributors$entry = l$contributors[i];
      final lOther$contributors$entry = lOther$contributors[i];
      if (l$contributors$entry != lOther$contributors$entry) {
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

extension UtilityExtension$Fragment$PlaylistSong on Fragment$PlaylistSong {
  CopyWith$Fragment$PlaylistSong<Fragment$PlaylistSong> get copyWith =>
      CopyWith$Fragment$PlaylistSong(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PlaylistSong<TRes> {
  factory CopyWith$Fragment$PlaylistSong(
    Fragment$PlaylistSong instance,
    TRes Function(Fragment$PlaylistSong) then,
  ) = _CopyWithImpl$Fragment$PlaylistSong;

  factory CopyWith$Fragment$PlaylistSong.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PlaylistSong;

  TRes call({
    String? id,
    String? key,
    String? title,
    List<String>? urls,
    Fragment$PlaylistSong$collection? collection,
    List<Fragment$PlaylistContributor>? contributors,
    String? $__typename,
  });
  CopyWith$Fragment$PlaylistSong$collection<TRes> get collection;
  TRes contributors(
      Iterable<Fragment$PlaylistContributor> Function(
              Iterable<
                  CopyWith$Fragment$PlaylistContributor<
                      Fragment$PlaylistContributor>>)
          _fn);
}

class _CopyWithImpl$Fragment$PlaylistSong<TRes>
    implements CopyWith$Fragment$PlaylistSong<TRes> {
  _CopyWithImpl$Fragment$PlaylistSong(
    this._instance,
    this._then,
  );

  final Fragment$PlaylistSong _instance;

  final TRes Function(Fragment$PlaylistSong) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? key = _undefined,
    Object? title = _undefined,
    Object? urls = _undefined,
    Object? collection = _undefined,
    Object? contributors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PlaylistSong(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        key: key == _undefined || key == null ? _instance.key : (key as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        urls: urls == _undefined || urls == null
            ? _instance.urls
            : (urls as List<String>),
        collection: collection == _undefined || collection == null
            ? _instance.collection
            : (collection as Fragment$PlaylistSong$collection),
        contributors: contributors == _undefined || contributors == null
            ? _instance.contributors
            : (contributors as List<Fragment$PlaylistContributor>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PlaylistSong$collection<TRes> get collection {
    final local$collection = _instance.collection;
    return CopyWith$Fragment$PlaylistSong$collection(
        local$collection, (e) => call(collection: e));
  }

  TRes contributors(
          Iterable<Fragment$PlaylistContributor> Function(
                  Iterable<
                      CopyWith$Fragment$PlaylistContributor<
                          Fragment$PlaylistContributor>>)
              _fn) =>
      call(
          contributors: _fn(_instance.contributors
              .map((e) => CopyWith$Fragment$PlaylistContributor(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$PlaylistSong<TRes>
    implements CopyWith$Fragment$PlaylistSong<TRes> {
  _CopyWithStubImpl$Fragment$PlaylistSong(this._res);

  TRes _res;

  call({
    String? id,
    String? key,
    String? title,
    List<String>? urls,
    Fragment$PlaylistSong$collection? collection,
    List<Fragment$PlaylistContributor>? contributors,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PlaylistSong$collection<TRes> get collection =>
      CopyWith$Fragment$PlaylistSong$collection.stub(_res);

  contributors(_fn) => _res;
}

const fragmentDefinitionPlaylistSong = FragmentDefinitionNode(
  name: NameNode(value: 'PlaylistSong'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Song'),
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
      name: NameNode(value: 'key'),
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
      name: NameNode(value: 'urls'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'collection'),
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
          name: NameNode(value: 'code'),
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
      name: NameNode(value: 'contributors'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'PlaylistContributor'),
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
);
const documentNodeFragmentPlaylistSong = DocumentNode(definitions: [
  fragmentDefinitionPlaylistSong,
  fragmentDefinitionPlaylistContributor,
]);

extension ClientExtension$Fragment$PlaylistSong on graphql.GraphQLClient {
  void writeFragment$PlaylistSong({
    required Fragment$PlaylistSong data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PlaylistSong',
            document: documentNodeFragmentPlaylistSong,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Fragment$PlaylistSong? readFragment$PlaylistSong({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PlaylistSong',
          document: documentNodeFragmentPlaylistSong,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PlaylistSong.fromJson(result);
  }
}

class Fragment$PlaylistSong$collection {
  Fragment$PlaylistSong$collection({
    required this.id,
    required this.code,
    this.$__typename = 'SongCollection',
  });

  factory Fragment$PlaylistSong$collection.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Fragment$PlaylistSong$collection(
      id: (l$id as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PlaylistSong$collection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Fragment$PlaylistSong$collection
    on Fragment$PlaylistSong$collection {
  CopyWith$Fragment$PlaylistSong$collection<Fragment$PlaylistSong$collection>
      get copyWith => CopyWith$Fragment$PlaylistSong$collection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PlaylistSong$collection<TRes> {
  factory CopyWith$Fragment$PlaylistSong$collection(
    Fragment$PlaylistSong$collection instance,
    TRes Function(Fragment$PlaylistSong$collection) then,
  ) = _CopyWithImpl$Fragment$PlaylistSong$collection;

  factory CopyWith$Fragment$PlaylistSong$collection.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PlaylistSong$collection;

  TRes call({
    String? id,
    String? code,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PlaylistSong$collection<TRes>
    implements CopyWith$Fragment$PlaylistSong$collection<TRes> {
  _CopyWithImpl$Fragment$PlaylistSong$collection(
    this._instance,
    this._then,
  );

  final Fragment$PlaylistSong$collection _instance;

  final TRes Function(Fragment$PlaylistSong$collection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PlaylistSong$collection(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PlaylistSong$collection<TRes>
    implements CopyWith$Fragment$PlaylistSong$collection<TRes> {
  _CopyWithStubImpl$Fragment$PlaylistSong$collection(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetPlaylist {
  factory Variables$Query$GetPlaylist({
    required String id,
    int? first,
    String? cursor,
  }) =>
      Variables$Query$GetPlaylist._({
        r'id': id,
        if (first != null) r'first': first,
        if (cursor != null) r'cursor': cursor,
      });

  Variables$Query$GetPlaylist._(this._$data);

  factory Variables$Query$GetPlaylist.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('cursor')) {
      final l$cursor = data['cursor'];
      result$data['cursor'] = (l$cursor as String?);
    }
    return Variables$Query$GetPlaylist._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  int? get first => (_$data['first'] as int?);

  String? get cursor => (_$data['cursor'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('cursor')) {
      final l$cursor = cursor;
      result$data['cursor'] = l$cursor;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetPlaylist<Variables$Query$GetPlaylist>
      get copyWith => CopyWith$Variables$Query$GetPlaylist(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetPlaylist ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$first = first;
    final l$cursor = cursor;
    return Object.hashAll([
      l$id,
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('cursor') ? l$cursor : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetPlaylist<TRes> {
  factory CopyWith$Variables$Query$GetPlaylist(
    Variables$Query$GetPlaylist instance,
    TRes Function(Variables$Query$GetPlaylist) then,
  ) = _CopyWithImpl$Variables$Query$GetPlaylist;

  factory CopyWith$Variables$Query$GetPlaylist.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetPlaylist;

  TRes call({
    String? id,
    int? first,
    String? cursor,
  });
}

class _CopyWithImpl$Variables$Query$GetPlaylist<TRes>
    implements CopyWith$Variables$Query$GetPlaylist<TRes> {
  _CopyWithImpl$Variables$Query$GetPlaylist(
    this._instance,
    this._then,
  );

  final Variables$Query$GetPlaylist _instance;

  final TRes Function(Variables$Query$GetPlaylist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? first = _undefined,
    Object? cursor = _undefined,
  }) =>
      _then(Variables$Query$GetPlaylist._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (first != _undefined) 'first': (first as int?),
        if (cursor != _undefined) 'cursor': (cursor as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetPlaylist<TRes>
    implements CopyWith$Variables$Query$GetPlaylist<TRes> {
  _CopyWithStubImpl$Variables$Query$GetPlaylist(this._res);

  TRes _res;

  call({
    String? id,
    int? first,
    String? cursor,
  }) =>
      _res;
}

class Query$GetPlaylist {
  Query$GetPlaylist({
    required this.playlist,
    this.$__typename = 'QueryRoot',
  });

  factory Query$GetPlaylist.fromJson(Map<String, dynamic> json) {
    final l$playlist = json['playlist'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaylist(
      playlist: Query$GetPlaylist$playlist.fromJson(
          (l$playlist as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPlaylist$playlist playlist;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$playlist = playlist;
    _resultData['playlist'] = l$playlist.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$playlist = playlist;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$playlist,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPlaylist || runtimeType != other.runtimeType) {
      return false;
    }
    final l$playlist = playlist;
    final lOther$playlist = other.playlist;
    if (l$playlist != lOther$playlist) {
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

extension UtilityExtension$Query$GetPlaylist on Query$GetPlaylist {
  CopyWith$Query$GetPlaylist<Query$GetPlaylist> get copyWith =>
      CopyWith$Query$GetPlaylist(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPlaylist<TRes> {
  factory CopyWith$Query$GetPlaylist(
    Query$GetPlaylist instance,
    TRes Function(Query$GetPlaylist) then,
  ) = _CopyWithImpl$Query$GetPlaylist;

  factory CopyWith$Query$GetPlaylist.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist;

  TRes call({
    Query$GetPlaylist$playlist? playlist,
    String? $__typename,
  });
  CopyWith$Query$GetPlaylist$playlist<TRes> get playlist;
}

class _CopyWithImpl$Query$GetPlaylist<TRes>
    implements CopyWith$Query$GetPlaylist<TRes> {
  _CopyWithImpl$Query$GetPlaylist(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist _instance;

  final TRes Function(Query$GetPlaylist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? playlist = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaylist(
        playlist: playlist == _undefined || playlist == null
            ? _instance.playlist
            : (playlist as Query$GetPlaylist$playlist),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPlaylist$playlist<TRes> get playlist {
    final local$playlist = _instance.playlist;
    return CopyWith$Query$GetPlaylist$playlist(
        local$playlist, (e) => call(playlist: e));
  }
}

class _CopyWithStubImpl$Query$GetPlaylist<TRes>
    implements CopyWith$Query$GetPlaylist<TRes> {
  _CopyWithStubImpl$Query$GetPlaylist(this._res);

  TRes _res;

  call({
    Query$GetPlaylist$playlist? playlist,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPlaylist$playlist<TRes> get playlist =>
      CopyWith$Query$GetPlaylist$playlist.stub(_res);
}

const documentNodeQueryGetPlaylist = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPlaylist'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cursor')),
        type: NamedTypeNode(
          name: NameNode(value: 'Cursor'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'playlist'),
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
            name: NameNode(value: 'PlaylistDetails'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'items'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'cursor'),
                value: VariableNode(name: NameNode(value: 'cursor')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'total'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'first'),
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
                name: NameNode(value: 'hasNext'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'items'),
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
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'duration'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'copyrightHolder'),
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
                            name: NameNode(value: 'name'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'type'),
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
                        name: NameNode(value: 'songs'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                            name: NameNode(value: 'PlaylistSong'),
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
                        name: NameNode(value: 'contributors'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                            name: NameNode(value: 'PlaylistContributor'),
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
                      FragmentSpreadNode(
                        name: NameNode(value: 'PlayableMediaItem'),
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
                  InlineFragmentNode(
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
                        name: NameNode(value: 'songs'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                            name: NameNode(value: 'PlaylistSong'),
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
  fragmentDefinitionPlaylistDetails,
  fragmentDefinitionPlaylistSong,
  fragmentDefinitionPlaylistContributor,
  fragmentDefinitionPlayableMediaItem,
  fragmentDefinitionBasicStream,
]);
Query$GetPlaylist _parserFn$Query$GetPlaylist(Map<String, dynamic> data) =>
    Query$GetPlaylist.fromJson(data);
typedef OnQueryComplete$Query$GetPlaylist = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetPlaylist?,
);

class Options$Query$GetPlaylist
    extends graphql.QueryOptions<Query$GetPlaylist> {
  Options$Query$GetPlaylist({
    String? operationName,
    required Variables$Query$GetPlaylist variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPlaylist? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetPlaylist? onComplete,
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
                    data == null ? null : _parserFn$Query$GetPlaylist(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetPlaylist,
          parserFn: _parserFn$Query$GetPlaylist,
        );

  final OnQueryComplete$Query$GetPlaylist? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetPlaylist
    extends graphql.WatchQueryOptions<Query$GetPlaylist> {
  WatchOptions$Query$GetPlaylist({
    String? operationName,
    required Variables$Query$GetPlaylist variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPlaylist? typedOptimisticResult,
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
          document: documentNodeQueryGetPlaylist,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetPlaylist,
        );
}

class FetchMoreOptions$Query$GetPlaylist extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetPlaylist({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetPlaylist variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetPlaylist,
        );
}

extension ClientExtension$Query$GetPlaylist on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetPlaylist>> query$GetPlaylist(
          Options$Query$GetPlaylist options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$GetPlaylist> watchQuery$GetPlaylist(
          WatchOptions$Query$GetPlaylist options) =>
      this.watchQuery(options);

  void writeQuery$GetPlaylist({
    required Query$GetPlaylist data,
    required Variables$Query$GetPlaylist variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetPlaylist),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$GetPlaylist? readQuery$GetPlaylist({
    required Variables$Query$GetPlaylist variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetPlaylist),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetPlaylist.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetPlaylist> useQuery$GetPlaylist(
        Options$Query$GetPlaylist options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetPlaylist> useWatchQuery$GetPlaylist(
        WatchOptions$Query$GetPlaylist options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetPlaylist$Widget
    extends graphql_flutter.Query<Query$GetPlaylist> {
  Query$GetPlaylist$Widget({
    widgets.Key? key,
    required Options$Query$GetPlaylist options,
    required graphql_flutter.QueryBuilder<Query$GetPlaylist> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetPlaylist$playlist implements Fragment$PlaylistDetails {
  Query$GetPlaylist$playlist({
    required this.id,
    required this.title,
    this.description,
    this.image,
    this.$__typename = 'Playlist',
    required this.items,
  });

  factory Query$GetPlaylist$playlist.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    final l$items = json['items'];
    return Query$GetPlaylist$playlist(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String?),
      image: (l$image as String?),
      $__typename: (l$$__typename as String),
      items: Query$GetPlaylist$playlist$items.fromJson(
          (l$items as Map<String, dynamic>)),
    );
  }

  final String id;

  final String title;

  final String? description;

  final String? image;

  final String $__typename;

  final Query$GetPlaylist$playlist$items items;

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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$items = items;
    _resultData['items'] = l$items.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$image = image;
    final l$$__typename = $__typename;
    final l$items = items;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$image,
      l$$__typename,
      l$items,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPlaylist$playlist ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items != lOther$items) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPlaylist$playlist
    on Query$GetPlaylist$playlist {
  CopyWith$Query$GetPlaylist$playlist<Query$GetPlaylist$playlist>
      get copyWith => CopyWith$Query$GetPlaylist$playlist(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPlaylist$playlist<TRes> {
  factory CopyWith$Query$GetPlaylist$playlist(
    Query$GetPlaylist$playlist instance,
    TRes Function(Query$GetPlaylist$playlist) then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist;

  factory CopyWith$Query$GetPlaylist$playlist.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist;

  TRes call({
    String? id,
    String? title,
    String? description,
    String? image,
    String? $__typename,
    Query$GetPlaylist$playlist$items? items,
  });
  CopyWith$Query$GetPlaylist$playlist$items<TRes> get items;
}

class _CopyWithImpl$Query$GetPlaylist$playlist<TRes>
    implements CopyWith$Query$GetPlaylist$playlist<TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist _instance;

  final TRes Function(Query$GetPlaylist$playlist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
    Object? items = _undefined,
  }) =>
      _then(Query$GetPlaylist$playlist(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        items: items == _undefined || items == null
            ? _instance.items
            : (items as Query$GetPlaylist$playlist$items),
      ));

  CopyWith$Query$GetPlaylist$playlist$items<TRes> get items {
    final local$items = _instance.items;
    return CopyWith$Query$GetPlaylist$playlist$items(
        local$items, (e) => call(items: e));
  }
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist<TRes>
    implements CopyWith$Query$GetPlaylist$playlist<TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    String? image,
    String? $__typename,
    Query$GetPlaylist$playlist$items? items,
  }) =>
      _res;

  CopyWith$Query$GetPlaylist$playlist$items<TRes> get items =>
      CopyWith$Query$GetPlaylist$playlist$items.stub(_res);
}

class Query$GetPlaylist$playlist$items {
  Query$GetPlaylist$playlist$items({
    required this.total,
    required this.first,
    required this.nextCursor,
    required this.hasNext,
    required this.items,
    this.$__typename = 'PlaylistItemPagination',
  });

  factory Query$GetPlaylist$playlist$items.fromJson(Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$first = json['first'];
    final l$nextCursor = json['nextCursor'];
    final l$hasNext = json['hasNext'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaylist$playlist$items(
      total: (l$total as int),
      first: (l$first as int),
      nextCursor: (l$nextCursor as String),
      hasNext: (l$hasNext as bool),
      items: (l$items as List<dynamic>)
          .map((e) => Query$GetPlaylist$playlist$items$items.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int total;

  final int first;

  final String nextCursor;

  final bool hasNext;

  final List<Query$GetPlaylist$playlist$items$items> items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$first = first;
    _resultData['first'] = l$first;
    final l$nextCursor = nextCursor;
    _resultData['nextCursor'] = l$nextCursor;
    final l$hasNext = hasNext;
    _resultData['hasNext'] = l$hasNext;
    final l$items = items;
    _resultData['items'] = l$items.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$first = first;
    final l$nextCursor = nextCursor;
    final l$hasNext = hasNext;
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$first,
      l$nextCursor,
      l$hasNext,
      Object.hashAll(l$items.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPlaylist$playlist$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    final l$nextCursor = nextCursor;
    final lOther$nextCursor = other.nextCursor;
    if (l$nextCursor != lOther$nextCursor) {
      return false;
    }
    final l$hasNext = hasNext;
    final lOther$hasNext = other.hasNext;
    if (l$hasNext != lOther$hasNext) {
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

extension UtilityExtension$Query$GetPlaylist$playlist$items
    on Query$GetPlaylist$playlist$items {
  CopyWith$Query$GetPlaylist$playlist$items<Query$GetPlaylist$playlist$items>
      get copyWith => CopyWith$Query$GetPlaylist$playlist$items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPlaylist$playlist$items<TRes> {
  factory CopyWith$Query$GetPlaylist$playlist$items(
    Query$GetPlaylist$playlist$items instance,
    TRes Function(Query$GetPlaylist$playlist$items) then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist$items;

  factory CopyWith$Query$GetPlaylist$playlist$items.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist$items;

  TRes call({
    int? total,
    int? first,
    String? nextCursor,
    bool? hasNext,
    List<Query$GetPlaylist$playlist$items$items>? items,
    String? $__typename,
  });
  TRes items(
      Iterable<Query$GetPlaylist$playlist$items$items> Function(
              Iterable<
                  CopyWith$Query$GetPlaylist$playlist$items$items<
                      Query$GetPlaylist$playlist$items$items>>)
          _fn);
}

class _CopyWithImpl$Query$GetPlaylist$playlist$items<TRes>
    implements CopyWith$Query$GetPlaylist$playlist$items<TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist$items(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist$items _instance;

  final TRes Function(Query$GetPlaylist$playlist$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? first = _undefined,
    Object? nextCursor = _undefined,
    Object? hasNext = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaylist$playlist$items(
        total: total == _undefined || total == null
            ? _instance.total
            : (total as int),
        first: first == _undefined || first == null
            ? _instance.first
            : (first as int),
        nextCursor: nextCursor == _undefined || nextCursor == null
            ? _instance.nextCursor
            : (nextCursor as String),
        hasNext: hasNext == _undefined || hasNext == null
            ? _instance.hasNext
            : (hasNext as bool),
        items: items == _undefined || items == null
            ? _instance.items
            : (items as List<Query$GetPlaylist$playlist$items$items>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes items(
          Iterable<Query$GetPlaylist$playlist$items$items> Function(
                  Iterable<
                      CopyWith$Query$GetPlaylist$playlist$items$items<
                          Query$GetPlaylist$playlist$items$items>>)
              _fn) =>
      call(
          items: _fn(_instance.items
              .map((e) => CopyWith$Query$GetPlaylist$playlist$items$items(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist$items<TRes>
    implements CopyWith$Query$GetPlaylist$playlist$items<TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist$items(this._res);

  TRes _res;

  call({
    int? total,
    int? first,
    String? nextCursor,
    bool? hasNext,
    List<Query$GetPlaylist$playlist$items$items>? items,
    String? $__typename,
  }) =>
      _res;

  items(_fn) => _res;
}

class Query$GetPlaylist$playlist$items$items {
  Query$GetPlaylist$playlist$items$items({required this.$__typename});

  factory Query$GetPlaylist$playlist$items$items.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Episode":
        return Query$GetPlaylist$playlist$items$items$$Episode.fromJson(json);

      case "Short":
        return Query$GetPlaylist$playlist$items$items$$Short.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$GetPlaylist$playlist$items$items(
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
    if (other is! Query$GetPlaylist$playlist$items$items ||
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

extension UtilityExtension$Query$GetPlaylist$playlist$items$items
    on Query$GetPlaylist$playlist$items$items {
  CopyWith$Query$GetPlaylist$playlist$items$items<
          Query$GetPlaylist$playlist$items$items>
      get copyWith => CopyWith$Query$GetPlaylist$playlist$items$items(
            this,
            (i) => i,
          );

  _T when<_T>({
    required _T Function(Query$GetPlaylist$playlist$items$items$$Episode)
        episode,
    required _T Function(Query$GetPlaylist$playlist$items$items$$Short) short,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Episode":
        return episode(this as Query$GetPlaylist$playlist$items$items$$Episode);

      case "Short":
        return short(this as Query$GetPlaylist$playlist$items$items$$Short);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$GetPlaylist$playlist$items$items$$Episode)? episode,
    _T Function(Query$GetPlaylist$playlist$items$items$$Short)? short,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Episode":
        if (episode != null) {
          return episode(
              this as Query$GetPlaylist$playlist$items$items$$Episode);
        } else {
          return orElse();
        }

      case "Short":
        if (short != null) {
          return short(this as Query$GetPlaylist$playlist$items$items$$Short);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$GetPlaylist$playlist$items$items<TRes> {
  factory CopyWith$Query$GetPlaylist$playlist$items$items(
    Query$GetPlaylist$playlist$items$items instance,
    TRes Function(Query$GetPlaylist$playlist$items$items) then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist$items$items;

  factory CopyWith$Query$GetPlaylist$playlist$items$items.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetPlaylist$playlist$items$items<TRes>
    implements CopyWith$Query$GetPlaylist$playlist$items$items<TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist$items$items(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist$items$items _instance;

  final TRes Function(Query$GetPlaylist$playlist$items$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetPlaylist$playlist$items$items(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items<TRes>
    implements CopyWith$Query$GetPlaylist$playlist$items$items<TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetPlaylist$playlist$items$items$$Episode
    implements
        Fragment$PlayableMediaItem$$Episode,
        Query$GetPlaylist$playlist$items$items {
  Query$GetPlaylist$playlist$items$items$$Episode({
    required this.id,
    required this.title,
    required this.description,
    required this.duration,
    this.copyrightHolder,
    required this.songs,
    required this.contributors,
    required this.streams,
    required this.originalTitle,
    this.image,
    required this.cursor,
    this.context,
    this.season,
    this.$__typename = 'Episode',
  });

  factory Query$GetPlaylist$playlist$items$items$$Episode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$duration = json['duration'];
    final l$copyrightHolder = json['copyrightHolder'];
    final l$songs = json['songs'];
    final l$contributors = json['contributors'];
    final l$streams = json['streams'];
    final l$originalTitle = json['originalTitle'];
    final l$image = json['image'];
    final l$cursor = json['cursor'];
    final l$context = json['context'];
    final l$season = json['season'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaylist$playlist$items$items$$Episode(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String),
      duration: (l$duration as int),
      copyrightHolder: l$copyrightHolder == null
          ? null
          : Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder
              .fromJson((l$copyrightHolder as Map<String, dynamic>)),
      songs: (l$songs as List<dynamic>)
          .map((e) =>
              Fragment$PlaylistSong.fromJson((e as Map<String, dynamic>)))
          .toList(),
      contributors: (l$contributors as List<dynamic>)
          .map((e) =>
              Query$GetPlaylist$playlist$items$items$$Episode$contributors
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      streams: (l$streams as List<dynamic>)
          .map(
              (e) => Fragment$BasicStream.fromJson((e as Map<String, dynamic>)))
          .toList(),
      originalTitle: (l$originalTitle as String),
      image: (l$image as String?),
      cursor: (l$cursor as String),
      context: l$context == null
          ? null
          : Query$GetPlaylist$playlist$items$items$$Episode$context.fromJson(
              (l$context as Map<String, dynamic>)),
      season: l$season == null
          ? null
          : Query$GetPlaylist$playlist$items$items$$Episode$season.fromJson(
              (l$season as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String description;

  final int duration;

  final Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder?
      copyrightHolder;

  final List<Fragment$PlaylistSong> songs;

  final List<Query$GetPlaylist$playlist$items$items$$Episode$contributors>
      contributors;

  final List<Fragment$BasicStream> streams;

  final String originalTitle;

  final String? image;

  final String cursor;

  final Query$GetPlaylist$playlist$items$items$$Episode$context? context;

  final Query$GetPlaylist$playlist$items$items$$Episode$season? season;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$copyrightHolder = copyrightHolder;
    _resultData['copyrightHolder'] = l$copyrightHolder?.toJson();
    final l$songs = songs;
    _resultData['songs'] = l$songs.map((e) => e.toJson()).toList();
    final l$contributors = contributors;
    _resultData['contributors'] =
        l$contributors.map((e) => e.toJson()).toList();
    final l$streams = streams;
    _resultData['streams'] = l$streams.map((e) => e.toJson()).toList();
    final l$originalTitle = originalTitle;
    _resultData['originalTitle'] = l$originalTitle;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$cursor = cursor;
    _resultData['cursor'] = l$cursor;
    final l$context = context;
    _resultData['context'] = l$context?.toJson();
    final l$season = season;
    _resultData['season'] = l$season?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$duration = duration;
    final l$copyrightHolder = copyrightHolder;
    final l$songs = songs;
    final l$contributors = contributors;
    final l$streams = streams;
    final l$originalTitle = originalTitle;
    final l$image = image;
    final l$cursor = cursor;
    final l$context = context;
    final l$season = season;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$duration,
      l$copyrightHolder,
      Object.hashAll(l$songs.map((v) => v)),
      Object.hashAll(l$contributors.map((v) => v)),
      Object.hashAll(l$streams.map((v) => v)),
      l$originalTitle,
      l$image,
      l$cursor,
      l$context,
      l$season,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPlaylist$playlist$items$items$$Episode ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$copyrightHolder = copyrightHolder;
    final lOther$copyrightHolder = other.copyrightHolder;
    if (l$copyrightHolder != lOther$copyrightHolder) {
      return false;
    }
    final l$songs = songs;
    final lOther$songs = other.songs;
    if (l$songs.length != lOther$songs.length) {
      return false;
    }
    for (int i = 0; i < l$songs.length; i++) {
      final l$songs$entry = l$songs[i];
      final lOther$songs$entry = lOther$songs[i];
      if (l$songs$entry != lOther$songs$entry) {
        return false;
      }
    }
    final l$contributors = contributors;
    final lOther$contributors = other.contributors;
    if (l$contributors.length != lOther$contributors.length) {
      return false;
    }
    for (int i = 0; i < l$contributors.length; i++) {
      final l$contributors$entry = l$contributors[i];
      final lOther$contributors$entry = lOther$contributors[i];
      if (l$contributors$entry != lOther$contributors$entry) {
        return false;
      }
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
    final l$originalTitle = originalTitle;
    final lOther$originalTitle = other.originalTitle;
    if (l$originalTitle != lOther$originalTitle) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$cursor = cursor;
    final lOther$cursor = other.cursor;
    if (l$cursor != lOther$cursor) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
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

extension UtilityExtension$Query$GetPlaylist$playlist$items$items$$Episode
    on Query$GetPlaylist$playlist$items$items$$Episode {
  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode<
          Query$GetPlaylist$playlist$items$items$$Episode>
      get copyWith => CopyWith$Query$GetPlaylist$playlist$items$items$$Episode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPlaylist$playlist$items$items$$Episode<TRes> {
  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode(
    Query$GetPlaylist$playlist$items$items$$Episode instance,
    TRes Function(Query$GetPlaylist$playlist$items$items$$Episode) then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode;

  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode;

  TRes call({
    String? id,
    String? title,
    String? description,
    int? duration,
    Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder?
        copyrightHolder,
    List<Fragment$PlaylistSong>? songs,
    List<Query$GetPlaylist$playlist$items$items$$Episode$contributors>?
        contributors,
    List<Fragment$BasicStream>? streams,
    String? originalTitle,
    String? image,
    String? cursor,
    Query$GetPlaylist$playlist$items$items$$Episode$context? context,
    Query$GetPlaylist$playlist$items$items$$Episode$season? season,
    String? $__typename,
  });
  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder<TRes>
      get copyrightHolder;
  TRes songs(
      Iterable<Fragment$PlaylistSong> Function(
              Iterable<CopyWith$Fragment$PlaylistSong<Fragment$PlaylistSong>>)
          _fn);
  TRes contributors(
      Iterable<Query$GetPlaylist$playlist$items$items$$Episode$contributors> Function(
              Iterable<
                  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors<
                      Query$GetPlaylist$playlist$items$items$$Episode$contributors>>)
          _fn);
  TRes streams(
      Iterable<Fragment$BasicStream> Function(
              Iterable<CopyWith$Fragment$BasicStream<Fragment$BasicStream>>)
          _fn);
  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context<TRes>
      get context;
  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season<TRes>
      get season;
}

class _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode<TRes>
    implements CopyWith$Query$GetPlaylist$playlist$items$items$$Episode<TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist$items$items$$Episode _instance;

  final TRes Function(Query$GetPlaylist$playlist$items$items$$Episode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? duration = _undefined,
    Object? copyrightHolder = _undefined,
    Object? songs = _undefined,
    Object? contributors = _undefined,
    Object? streams = _undefined,
    Object? originalTitle = _undefined,
    Object? image = _undefined,
    Object? cursor = _undefined,
    Object? context = _undefined,
    Object? season = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaylist$playlist$items$items$$Episode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as int),
        copyrightHolder: copyrightHolder == _undefined
            ? _instance.copyrightHolder
            : (copyrightHolder
                as Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder?),
        songs: songs == _undefined || songs == null
            ? _instance.songs
            : (songs as List<Fragment$PlaylistSong>),
        contributors: contributors == _undefined || contributors == null
            ? _instance.contributors
            : (contributors as List<
                Query$GetPlaylist$playlist$items$items$$Episode$contributors>),
        streams: streams == _undefined || streams == null
            ? _instance.streams
            : (streams as List<Fragment$BasicStream>),
        originalTitle: originalTitle == _undefined || originalTitle == null
            ? _instance.originalTitle
            : (originalTitle as String),
        image: image == _undefined ? _instance.image : (image as String?),
        cursor: cursor == _undefined || cursor == null
            ? _instance.cursor
            : (cursor as String),
        context: context == _undefined
            ? _instance.context
            : (context
                as Query$GetPlaylist$playlist$items$items$$Episode$context?),
        season: season == _undefined
            ? _instance.season
            : (season
                as Query$GetPlaylist$playlist$items$items$$Episode$season?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder<TRes>
      get copyrightHolder {
    final local$copyrightHolder = _instance.copyrightHolder;
    return local$copyrightHolder == null
        ? CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder
            .stub(_then(_instance))
        : CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder(
            local$copyrightHolder, (e) => call(copyrightHolder: e));
  }

  TRes songs(
          Iterable<Fragment$PlaylistSong> Function(
                  Iterable<
                      CopyWith$Fragment$PlaylistSong<Fragment$PlaylistSong>>)
              _fn) =>
      call(
          songs: _fn(_instance.songs.map((e) => CopyWith$Fragment$PlaylistSong(
                e,
                (i) => i,
              ))).toList());

  TRes contributors(
          Iterable<Query$GetPlaylist$playlist$items$items$$Episode$contributors> Function(
                  Iterable<
                      CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors<
                          Query$GetPlaylist$playlist$items$items$$Episode$contributors>>)
              _fn) =>
      call(
          contributors: _fn(_instance.contributors.map((e) =>
              CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors(
                e,
                (i) => i,
              ))).toList());

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

  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context<TRes>
      get context {
    final local$context = _instance.context;
    return local$context == null
        ? CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context.stub(
            _then(_instance))
        : CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context(
            local$context, (e) => call(context: e));
  }

  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season<TRes>
      get season {
    final local$season = _instance.season;
    return local$season == null
        ? CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season.stub(
            _then(_instance))
        : CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season(
            local$season, (e) => call(season: e));
  }
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode<TRes>
    implements CopyWith$Query$GetPlaylist$playlist$items$items$$Episode<TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    int? duration,
    Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder?
        copyrightHolder,
    List<Fragment$PlaylistSong>? songs,
    List<Query$GetPlaylist$playlist$items$items$$Episode$contributors>?
        contributors,
    List<Fragment$BasicStream>? streams,
    String? originalTitle,
    String? image,
    String? cursor,
    Query$GetPlaylist$playlist$items$items$$Episode$context? context,
    Query$GetPlaylist$playlist$items$items$$Episode$season? season,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder<TRes>
      get copyrightHolder =>
          CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder
              .stub(_res);

  songs(_fn) => _res;

  contributors(_fn) => _res;

  streams(_fn) => _res;

  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context<TRes>
      get context =>
          CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context.stub(
              _res);

  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season<TRes>
      get season =>
          CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season.stub(
              _res);
}

class Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder {
  Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder({
    required this.id,
    required this.name,
    required this.type,
    this.$__typename = 'Person',
  });

  factory Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder(
      id: (l$id as String),
      name: (l$name as String),
      type: fromJson$Enum$PersonType((l$type as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final Enum$PersonType type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = toJson$Enum$PersonType(l$type);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder
    on Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder {
  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder<
          Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder>
      get copyWith =>
          CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder<
    TRes> {
  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder(
    Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder instance,
    TRes Function(
            Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder)
        then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder;

  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder;

  TRes call({
    String? id,
    String? name,
    Enum$PersonType? type,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder<
            TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder
      _instance;

  final TRes Function(
      Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$PersonType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder<
            TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$copyrightHolder(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Enum$PersonType? type,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetPlaylist$playlist$items$items$$Episode$contributors
    implements
        Fragment$PlaylistContributor,
        Fragment$PlayableMediaItem$$Episode$contributors {
  Query$GetPlaylist$playlist$items$items$$Episode$contributors({
    required this.contributionTypes,
    required this.person,
    this.$__typename = 'Contributor',
  });

  factory Query$GetPlaylist$playlist$items$items$$Episode$contributors.fromJson(
      Map<String, dynamic> json) {
    final l$contributionTypes = json['contributionTypes'];
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaylist$playlist$items$items$$Episode$contributors(
      contributionTypes: (l$contributionTypes as List<dynamic>)
          .map((e) => fromJson$Enum$ContributionTypeCode((e as String)))
          .toList(),
      person:
          Query$GetPlaylist$playlist$items$items$$Episode$contributors$person
              .fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Enum$ContributionTypeCode> contributionTypes;

  final Query$GetPlaylist$playlist$items$items$$Episode$contributors$person
      person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contributionTypes = contributionTypes;
    _resultData['contributionTypes'] = l$contributionTypes
        .map((e) => toJson$Enum$ContributionTypeCode(e))
        .toList();
    final l$person = person;
    _resultData['person'] = l$person.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contributionTypes = contributionTypes;
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$contributionTypes.map((v) => v)),
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetPlaylist$playlist$items$items$$Episode$contributors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contributionTypes = contributionTypes;
    final lOther$contributionTypes = other.contributionTypes;
    if (l$contributionTypes.length != lOther$contributionTypes.length) {
      return false;
    }
    for (int i = 0; i < l$contributionTypes.length; i++) {
      final l$contributionTypes$entry = l$contributionTypes[i];
      final lOther$contributionTypes$entry = lOther$contributionTypes[i];
      if (l$contributionTypes$entry != lOther$contributionTypes$entry) {
        return false;
      }
    }
    final l$person = person;
    final lOther$person = other.person;
    if (l$person != lOther$person) {
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

extension UtilityExtension$Query$GetPlaylist$playlist$items$items$$Episode$contributors
    on Query$GetPlaylist$playlist$items$items$$Episode$contributors {
  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors<
          Query$GetPlaylist$playlist$items$items$$Episode$contributors>
      get copyWith =>
          CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors<
    TRes> {
  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors(
    Query$GetPlaylist$playlist$items$items$$Episode$contributors instance,
    TRes Function(Query$GetPlaylist$playlist$items$items$$Episode$contributors)
        then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$contributors;

  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$contributors;

  TRes call({
    List<Enum$ContributionTypeCode>? contributionTypes,
    Query$GetPlaylist$playlist$items$items$$Episode$contributors$person? person,
    String? $__typename,
  });
  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person<
      TRes> get person;
}

class _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$contributors<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors<
            TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$contributors(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist$items$items$$Episode$contributors _instance;

  final TRes Function(
      Query$GetPlaylist$playlist$items$items$$Episode$contributors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contributionTypes = _undefined,
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaylist$playlist$items$items$$Episode$contributors(
        contributionTypes:
            contributionTypes == _undefined || contributionTypes == null
                ? _instance.contributionTypes
                : (contributionTypes as List<Enum$ContributionTypeCode>),
        person: person == _undefined || person == null
            ? _instance.person
            : (person
                as Query$GetPlaylist$playlist$items$items$$Episode$contributors$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person<
      TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$contributors<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors<
            TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$contributors(
      this._res);

  TRes _res;

  call({
    List<Enum$ContributionTypeCode>? contributionTypes,
    Query$GetPlaylist$playlist$items$items$$Episode$contributors$person? person,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person<
          TRes>
      get person =>
          CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person
              .stub(_res);
}

class Query$GetPlaylist$playlist$items$items$$Episode$contributors$person
    implements
        Fragment$PlaylistContributor$person,
        Fragment$PlayableMediaItem$$Episode$contributors$person {
  Query$GetPlaylist$playlist$items$items$$Episode$contributors$person({
    required this.id,
    required this.name,
    this.$__typename = 'Person',
  });

  factory Query$GetPlaylist$playlist$items$items$$Episode$contributors$person.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaylist$playlist$items$items$$Episode$contributors$person(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetPlaylist$playlist$items$items$$Episode$contributors$person ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person
    on Query$GetPlaylist$playlist$items$items$$Episode$contributors$person {
  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person<
          Query$GetPlaylist$playlist$items$items$$Episode$contributors$person>
      get copyWith =>
          CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person<
    TRes> {
  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person(
    Query$GetPlaylist$playlist$items$items$$Episode$contributors$person
        instance,
    TRes Function(
            Query$GetPlaylist$playlist$items$items$$Episode$contributors$person)
        then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person;

  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person<
            TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist$items$items$$Episode$contributors$person
      _instance;

  final TRes Function(
          Query$GetPlaylist$playlist$items$items$$Episode$contributors$person)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaylist$playlist$items$items$$Episode$contributors$person(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person<
            TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$contributors$person(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetPlaylist$playlist$items$items$$Episode$context
    implements Fragment$PlayableMediaItem$$Episode$context {
  Query$GetPlaylist$playlist$items$items$$Episode$context(
      {required this.$__typename});

  factory Query$GetPlaylist$playlist$items$items$$Episode$context.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ContextCollection":
        return Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection
            .fromJson(json);

      case "Season":
        return Query$GetPlaylist$playlist$items$items$$Episode$context$$Season
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$GetPlaylist$playlist$items$items$$Episode$context(
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
    if (other is! Query$GetPlaylist$playlist$items$items$$Episode$context ||
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

extension UtilityExtension$Query$GetPlaylist$playlist$items$items$$Episode$context
    on Query$GetPlaylist$playlist$items$items$$Episode$context {
  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context<
          Query$GetPlaylist$playlist$items$items$$Episode$context>
      get copyWith =>
          CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context(
            this,
            (i) => i,
          );

  _T when<_T>({
    required _T Function(
            Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection)
        contextCollection,
    required _T Function(
            Query$GetPlaylist$playlist$items$items$$Episode$context$$Season)
        season,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ContextCollection":
        return contextCollection(this
            as Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection);

      case "Season":
        return season(this
            as Query$GetPlaylist$playlist$items$items$$Episode$context$$Season);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection)?
        contextCollection,
    _T Function(
            Query$GetPlaylist$playlist$items$items$$Episode$context$$Season)?
        season,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ContextCollection":
        if (contextCollection != null) {
          return contextCollection(this
              as Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection);
        } else {
          return orElse();
        }

      case "Season":
        if (season != null) {
          return season(this
              as Query$GetPlaylist$playlist$items$items$$Episode$context$$Season);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context<
    TRes> {
  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context(
    Query$GetPlaylist$playlist$items$items$$Episode$context instance,
    TRes Function(Query$GetPlaylist$playlist$items$items$$Episode$context) then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$context;

  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$context;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$context<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context<TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$context(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist$items$items$$Episode$context _instance;

  final TRes Function(Query$GetPlaylist$playlist$items$items$$Episode$context)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetPlaylist$playlist$items$items$$Episode$context(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$context<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context<TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$context(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection
    implements
        Fragment$PlayableMediaItem$$Episode$context$$ContextCollection,
        Query$GetPlaylist$playlist$items$items$$Episode$context {
  Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection({
    required this.id,
    this.$__typename = 'ContextCollection',
  });

  factory Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection(
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
    if (other
            is! Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection ||
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

extension UtilityExtension$Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection
    on Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection {
  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection<
          Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection>
      get copyWith =>
          CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection<
    TRes> {
  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection(
    Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection
        instance,
    TRes Function(
            Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection)
        then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection;

  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection<
            TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection
      _instance;

  final TRes Function(
          Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection<
            TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$context$$ContextCollection(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetPlaylist$playlist$items$items$$Episode$context$$Season
    implements
        Fragment$PlayableMediaItem$$Episode$context$$Season,
        Query$GetPlaylist$playlist$items$items$$Episode$context {
  Query$GetPlaylist$playlist$items$items$$Episode$context$$Season(
      {this.$__typename = 'Season'});

  factory Query$GetPlaylist$playlist$items$items$$Episode$context$$Season.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$GetPlaylist$playlist$items$items$$Episode$context$$Season(
        $__typename: (l$$__typename as String));
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
    if (other
            is! Query$GetPlaylist$playlist$items$items$$Episode$context$$Season ||
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

extension UtilityExtension$Query$GetPlaylist$playlist$items$items$$Episode$context$$Season
    on Query$GetPlaylist$playlist$items$items$$Episode$context$$Season {
  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context$$Season<
          Query$GetPlaylist$playlist$items$items$$Episode$context$$Season>
      get copyWith =>
          CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context$$Season(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context$$Season<
    TRes> {
  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context$$Season(
    Query$GetPlaylist$playlist$items$items$$Episode$context$$Season instance,
    TRes Function(
            Query$GetPlaylist$playlist$items$items$$Episode$context$$Season)
        then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$context$$Season;

  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context$$Season.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$context$$Season;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$context$$Season<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context$$Season<
            TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$context$$Season(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist$items$items$$Episode$context$$Season
      _instance;

  final TRes Function(
      Query$GetPlaylist$playlist$items$items$$Episode$context$$Season) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetPlaylist$playlist$items$items$$Episode$context$$Season(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$context$$Season<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$context$$Season<
            TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$context$$Season(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetPlaylist$playlist$items$items$$Episode$season
    implements Fragment$PlayableMediaItem$$Episode$season {
  Query$GetPlaylist$playlist$items$items$$Episode$season({
    required this.id,
    required this.title,
    required this.$show,
    this.$__typename = 'Season',
  });

  factory Query$GetPlaylist$playlist$items$items$$Episode$season.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$show = json['show'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaylist$playlist$items$items$$Episode$season(
      id: (l$id as String),
      title: (l$title as String),
      $show:
          Query$GetPlaylist$playlist$items$items$$Episode$season$show.fromJson(
              (l$$show as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final Query$GetPlaylist$playlist$items$items$$Episode$season$show $show;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$show = $show;
    _resultData['show'] = l$$show.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$show = $show;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$show,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPlaylist$playlist$items$items$$Episode$season ||
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

extension UtilityExtension$Query$GetPlaylist$playlist$items$items$$Episode$season
    on Query$GetPlaylist$playlist$items$items$$Episode$season {
  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season<
          Query$GetPlaylist$playlist$items$items$$Episode$season>
      get copyWith =>
          CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season<
    TRes> {
  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season(
    Query$GetPlaylist$playlist$items$items$$Episode$season instance,
    TRes Function(Query$GetPlaylist$playlist$items$items$$Episode$season) then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$season;

  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$season;

  TRes call({
    String? id,
    String? title,
    Query$GetPlaylist$playlist$items$items$$Episode$season$show? $show,
    String? $__typename,
  });
  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season$show<TRes>
      get $show;
}

class _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$season<TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season<TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$season(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist$items$items$$Episode$season _instance;

  final TRes Function(Query$GetPlaylist$playlist$items$items$$Episode$season)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $show = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaylist$playlist$items$items$$Episode$season(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $show: $show == _undefined || $show == null
            ? _instance.$show
            : ($show
                as Query$GetPlaylist$playlist$items$items$$Episode$season$show),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season$show<TRes>
      get $show {
    final local$$show = _instance.$show;
    return CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season$show(
        local$$show, (e) => call($show: e));
  }
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$season<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season<TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$season(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Query$GetPlaylist$playlist$items$items$$Episode$season$show? $show,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season$show<TRes>
      get $show =>
          CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season$show
              .stub(_res);
}

class Query$GetPlaylist$playlist$items$items$$Episode$season$show
    implements Fragment$PlayableMediaItem$$Episode$season$show {
  Query$GetPlaylist$playlist$items$items$$Episode$season$show({
    required this.id,
    required this.title,
    this.$__typename = 'Show',
  });

  factory Query$GetPlaylist$playlist$items$items$$Episode$season$show.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaylist$playlist$items$items$$Episode$season$show(
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
    if (other is! Query$GetPlaylist$playlist$items$items$$Episode$season$show ||
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

extension UtilityExtension$Query$GetPlaylist$playlist$items$items$$Episode$season$show
    on Query$GetPlaylist$playlist$items$items$$Episode$season$show {
  CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season$show<
          Query$GetPlaylist$playlist$items$items$$Episode$season$show>
      get copyWith =>
          CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season$show(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season$show<
    TRes> {
  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season$show(
    Query$GetPlaylist$playlist$items$items$$Episode$season$show instance,
    TRes Function(Query$GetPlaylist$playlist$items$items$$Episode$season$show)
        then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$season$show;

  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season$show.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$season$show;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$season$show<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season$show<
            TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Episode$season$show(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist$items$items$$Episode$season$show _instance;

  final TRes Function(
      Query$GetPlaylist$playlist$items$items$$Episode$season$show) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaylist$playlist$items$items$$Episode$season$show(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$season$show<
        TRes>
    implements
        CopyWith$Query$GetPlaylist$playlist$items$items$$Episode$season$show<
            TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Episode$season$show(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetPlaylist$playlist$items$items$$Short
    implements Query$GetPlaylist$playlist$items$items {
  Query$GetPlaylist$playlist$items$items$$Short({
    required this.id,
    required this.title,
    required this.songs,
    this.$__typename = 'Short',
  });

  factory Query$GetPlaylist$playlist$items$items$$Short.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$songs = json['songs'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaylist$playlist$items$items$$Short(
      id: (l$id as String),
      title: (l$title as String),
      songs: (l$songs as List<dynamic>)
          .map((e) =>
              Fragment$PlaylistSong.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final List<Fragment$PlaylistSong> songs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$songs = songs;
    _resultData['songs'] = l$songs.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$songs = songs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      Object.hashAll(l$songs.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPlaylist$playlist$items$items$$Short ||
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
    final l$songs = songs;
    final lOther$songs = other.songs;
    if (l$songs.length != lOther$songs.length) {
      return false;
    }
    for (int i = 0; i < l$songs.length; i++) {
      final l$songs$entry = l$songs[i];
      final lOther$songs$entry = lOther$songs[i];
      if (l$songs$entry != lOther$songs$entry) {
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

extension UtilityExtension$Query$GetPlaylist$playlist$items$items$$Short
    on Query$GetPlaylist$playlist$items$items$$Short {
  CopyWith$Query$GetPlaylist$playlist$items$items$$Short<
          Query$GetPlaylist$playlist$items$items$$Short>
      get copyWith => CopyWith$Query$GetPlaylist$playlist$items$items$$Short(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPlaylist$playlist$items$items$$Short<TRes> {
  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Short(
    Query$GetPlaylist$playlist$items$items$$Short instance,
    TRes Function(Query$GetPlaylist$playlist$items$items$$Short) then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Short;

  factory CopyWith$Query$GetPlaylist$playlist$items$items$$Short.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Short;

  TRes call({
    String? id,
    String? title,
    List<Fragment$PlaylistSong>? songs,
    String? $__typename,
  });
  TRes songs(
      Iterable<Fragment$PlaylistSong> Function(
              Iterable<CopyWith$Fragment$PlaylistSong<Fragment$PlaylistSong>>)
          _fn);
}

class _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Short<TRes>
    implements CopyWith$Query$GetPlaylist$playlist$items$items$$Short<TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist$items$items$$Short(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist$items$items$$Short _instance;

  final TRes Function(Query$GetPlaylist$playlist$items$items$$Short) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? songs = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaylist$playlist$items$items$$Short(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        songs: songs == _undefined || songs == null
            ? _instance.songs
            : (songs as List<Fragment$PlaylistSong>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes songs(
          Iterable<Fragment$PlaylistSong> Function(
                  Iterable<
                      CopyWith$Fragment$PlaylistSong<Fragment$PlaylistSong>>)
              _fn) =>
      call(
          songs: _fn(_instance.songs.map((e) => CopyWith$Fragment$PlaylistSong(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Short<TRes>
    implements CopyWith$Query$GetPlaylist$playlist$items$items$$Short<TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist$items$items$$Short(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    List<Fragment$PlaylistSong>? songs,
    String? $__typename,
  }) =>
      _res;

  songs(_fn) => _res;
}
