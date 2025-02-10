import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$CalendarEntry {
  Fragment$CalendarEntry({
    required this.id,
    required this.title,
    required this.description,
    required this.start,
    required this.end,
    required this.$__typename,
  });

  factory Fragment$CalendarEntry.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "EpisodeCalendarEntry":
        return Fragment$CalendarEntry$$EpisodeCalendarEntry.fromJson(json);

      case "SimpleCalendarEntry":
        return Fragment$CalendarEntry$$SimpleCalendarEntry.fromJson(json);

      case "SeasonCalendarEntry":
        return Fragment$CalendarEntry$$SeasonCalendarEntry.fromJson(json);

      case "ShowCalendarEntry":
        return Fragment$CalendarEntry$$ShowCalendarEntry.fromJson(json);

      default:
        final l$id = json['id'];
        final l$title = json['title'];
        final l$description = json['description'];
        final l$start = json['start'];
        final l$end = json['end'];
        final l$$__typename = json['__typename'];
        return Fragment$CalendarEntry(
          id: (l$id as String),
          title: (l$title as String),
          description: (l$description as String),
          start: (l$start as String),
          end: (l$end as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String id;

  final String title;

  final String description;

  final String start;

  final String end;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$start = start;
    final l$end = end;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
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
    if (other is! Fragment$CalendarEntry || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CalendarEntry on Fragment$CalendarEntry {
  CopyWith$Fragment$CalendarEntry<Fragment$CalendarEntry> get copyWith =>
      CopyWith$Fragment$CalendarEntry(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Fragment$CalendarEntry$$EpisodeCalendarEntry)
        episodeCalendarEntry,
    required _T Function(Fragment$CalendarEntry$$SimpleCalendarEntry)
        simpleCalendarEntry,
    required _T Function(Fragment$CalendarEntry$$SeasonCalendarEntry)
        seasonCalendarEntry,
    required _T Function(Fragment$CalendarEntry$$ShowCalendarEntry)
        showCalendarEntry,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "EpisodeCalendarEntry":
        return episodeCalendarEntry(
            this as Fragment$CalendarEntry$$EpisodeCalendarEntry);

      case "SimpleCalendarEntry":
        return simpleCalendarEntry(
            this as Fragment$CalendarEntry$$SimpleCalendarEntry);

      case "SeasonCalendarEntry":
        return seasonCalendarEntry(
            this as Fragment$CalendarEntry$$SeasonCalendarEntry);

      case "ShowCalendarEntry":
        return showCalendarEntry(
            this as Fragment$CalendarEntry$$ShowCalendarEntry);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$CalendarEntry$$EpisodeCalendarEntry)?
        episodeCalendarEntry,
    _T Function(Fragment$CalendarEntry$$SimpleCalendarEntry)?
        simpleCalendarEntry,
    _T Function(Fragment$CalendarEntry$$SeasonCalendarEntry)?
        seasonCalendarEntry,
    _T Function(Fragment$CalendarEntry$$ShowCalendarEntry)? showCalendarEntry,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "EpisodeCalendarEntry":
        if (episodeCalendarEntry != null) {
          return episodeCalendarEntry(
              this as Fragment$CalendarEntry$$EpisodeCalendarEntry);
        } else {
          return orElse();
        }

      case "SimpleCalendarEntry":
        if (simpleCalendarEntry != null) {
          return simpleCalendarEntry(
              this as Fragment$CalendarEntry$$SimpleCalendarEntry);
        } else {
          return orElse();
        }

      case "SeasonCalendarEntry":
        if (seasonCalendarEntry != null) {
          return seasonCalendarEntry(
              this as Fragment$CalendarEntry$$SeasonCalendarEntry);
        } else {
          return orElse();
        }

      case "ShowCalendarEntry":
        if (showCalendarEntry != null) {
          return showCalendarEntry(
              this as Fragment$CalendarEntry$$ShowCalendarEntry);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$CalendarEntry<TRes> {
  factory CopyWith$Fragment$CalendarEntry(
    Fragment$CalendarEntry instance,
    TRes Function(Fragment$CalendarEntry) then,
  ) = _CopyWithImpl$Fragment$CalendarEntry;

  factory CopyWith$Fragment$CalendarEntry.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CalendarEntry;

  TRes call({
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CalendarEntry<TRes>
    implements CopyWith$Fragment$CalendarEntry<TRes> {
  _CopyWithImpl$Fragment$CalendarEntry(
    this._instance,
    this._then,
  );

  final Fragment$CalendarEntry _instance;

  final TRes Function(Fragment$CalendarEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CalendarEntry(
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CalendarEntry<TRes>
    implements CopyWith$Fragment$CalendarEntry<TRes> {
  _CopyWithStubImpl$Fragment$CalendarEntry(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionCalendarEntry = FragmentDefinitionNode(
  name: NameNode(value: 'CalendarEntry'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'CalendarEntry'),
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
              name: NameNode(value: 'publishDate'),
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
                  value: EnumValueNode(name: NameNode(value: 'default')),
                )
              ],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'locked'),
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
    InlineFragmentNode(
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
        name: NameNode(value: 'SimpleCalendarEntry'),
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
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
  ]),
);
const documentNodeFragmentCalendarEntry = DocumentNode(definitions: [
  fragmentDefinitionCalendarEntry,
]);

extension ClientExtension$Fragment$CalendarEntry on graphql.GraphQLClient {
  void writeFragment$CalendarEntry({
    required Fragment$CalendarEntry data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CalendarEntry',
            document: documentNodeFragmentCalendarEntry,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CalendarEntry? readFragment$CalendarEntry({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CalendarEntry',
          document: documentNodeFragmentCalendarEntry,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CalendarEntry.fromJson(result);
  }
}

class Fragment$CalendarEntry$$EpisodeCalendarEntry
    implements Fragment$CalendarEntry {
  Fragment$CalendarEntry$$EpisodeCalendarEntry({
    this.episode,
    required this.id,
    this.$__typename = 'EpisodeCalendarEntry',
    required this.title,
    required this.description,
    required this.start,
    required this.end,
  });

  factory Fragment$CalendarEntry$$EpisodeCalendarEntry.fromJson(
      Map<String, dynamic> json) {
    final l$episode = json['episode'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$start = json['start'];
    final l$end = json['end'];
    return Fragment$CalendarEntry$$EpisodeCalendarEntry(
      episode: l$episode == null
          ? null
          : Fragment$CalendarEntry$$EpisodeCalendarEntry$episode.fromJson(
              (l$episode as Map<String, dynamic>)),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
      title: (l$title as String),
      description: (l$description as String),
      start: (l$start as String),
      end: (l$end as String),
    );
  }

  final Fragment$CalendarEntry$$EpisodeCalendarEntry$episode? episode;

  final String id;

  final String $__typename;

  final String title;

  final String description;

  final String start;

  final String end;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$episode = episode;
    _resultData['episode'] = l$episode?.toJson();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
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
    final l$id = id;
    final l$$__typename = $__typename;
    final l$title = title;
    final l$description = description;
    final l$start = start;
    final l$end = end;
    return Object.hashAll([
      l$episode,
      l$id,
      l$$__typename,
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
    if (other is! Fragment$CalendarEntry$$EpisodeCalendarEntry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
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

extension UtilityExtension$Fragment$CalendarEntry$$EpisodeCalendarEntry
    on Fragment$CalendarEntry$$EpisodeCalendarEntry {
  CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry<
          Fragment$CalendarEntry$$EpisodeCalendarEntry>
      get copyWith => CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry<TRes> {
  factory CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry(
    Fragment$CalendarEntry$$EpisodeCalendarEntry instance,
    TRes Function(Fragment$CalendarEntry$$EpisodeCalendarEntry) then,
  ) = _CopyWithImpl$Fragment$CalendarEntry$$EpisodeCalendarEntry;

  factory CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CalendarEntry$$EpisodeCalendarEntry;

  TRes call({
    Fragment$CalendarEntry$$EpisodeCalendarEntry$episode? episode,
    String? id,
    String? $__typename,
    String? title,
    String? description,
    String? start,
    String? end,
  });
  CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode<TRes>
      get episode;
}

class _CopyWithImpl$Fragment$CalendarEntry$$EpisodeCalendarEntry<TRes>
    implements CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry<TRes> {
  _CopyWithImpl$Fragment$CalendarEntry$$EpisodeCalendarEntry(
    this._instance,
    this._then,
  );

  final Fragment$CalendarEntry$$EpisodeCalendarEntry _instance;

  final TRes Function(Fragment$CalendarEntry$$EpisodeCalendarEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? episode = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
  }) =>
      _then(Fragment$CalendarEntry$$EpisodeCalendarEntry(
        episode: episode == _undefined
            ? _instance.episode
            : (episode
                as Fragment$CalendarEntry$$EpisodeCalendarEntry$episode?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
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

  CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode<TRes>
      get episode {
    final local$episode = _instance.episode;
    return local$episode == null
        ? CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode.stub(
            _then(_instance))
        : CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode(
            local$episode, (e) => call(episode: e));
  }
}

class _CopyWithStubImpl$Fragment$CalendarEntry$$EpisodeCalendarEntry<TRes>
    implements CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry<TRes> {
  _CopyWithStubImpl$Fragment$CalendarEntry$$EpisodeCalendarEntry(this._res);

  TRes _res;

  call({
    Fragment$CalendarEntry$$EpisodeCalendarEntry$episode? episode,
    String? id,
    String? $__typename,
    String? title,
    String? description,
    String? start,
    String? end,
  }) =>
      _res;

  CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode<TRes>
      get episode =>
          CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode.stub(
              _res);
}

class Fragment$CalendarEntry$$EpisodeCalendarEntry$episode {
  Fragment$CalendarEntry$$EpisodeCalendarEntry$episode({
    required this.id,
    required this.publishDate,
    this.image,
    required this.locked,
    this.$__typename = 'Episode',
  });

  factory Fragment$CalendarEntry$$EpisodeCalendarEntry$episode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$publishDate = json['publishDate'];
    final l$image = json['image'];
    final l$locked = json['locked'];
    final l$$__typename = json['__typename'];
    return Fragment$CalendarEntry$$EpisodeCalendarEntry$episode(
      id: (l$id as String),
      publishDate: (l$publishDate as String),
      image: (l$image as String?),
      locked: (l$locked as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String publishDate;

  final String? image;

  final bool locked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$publishDate = publishDate;
    _resultData['publishDate'] = l$publishDate;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$locked = locked;
    _resultData['locked'] = l$locked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$publishDate = publishDate;
    final l$image = image;
    final l$locked = locked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$publishDate,
      l$image,
      l$locked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CalendarEntry$$EpisodeCalendarEntry$episode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$publishDate = publishDate;
    final lOther$publishDate = other.publishDate;
    if (l$publishDate != lOther$publishDate) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$locked = locked;
    final lOther$locked = other.locked;
    if (l$locked != lOther$locked) {
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

extension UtilityExtension$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode
    on Fragment$CalendarEntry$$EpisodeCalendarEntry$episode {
  CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode<
          Fragment$CalendarEntry$$EpisodeCalendarEntry$episode>
      get copyWith =>
          CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode<
    TRes> {
  factory CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode(
    Fragment$CalendarEntry$$EpisodeCalendarEntry$episode instance,
    TRes Function(Fragment$CalendarEntry$$EpisodeCalendarEntry$episode) then,
  ) = _CopyWithImpl$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode;

  factory CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode;

  TRes call({
    String? id,
    String? publishDate,
    String? image,
    bool? locked,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode<TRes>
    implements
        CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode<TRes> {
  _CopyWithImpl$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode(
    this._instance,
    this._then,
  );

  final Fragment$CalendarEntry$$EpisodeCalendarEntry$episode _instance;

  final TRes Function(Fragment$CalendarEntry$$EpisodeCalendarEntry$episode)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? publishDate = _undefined,
    Object? image = _undefined,
    Object? locked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CalendarEntry$$EpisodeCalendarEntry$episode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        publishDate: publishDate == _undefined || publishDate == null
            ? _instance.publishDate
            : (publishDate as String),
        image: image == _undefined ? _instance.image : (image as String?),
        locked: locked == _undefined || locked == null
            ? _instance.locked
            : (locked as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode<
        TRes>
    implements
        CopyWith$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode<TRes> {
  _CopyWithStubImpl$Fragment$CalendarEntry$$EpisodeCalendarEntry$episode(
      this._res);

  TRes _res;

  call({
    String? id,
    String? publishDate,
    String? image,
    bool? locked,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$CalendarEntry$$SimpleCalendarEntry
    implements Fragment$CalendarEntry {
  Fragment$CalendarEntry$$SimpleCalendarEntry({
    required this.id,
    this.$__typename = 'SimpleCalendarEntry',
    required this.title,
    required this.description,
    required this.start,
    required this.end,
  });

  factory Fragment$CalendarEntry$$SimpleCalendarEntry.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$start = json['start'];
    final l$end = json['end'];
    return Fragment$CalendarEntry$$SimpleCalendarEntry(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
      title: (l$title as String),
      description: (l$description as String),
      start: (l$start as String),
      end: (l$end as String),
    );
  }

  final String id;

  final String $__typename;

  final String title;

  final String description;

  final String start;

  final String end;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
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
    final l$id = id;
    final l$$__typename = $__typename;
    final l$title = title;
    final l$description = description;
    final l$start = start;
    final l$end = end;
    return Object.hashAll([
      l$id,
      l$$__typename,
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
    if (other is! Fragment$CalendarEntry$$SimpleCalendarEntry ||
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

extension UtilityExtension$Fragment$CalendarEntry$$SimpleCalendarEntry
    on Fragment$CalendarEntry$$SimpleCalendarEntry {
  CopyWith$Fragment$CalendarEntry$$SimpleCalendarEntry<
          Fragment$CalendarEntry$$SimpleCalendarEntry>
      get copyWith => CopyWith$Fragment$CalendarEntry$$SimpleCalendarEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CalendarEntry$$SimpleCalendarEntry<TRes> {
  factory CopyWith$Fragment$CalendarEntry$$SimpleCalendarEntry(
    Fragment$CalendarEntry$$SimpleCalendarEntry instance,
    TRes Function(Fragment$CalendarEntry$$SimpleCalendarEntry) then,
  ) = _CopyWithImpl$Fragment$CalendarEntry$$SimpleCalendarEntry;

  factory CopyWith$Fragment$CalendarEntry$$SimpleCalendarEntry.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CalendarEntry$$SimpleCalendarEntry;

  TRes call({
    String? id,
    String? $__typename,
    String? title,
    String? description,
    String? start,
    String? end,
  });
}

class _CopyWithImpl$Fragment$CalendarEntry$$SimpleCalendarEntry<TRes>
    implements CopyWith$Fragment$CalendarEntry$$SimpleCalendarEntry<TRes> {
  _CopyWithImpl$Fragment$CalendarEntry$$SimpleCalendarEntry(
    this._instance,
    this._then,
  );

  final Fragment$CalendarEntry$$SimpleCalendarEntry _instance;

  final TRes Function(Fragment$CalendarEntry$$SimpleCalendarEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
  }) =>
      _then(Fragment$CalendarEntry$$SimpleCalendarEntry(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
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

class _CopyWithStubImpl$Fragment$CalendarEntry$$SimpleCalendarEntry<TRes>
    implements CopyWith$Fragment$CalendarEntry$$SimpleCalendarEntry<TRes> {
  _CopyWithStubImpl$Fragment$CalendarEntry$$SimpleCalendarEntry(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
    String? title,
    String? description,
    String? start,
    String? end,
  }) =>
      _res;
}

class Fragment$CalendarEntry$$SeasonCalendarEntry
    implements Fragment$CalendarEntry {
  Fragment$CalendarEntry$$SeasonCalendarEntry({
    required this.id,
    required this.title,
    required this.description,
    required this.start,
    required this.end,
    this.$__typename = 'SeasonCalendarEntry',
  });

  factory Fragment$CalendarEntry$$SeasonCalendarEntry.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$start = json['start'];
    final l$end = json['end'];
    final l$$__typename = json['__typename'];
    return Fragment$CalendarEntry$$SeasonCalendarEntry(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String),
      start: (l$start as String),
      end: (l$end as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String description;

  final String start;

  final String end;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$start = start;
    final l$end = end;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
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
    if (other is! Fragment$CalendarEntry$$SeasonCalendarEntry ||
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

extension UtilityExtension$Fragment$CalendarEntry$$SeasonCalendarEntry
    on Fragment$CalendarEntry$$SeasonCalendarEntry {
  CopyWith$Fragment$CalendarEntry$$SeasonCalendarEntry<
          Fragment$CalendarEntry$$SeasonCalendarEntry>
      get copyWith => CopyWith$Fragment$CalendarEntry$$SeasonCalendarEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CalendarEntry$$SeasonCalendarEntry<TRes> {
  factory CopyWith$Fragment$CalendarEntry$$SeasonCalendarEntry(
    Fragment$CalendarEntry$$SeasonCalendarEntry instance,
    TRes Function(Fragment$CalendarEntry$$SeasonCalendarEntry) then,
  ) = _CopyWithImpl$Fragment$CalendarEntry$$SeasonCalendarEntry;

  factory CopyWith$Fragment$CalendarEntry$$SeasonCalendarEntry.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CalendarEntry$$SeasonCalendarEntry;

  TRes call({
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CalendarEntry$$SeasonCalendarEntry<TRes>
    implements CopyWith$Fragment$CalendarEntry$$SeasonCalendarEntry<TRes> {
  _CopyWithImpl$Fragment$CalendarEntry$$SeasonCalendarEntry(
    this._instance,
    this._then,
  );

  final Fragment$CalendarEntry$$SeasonCalendarEntry _instance;

  final TRes Function(Fragment$CalendarEntry$$SeasonCalendarEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CalendarEntry$$SeasonCalendarEntry(
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CalendarEntry$$SeasonCalendarEntry<TRes>
    implements CopyWith$Fragment$CalendarEntry$$SeasonCalendarEntry<TRes> {
  _CopyWithStubImpl$Fragment$CalendarEntry$$SeasonCalendarEntry(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$CalendarEntry$$ShowCalendarEntry
    implements Fragment$CalendarEntry {
  Fragment$CalendarEntry$$ShowCalendarEntry({
    required this.id,
    required this.title,
    required this.description,
    required this.start,
    required this.end,
    this.$__typename = 'ShowCalendarEntry',
  });

  factory Fragment$CalendarEntry$$ShowCalendarEntry.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$start = json['start'];
    final l$end = json['end'];
    final l$$__typename = json['__typename'];
    return Fragment$CalendarEntry$$ShowCalendarEntry(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String),
      start: (l$start as String),
      end: (l$end as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String description;

  final String start;

  final String end;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$start = start;
    final l$end = end;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
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
    if (other is! Fragment$CalendarEntry$$ShowCalendarEntry ||
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

extension UtilityExtension$Fragment$CalendarEntry$$ShowCalendarEntry
    on Fragment$CalendarEntry$$ShowCalendarEntry {
  CopyWith$Fragment$CalendarEntry$$ShowCalendarEntry<
          Fragment$CalendarEntry$$ShowCalendarEntry>
      get copyWith => CopyWith$Fragment$CalendarEntry$$ShowCalendarEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CalendarEntry$$ShowCalendarEntry<TRes> {
  factory CopyWith$Fragment$CalendarEntry$$ShowCalendarEntry(
    Fragment$CalendarEntry$$ShowCalendarEntry instance,
    TRes Function(Fragment$CalendarEntry$$ShowCalendarEntry) then,
  ) = _CopyWithImpl$Fragment$CalendarEntry$$ShowCalendarEntry;

  factory CopyWith$Fragment$CalendarEntry$$ShowCalendarEntry.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CalendarEntry$$ShowCalendarEntry;

  TRes call({
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CalendarEntry$$ShowCalendarEntry<TRes>
    implements CopyWith$Fragment$CalendarEntry$$ShowCalendarEntry<TRes> {
  _CopyWithImpl$Fragment$CalendarEntry$$ShowCalendarEntry(
    this._instance,
    this._then,
  );

  final Fragment$CalendarEntry$$ShowCalendarEntry _instance;

  final TRes Function(Fragment$CalendarEntry$$ShowCalendarEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CalendarEntry$$ShowCalendarEntry(
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CalendarEntry$$ShowCalendarEntry<TRes>
    implements CopyWith$Fragment$CalendarEntry$$ShowCalendarEntry<TRes> {
  _CopyWithStubImpl$Fragment$CalendarEntry$$ShowCalendarEntry(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    String? start,
    String? end,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$CalendarDay {
  Fragment$CalendarDay({
    required this.events,
    required this.entries,
    this.$__typename = 'CalendarDay',
  });

  factory Fragment$CalendarDay.fromJson(Map<String, dynamic> json) {
    final l$events = json['events'];
    final l$entries = json['entries'];
    final l$$__typename = json['__typename'];
    return Fragment$CalendarDay(
      events: (l$events as List<dynamic>)
          .map((e) =>
              Fragment$CalendarDay$events.fromJson((e as Map<String, dynamic>)))
          .toList(),
      entries: (l$entries as List<dynamic>)
          .map((e) =>
              Fragment$CalendarEntry.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$CalendarDay$events> events;

  final List<Fragment$CalendarEntry> entries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$events = events;
    _resultData['events'] = l$events.map((e) => e.toJson()).toList();
    final l$entries = entries;
    _resultData['entries'] = l$entries.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$events = events;
    final l$entries = entries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$events.map((v) => v)),
      Object.hashAll(l$entries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CalendarDay || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$CalendarDay on Fragment$CalendarDay {
  CopyWith$Fragment$CalendarDay<Fragment$CalendarDay> get copyWith =>
      CopyWith$Fragment$CalendarDay(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CalendarDay<TRes> {
  factory CopyWith$Fragment$CalendarDay(
    Fragment$CalendarDay instance,
    TRes Function(Fragment$CalendarDay) then,
  ) = _CopyWithImpl$Fragment$CalendarDay;

  factory CopyWith$Fragment$CalendarDay.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CalendarDay;

  TRes call({
    List<Fragment$CalendarDay$events>? events,
    List<Fragment$CalendarEntry>? entries,
    String? $__typename,
  });
  TRes events(
      Iterable<Fragment$CalendarDay$events> Function(
              Iterable<
                  CopyWith$Fragment$CalendarDay$events<
                      Fragment$CalendarDay$events>>)
          _fn);
  TRes entries(
      Iterable<Fragment$CalendarEntry> Function(
              Iterable<CopyWith$Fragment$CalendarEntry<Fragment$CalendarEntry>>)
          _fn);
}

class _CopyWithImpl$Fragment$CalendarDay<TRes>
    implements CopyWith$Fragment$CalendarDay<TRes> {
  _CopyWithImpl$Fragment$CalendarDay(
    this._instance,
    this._then,
  );

  final Fragment$CalendarDay _instance;

  final TRes Function(Fragment$CalendarDay) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? events = _undefined,
    Object? entries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CalendarDay(
        events: events == _undefined || events == null
            ? _instance.events
            : (events as List<Fragment$CalendarDay$events>),
        entries: entries == _undefined || entries == null
            ? _instance.entries
            : (entries as List<Fragment$CalendarEntry>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes events(
          Iterable<Fragment$CalendarDay$events> Function(
                  Iterable<
                      CopyWith$Fragment$CalendarDay$events<
                          Fragment$CalendarDay$events>>)
              _fn) =>
      call(
          events: _fn(
              _instance.events.map((e) => CopyWith$Fragment$CalendarDay$events(
                    e,
                    (i) => i,
                  ))).toList());

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

class _CopyWithStubImpl$Fragment$CalendarDay<TRes>
    implements CopyWith$Fragment$CalendarDay<TRes> {
  _CopyWithStubImpl$Fragment$CalendarDay(this._res);

  TRes _res;

  call({
    List<Fragment$CalendarDay$events>? events,
    List<Fragment$CalendarEntry>? entries,
    String? $__typename,
  }) =>
      _res;

  events(_fn) => _res;

  entries(_fn) => _res;
}

const fragmentDefinitionCalendarDay = FragmentDefinitionNode(
  name: NameNode(value: 'CalendarDay'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'CalendarDay'),
    isNonNull: false,
  )),
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
);
const documentNodeFragmentCalendarDay = DocumentNode(definitions: [
  fragmentDefinitionCalendarDay,
  fragmentDefinitionCalendarEntry,
]);

extension ClientExtension$Fragment$CalendarDay on graphql.GraphQLClient {
  void writeFragment$CalendarDay({
    required Fragment$CalendarDay data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CalendarDay',
            document: documentNodeFragmentCalendarDay,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CalendarDay? readFragment$CalendarDay({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CalendarDay',
          document: documentNodeFragmentCalendarDay,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CalendarDay.fromJson(result);
  }
}

class Fragment$CalendarDay$events {
  Fragment$CalendarDay$events({
    required this.id,
    required this.title,
    required this.start,
    required this.end,
    required this.image,
    this.$__typename = 'Event',
  });

  factory Fragment$CalendarDay$events.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$start = json['start'];
    final l$end = json['end'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Fragment$CalendarDay$events(
      id: (l$id as String),
      title: (l$title as String),
      start: (l$start as String),
      end: (l$end as String),
      image: (l$image as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String start;

  final String end;

  final String image;

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
    final l$start = start;
    final l$end = end;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$start,
      l$end,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CalendarDay$events ||
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

extension UtilityExtension$Fragment$CalendarDay$events
    on Fragment$CalendarDay$events {
  CopyWith$Fragment$CalendarDay$events<Fragment$CalendarDay$events>
      get copyWith => CopyWith$Fragment$CalendarDay$events(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CalendarDay$events<TRes> {
  factory CopyWith$Fragment$CalendarDay$events(
    Fragment$CalendarDay$events instance,
    TRes Function(Fragment$CalendarDay$events) then,
  ) = _CopyWithImpl$Fragment$CalendarDay$events;

  factory CopyWith$Fragment$CalendarDay$events.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CalendarDay$events;

  TRes call({
    String? id,
    String? title,
    String? start,
    String? end,
    String? image,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CalendarDay$events<TRes>
    implements CopyWith$Fragment$CalendarDay$events<TRes> {
  _CopyWithImpl$Fragment$CalendarDay$events(
    this._instance,
    this._then,
  );

  final Fragment$CalendarDay$events _instance;

  final TRes Function(Fragment$CalendarDay$events) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? start = _undefined,
    Object? end = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CalendarDay$events(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        start: start == _undefined || start == null
            ? _instance.start
            : (start as String),
        end: end == _undefined || end == null ? _instance.end : (end as String),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CalendarDay$events<TRes>
    implements CopyWith$Fragment$CalendarDay$events<TRes> {
  _CopyWithStubImpl$Fragment$CalendarDay$events(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? start,
    String? end,
    String? image,
    String? $__typename,
  }) =>
      _res;
}

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
    if (other is! Variables$Query$GetCalendarDay ||
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
    if (other is! Query$GetCalendarDay || runtimeType != other.runtimeType) {
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
  fragmentDefinitionCalendarEntry,
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
    if (other is! Query$GetCalendarDay$calendar ||
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
