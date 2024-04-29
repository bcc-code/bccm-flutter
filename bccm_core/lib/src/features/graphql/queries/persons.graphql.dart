import 'dart:async';
import 'episode.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$Contribution {
  Fragment$Contribution({
    required this.type,
    required this.item,
    this.$__typename = 'Contribution',
  });

  factory Fragment$Contribution.fromJson(Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$item = json['item'];
    final l$$__typename = json['__typename'];
    return Fragment$Contribution(
      type:
          Fragment$Contribution$type.fromJson((l$type as Map<String, dynamic>)),
      item:
          Fragment$Contribution$item.fromJson((l$item as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Contribution$type type;

  final Fragment$Contribution$item item;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type.toJson();
    final l$item = item;
    _resultData['item'] = l$item.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$item = item;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$item,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Contribution) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$item = item;
    final lOther$item = other.item;
    if (l$item != lOther$item) {
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

extension UtilityExtension$Fragment$Contribution on Fragment$Contribution {
  CopyWith$Fragment$Contribution<Fragment$Contribution> get copyWith =>
      CopyWith$Fragment$Contribution(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Contribution<TRes> {
  factory CopyWith$Fragment$Contribution(
    Fragment$Contribution instance,
    TRes Function(Fragment$Contribution) then,
  ) = _CopyWithImpl$Fragment$Contribution;

  factory CopyWith$Fragment$Contribution.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Contribution;

  TRes call({
    Fragment$Contribution$type? type,
    Fragment$Contribution$item? item,
    String? $__typename,
  });
  CopyWith$Fragment$Contribution$type<TRes> get type;
  CopyWith$Fragment$Contribution$item<TRes> get item;
}

class _CopyWithImpl$Fragment$Contribution<TRes>
    implements CopyWith$Fragment$Contribution<TRes> {
  _CopyWithImpl$Fragment$Contribution(
    this._instance,
    this._then,
  );

  final Fragment$Contribution _instance;

  final TRes Function(Fragment$Contribution) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? item = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Contribution(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Fragment$Contribution$type),
        item: item == _undefined || item == null
            ? _instance.item
            : (item as Fragment$Contribution$item),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Contribution$type<TRes> get type {
    final local$type = _instance.type;
    return CopyWith$Fragment$Contribution$type(
        local$type, (e) => call(type: e));
  }

  CopyWith$Fragment$Contribution$item<TRes> get item {
    final local$item = _instance.item;
    return CopyWith$Fragment$Contribution$item(
        local$item, (e) => call(item: e));
  }
}

class _CopyWithStubImpl$Fragment$Contribution<TRes>
    implements CopyWith$Fragment$Contribution<TRes> {
  _CopyWithStubImpl$Fragment$Contribution(this._res);

  TRes _res;

  call({
    Fragment$Contribution$type? type,
    Fragment$Contribution$item? item,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Contribution$type<TRes> get type =>
      CopyWith$Fragment$Contribution$type.stub(_res);

  CopyWith$Fragment$Contribution$item<TRes> get item =>
      CopyWith$Fragment$Contribution$item.stub(_res);
}

const fragmentDefinitionContribution = FragmentDefinitionNode(
  name: NameNode(value: 'Contribution'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Contribution'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
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
      name: NameNode(value: 'item'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        InlineFragmentNode(
          typeCondition: TypeConditionNode(
              on: NamedTypeNode(
            name: NameNode(value: 'Chapter'),
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
              name: NameNode(value: 'start'),
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
              name: NameNode(value: 'image'),
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
              name: NameNode(value: 'episode'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'EpisodeListEpisode'),
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
        InlineFragmentNode(
          typeCondition: TypeConditionNode(
              on: NamedTypeNode(
            name: NameNode(value: 'Episode'),
            isNonNull: false,
          )),
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'EpisodeListEpisode'),
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
);
const documentNodeFragmentContribution = DocumentNode(definitions: [
  fragmentDefinitionContribution,
  fragmentDefinitionEpisodeListEpisode,
  fragmentDefinitionSeasonListEpisode,
]);

extension ClientExtension$Fragment$Contribution on graphql.GraphQLClient {
  void writeFragment$Contribution({
    required Fragment$Contribution data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Contribution',
            document: documentNodeFragmentContribution,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Contribution? readFragment$Contribution({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Contribution',
          document: documentNodeFragmentContribution,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Contribution.fromJson(result);
  }
}

class Fragment$Contribution$type {
  Fragment$Contribution$type({
    required this.code,
    this.$__typename = 'ContributionType',
  });

  factory Fragment$Contribution$type.fromJson(Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Fragment$Contribution$type(
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Contribution$type) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Contribution$type
    on Fragment$Contribution$type {
  CopyWith$Fragment$Contribution$type<Fragment$Contribution$type>
      get copyWith => CopyWith$Fragment$Contribution$type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Contribution$type<TRes> {
  factory CopyWith$Fragment$Contribution$type(
    Fragment$Contribution$type instance,
    TRes Function(Fragment$Contribution$type) then,
  ) = _CopyWithImpl$Fragment$Contribution$type;

  factory CopyWith$Fragment$Contribution$type.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Contribution$type;

  TRes call({
    String? code,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Contribution$type<TRes>
    implements CopyWith$Fragment$Contribution$type<TRes> {
  _CopyWithImpl$Fragment$Contribution$type(
    this._instance,
    this._then,
  );

  final Fragment$Contribution$type _instance;

  final TRes Function(Fragment$Contribution$type) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Contribution$type(
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Contribution$type<TRes>
    implements CopyWith$Fragment$Contribution$type<TRes> {
  _CopyWithStubImpl$Fragment$Contribution$type(this._res);

  TRes _res;

  call({
    String? code,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Contribution$item {
  Fragment$Contribution$item({required this.$__typename});

  factory Fragment$Contribution$item.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Chapter":
        return Fragment$Contribution$item$$Chapter.fromJson(json);

      case "Episode":
        return Fragment$Contribution$item$$Episode.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Fragment$Contribution$item(
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
    if (!(other is Fragment$Contribution$item) ||
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

extension UtilityExtension$Fragment$Contribution$item
    on Fragment$Contribution$item {
  CopyWith$Fragment$Contribution$item<Fragment$Contribution$item>
      get copyWith => CopyWith$Fragment$Contribution$item(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Fragment$Contribution$item$$Chapter) chapter,
    required _T Function(Fragment$Contribution$item$$Episode) episode,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Chapter":
        return chapter(this as Fragment$Contribution$item$$Chapter);

      case "Episode":
        return episode(this as Fragment$Contribution$item$$Episode);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$Contribution$item$$Chapter)? chapter,
    _T Function(Fragment$Contribution$item$$Episode)? episode,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Chapter":
        if (chapter != null) {
          return chapter(this as Fragment$Contribution$item$$Chapter);
        } else {
          return orElse();
        }

      case "Episode":
        if (episode != null) {
          return episode(this as Fragment$Contribution$item$$Episode);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$Contribution$item<TRes> {
  factory CopyWith$Fragment$Contribution$item(
    Fragment$Contribution$item instance,
    TRes Function(Fragment$Contribution$item) then,
  ) = _CopyWithImpl$Fragment$Contribution$item;

  factory CopyWith$Fragment$Contribution$item.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Contribution$item;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Fragment$Contribution$item<TRes>
    implements CopyWith$Fragment$Contribution$item<TRes> {
  _CopyWithImpl$Fragment$Contribution$item(
    this._instance,
    this._then,
  );

  final Fragment$Contribution$item _instance;

  final TRes Function(Fragment$Contribution$item) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Fragment$Contribution$item(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$Contribution$item<TRes>
    implements CopyWith$Fragment$Contribution$item<TRes> {
  _CopyWithStubImpl$Fragment$Contribution$item(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Fragment$Contribution$item$$Chapter
    implements Fragment$Contribution$item {
  Fragment$Contribution$item$$Chapter({
    required this.id,
    required this.start,
    required this.title,
    this.image,
    required this.duration,
    this.episode,
    this.$__typename = 'Chapter',
  });

  factory Fragment$Contribution$item$$Chapter.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$start = json['start'];
    final l$title = json['title'];
    final l$image = json['image'];
    final l$duration = json['duration'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Fragment$Contribution$item$$Chapter(
      id: (l$id as String),
      start: (l$start as int),
      title: (l$title as String),
      image: (l$image as String?),
      duration: (l$duration as int),
      episode: l$episode == null
          ? null
          : Fragment$EpisodeListEpisode.fromJson(
              (l$episode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final int start;

  final String title;

  final String? image;

  final int duration;

  final Fragment$EpisodeListEpisode? episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$start = start;
    _resultData['start'] = l$start;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$episode = episode;
    _resultData['episode'] = l$episode?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$start = start;
    final l$title = title;
    final l$image = image;
    final l$duration = duration;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$start,
      l$title,
      l$image,
      l$duration,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Contribution$item$$Chapter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$start = start;
    final lOther$start = other.start;
    if (l$start != lOther$start) {
      return false;
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
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$Contribution$item$$Chapter
    on Fragment$Contribution$item$$Chapter {
  CopyWith$Fragment$Contribution$item$$Chapter<
          Fragment$Contribution$item$$Chapter>
      get copyWith => CopyWith$Fragment$Contribution$item$$Chapter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Contribution$item$$Chapter<TRes> {
  factory CopyWith$Fragment$Contribution$item$$Chapter(
    Fragment$Contribution$item$$Chapter instance,
    TRes Function(Fragment$Contribution$item$$Chapter) then,
  ) = _CopyWithImpl$Fragment$Contribution$item$$Chapter;

  factory CopyWith$Fragment$Contribution$item$$Chapter.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Contribution$item$$Chapter;

  TRes call({
    String? id,
    int? start,
    String? title,
    String? image,
    int? duration,
    Fragment$EpisodeListEpisode? episode,
    String? $__typename,
  });
  CopyWith$Fragment$EpisodeListEpisode<TRes> get episode;
}

class _CopyWithImpl$Fragment$Contribution$item$$Chapter<TRes>
    implements CopyWith$Fragment$Contribution$item$$Chapter<TRes> {
  _CopyWithImpl$Fragment$Contribution$item$$Chapter(
    this._instance,
    this._then,
  );

  final Fragment$Contribution$item$$Chapter _instance;

  final TRes Function(Fragment$Contribution$item$$Chapter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? start = _undefined,
    Object? title = _undefined,
    Object? image = _undefined,
    Object? duration = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Contribution$item$$Chapter(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        start: start == _undefined || start == null
            ? _instance.start
            : (start as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        image: image == _undefined ? _instance.image : (image as String?),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as int),
        episode: episode == _undefined
            ? _instance.episode
            : (episode as Fragment$EpisodeListEpisode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$EpisodeListEpisode<TRes> get episode {
    final local$episode = _instance.episode;
    return local$episode == null
        ? CopyWith$Fragment$EpisodeListEpisode.stub(_then(_instance))
        : CopyWith$Fragment$EpisodeListEpisode(
            local$episode, (e) => call(episode: e));
  }
}

class _CopyWithStubImpl$Fragment$Contribution$item$$Chapter<TRes>
    implements CopyWith$Fragment$Contribution$item$$Chapter<TRes> {
  _CopyWithStubImpl$Fragment$Contribution$item$$Chapter(this._res);

  TRes _res;

  call({
    String? id,
    int? start,
    String? title,
    String? image,
    int? duration,
    Fragment$EpisodeListEpisode? episode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$EpisodeListEpisode<TRes> get episode =>
      CopyWith$Fragment$EpisodeListEpisode.stub(_res);
}

class Fragment$Contribution$item$$Episode
    implements
        Fragment$EpisodeListEpisode,
        Fragment$SeasonListEpisode,
        Fragment$Contribution$item {
  Fragment$Contribution$item$$Episode({
    required this.id,
    this.image,
    this.number,
    required this.title,
    required this.publishDate,
    required this.ageRating,
    required this.duration,
    required this.locked,
    required this.lessons,
    this.$__typename = 'Episode',
    this.progress,
    this.season,
  });

  factory Fragment$Contribution$item$$Episode.fromJson(
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
    final l$$__typename = json['__typename'];
    final l$progress = json['progress'];
    final l$season = json['season'];
    return Fragment$Contribution$item$$Episode(
      id: (l$id as String),
      image: (l$image as String?),
      number: (l$number as int?),
      title: (l$title as String),
      publishDate: (l$publishDate as String),
      ageRating: (l$ageRating as String),
      duration: (l$duration as int),
      locked: (l$locked as bool),
      lessons: Fragment$Contribution$item$$Episode$lessons.fromJson(
          (l$lessons as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      progress: (l$progress as int?),
      season: l$season == null
          ? null
          : Fragment$Contribution$item$$Episode$season.fromJson(
              (l$season as Map<String, dynamic>)),
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

  final Fragment$Contribution$item$$Episode$lessons lessons;

  final String $__typename;

  final int? progress;

  final Fragment$Contribution$item$$Episode$season? season;

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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$season = season;
    _resultData['season'] = l$season?.toJson();
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
    final l$$__typename = $__typename;
    final l$progress = progress;
    final l$season = season;
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
      l$$__typename,
      l$progress,
      l$season,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Contribution$item$$Episode) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$Contribution$item$$Episode
    on Fragment$Contribution$item$$Episode {
  CopyWith$Fragment$Contribution$item$$Episode<
          Fragment$Contribution$item$$Episode>
      get copyWith => CopyWith$Fragment$Contribution$item$$Episode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Contribution$item$$Episode<TRes> {
  factory CopyWith$Fragment$Contribution$item$$Episode(
    Fragment$Contribution$item$$Episode instance,
    TRes Function(Fragment$Contribution$item$$Episode) then,
  ) = _CopyWithImpl$Fragment$Contribution$item$$Episode;

  factory CopyWith$Fragment$Contribution$item$$Episode.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Contribution$item$$Episode;

  TRes call({
    String? id,
    String? image,
    int? number,
    String? title,
    String? publishDate,
    String? ageRating,
    int? duration,
    bool? locked,
    Fragment$Contribution$item$$Episode$lessons? lessons,
    String? $__typename,
    int? progress,
    Fragment$Contribution$item$$Episode$season? season,
  });
  CopyWith$Fragment$Contribution$item$$Episode$lessons<TRes> get lessons;
  CopyWith$Fragment$Contribution$item$$Episode$season<TRes> get season;
}

class _CopyWithImpl$Fragment$Contribution$item$$Episode<TRes>
    implements CopyWith$Fragment$Contribution$item$$Episode<TRes> {
  _CopyWithImpl$Fragment$Contribution$item$$Episode(
    this._instance,
    this._then,
  );

  final Fragment$Contribution$item$$Episode _instance;

  final TRes Function(Fragment$Contribution$item$$Episode) _then;

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
    Object? $__typename = _undefined,
    Object? progress = _undefined,
    Object? season = _undefined,
  }) =>
      _then(Fragment$Contribution$item$$Episode(
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
            : (lessons as Fragment$Contribution$item$$Episode$lessons),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        season: season == _undefined
            ? _instance.season
            : (season as Fragment$Contribution$item$$Episode$season?),
      ));

  CopyWith$Fragment$Contribution$item$$Episode$lessons<TRes> get lessons {
    final local$lessons = _instance.lessons;
    return CopyWith$Fragment$Contribution$item$$Episode$lessons(
        local$lessons, (e) => call(lessons: e));
  }

  CopyWith$Fragment$Contribution$item$$Episode$season<TRes> get season {
    final local$season = _instance.season;
    return local$season == null
        ? CopyWith$Fragment$Contribution$item$$Episode$season.stub(
            _then(_instance))
        : CopyWith$Fragment$Contribution$item$$Episode$season(
            local$season, (e) => call(season: e));
  }
}

class _CopyWithStubImpl$Fragment$Contribution$item$$Episode<TRes>
    implements CopyWith$Fragment$Contribution$item$$Episode<TRes> {
  _CopyWithStubImpl$Fragment$Contribution$item$$Episode(this._res);

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
    Fragment$Contribution$item$$Episode$lessons? lessons,
    String? $__typename,
    int? progress,
    Fragment$Contribution$item$$Episode$season? season,
  }) =>
      _res;

  CopyWith$Fragment$Contribution$item$$Episode$lessons<TRes> get lessons =>
      CopyWith$Fragment$Contribution$item$$Episode$lessons.stub(_res);

  CopyWith$Fragment$Contribution$item$$Episode$season<TRes> get season =>
      CopyWith$Fragment$Contribution$item$$Episode$season.stub(_res);
}

class Fragment$Contribution$item$$Episode$lessons
    implements
        Fragment$EpisodeListEpisode$lessons,
        Fragment$SeasonListEpisode$lessons {
  Fragment$Contribution$item$$Episode$lessons({
    required this.total,
    this.$__typename = 'LessonPagination',
  });

  factory Fragment$Contribution$item$$Episode$lessons.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Fragment$Contribution$item$$Episode$lessons(
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
    if (!(other is Fragment$Contribution$item$$Episode$lessons) ||
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

extension UtilityExtension$Fragment$Contribution$item$$Episode$lessons
    on Fragment$Contribution$item$$Episode$lessons {
  CopyWith$Fragment$Contribution$item$$Episode$lessons<
          Fragment$Contribution$item$$Episode$lessons>
      get copyWith => CopyWith$Fragment$Contribution$item$$Episode$lessons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Contribution$item$$Episode$lessons<TRes> {
  factory CopyWith$Fragment$Contribution$item$$Episode$lessons(
    Fragment$Contribution$item$$Episode$lessons instance,
    TRes Function(Fragment$Contribution$item$$Episode$lessons) then,
  ) = _CopyWithImpl$Fragment$Contribution$item$$Episode$lessons;

  factory CopyWith$Fragment$Contribution$item$$Episode$lessons.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Contribution$item$$Episode$lessons;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Contribution$item$$Episode$lessons<TRes>
    implements CopyWith$Fragment$Contribution$item$$Episode$lessons<TRes> {
  _CopyWithImpl$Fragment$Contribution$item$$Episode$lessons(
    this._instance,
    this._then,
  );

  final Fragment$Contribution$item$$Episode$lessons _instance;

  final TRes Function(Fragment$Contribution$item$$Episode$lessons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Contribution$item$$Episode$lessons(
        total: total == _undefined || total == null
            ? _instance.total
            : (total as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Contribution$item$$Episode$lessons<TRes>
    implements CopyWith$Fragment$Contribution$item$$Episode$lessons<TRes> {
  _CopyWithStubImpl$Fragment$Contribution$item$$Episode$lessons(this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Contribution$item$$Episode$season
    implements Fragment$EpisodeListEpisode$season {
  Fragment$Contribution$item$$Episode$season({
    required this.$show,
    this.$__typename = 'Season',
  });

  factory Fragment$Contribution$item$$Episode$season.fromJson(
      Map<String, dynamic> json) {
    final l$$show = json['show'];
    final l$$__typename = json['__typename'];
    return Fragment$Contribution$item$$Episode$season(
      $show: Fragment$Contribution$item$$Episode$season$show.fromJson(
          (l$$show as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Contribution$item$$Episode$season$show $show;

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
    if (!(other is Fragment$Contribution$item$$Episode$season) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Contribution$item$$Episode$season
    on Fragment$Contribution$item$$Episode$season {
  CopyWith$Fragment$Contribution$item$$Episode$season<
          Fragment$Contribution$item$$Episode$season>
      get copyWith => CopyWith$Fragment$Contribution$item$$Episode$season(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Contribution$item$$Episode$season<TRes> {
  factory CopyWith$Fragment$Contribution$item$$Episode$season(
    Fragment$Contribution$item$$Episode$season instance,
    TRes Function(Fragment$Contribution$item$$Episode$season) then,
  ) = _CopyWithImpl$Fragment$Contribution$item$$Episode$season;

  factory CopyWith$Fragment$Contribution$item$$Episode$season.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Contribution$item$$Episode$season;

  TRes call({
    Fragment$Contribution$item$$Episode$season$show? $show,
    String? $__typename,
  });
  CopyWith$Fragment$Contribution$item$$Episode$season$show<TRes> get $show;
}

class _CopyWithImpl$Fragment$Contribution$item$$Episode$season<TRes>
    implements CopyWith$Fragment$Contribution$item$$Episode$season<TRes> {
  _CopyWithImpl$Fragment$Contribution$item$$Episode$season(
    this._instance,
    this._then,
  );

  final Fragment$Contribution$item$$Episode$season _instance;

  final TRes Function(Fragment$Contribution$item$$Episode$season) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $show = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Contribution$item$$Episode$season(
        $show: $show == _undefined || $show == null
            ? _instance.$show
            : ($show as Fragment$Contribution$item$$Episode$season$show),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Contribution$item$$Episode$season$show<TRes> get $show {
    final local$$show = _instance.$show;
    return CopyWith$Fragment$Contribution$item$$Episode$season$show(
        local$$show, (e) => call($show: e));
  }
}

class _CopyWithStubImpl$Fragment$Contribution$item$$Episode$season<TRes>
    implements CopyWith$Fragment$Contribution$item$$Episode$season<TRes> {
  _CopyWithStubImpl$Fragment$Contribution$item$$Episode$season(this._res);

  TRes _res;

  call({
    Fragment$Contribution$item$$Episode$season$show? $show,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Contribution$item$$Episode$season$show<TRes> get $show =>
      CopyWith$Fragment$Contribution$item$$Episode$season$show.stub(_res);
}

class Fragment$Contribution$item$$Episode$season$show
    implements Fragment$EpisodeListEpisode$season$show {
  Fragment$Contribution$item$$Episode$season$show({
    required this.title,
    this.$__typename = 'Show',
  });

  factory Fragment$Contribution$item$$Episode$season$show.fromJson(
      Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Fragment$Contribution$item$$Episode$season$show(
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
    if (!(other is Fragment$Contribution$item$$Episode$season$show) ||
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

extension UtilityExtension$Fragment$Contribution$item$$Episode$season$show
    on Fragment$Contribution$item$$Episode$season$show {
  CopyWith$Fragment$Contribution$item$$Episode$season$show<
          Fragment$Contribution$item$$Episode$season$show>
      get copyWith => CopyWith$Fragment$Contribution$item$$Episode$season$show(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Contribution$item$$Episode$season$show<TRes> {
  factory CopyWith$Fragment$Contribution$item$$Episode$season$show(
    Fragment$Contribution$item$$Episode$season$show instance,
    TRes Function(Fragment$Contribution$item$$Episode$season$show) then,
  ) = _CopyWithImpl$Fragment$Contribution$item$$Episode$season$show;

  factory CopyWith$Fragment$Contribution$item$$Episode$season$show.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Contribution$item$$Episode$season$show;

  TRes call({
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Contribution$item$$Episode$season$show<TRes>
    implements CopyWith$Fragment$Contribution$item$$Episode$season$show<TRes> {
  _CopyWithImpl$Fragment$Contribution$item$$Episode$season$show(
    this._instance,
    this._then,
  );

  final Fragment$Contribution$item$$Episode$season$show _instance;

  final TRes Function(Fragment$Contribution$item$$Episode$season$show) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Contribution$item$$Episode$season$show(
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Contribution$item$$Episode$season$show<TRes>
    implements CopyWith$Fragment$Contribution$item$$Episode$season$show<TRes> {
  _CopyWithStubImpl$Fragment$Contribution$item$$Episode$season$show(this._res);

  TRes _res;

  call({
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetPerson {
  factory Variables$Query$GetPerson({required String id}) =>
      Variables$Query$GetPerson._({
        r'id': id,
      });

  Variables$Query$GetPerson._(this._$data);

  factory Variables$Query$GetPerson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetPerson._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetPerson<Variables$Query$GetPerson> get copyWith =>
      CopyWith$Variables$Query$GetPerson(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetPerson) ||
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

abstract class CopyWith$Variables$Query$GetPerson<TRes> {
  factory CopyWith$Variables$Query$GetPerson(
    Variables$Query$GetPerson instance,
    TRes Function(Variables$Query$GetPerson) then,
  ) = _CopyWithImpl$Variables$Query$GetPerson;

  factory CopyWith$Variables$Query$GetPerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetPerson;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetPerson<TRes>
    implements CopyWith$Variables$Query$GetPerson<TRes> {
  _CopyWithImpl$Variables$Query$GetPerson(
    this._instance,
    this._then,
  );

  final Variables$Query$GetPerson _instance;

  final TRes Function(Variables$Query$GetPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetPerson._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetPerson<TRes>
    implements CopyWith$Variables$Query$GetPerson<TRes> {
  _CopyWithStubImpl$Variables$Query$GetPerson(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetPerson {
  Query$GetPerson({
    required this.person,
    this.$__typename = 'QueryRoot',
  });

  factory Query$GetPerson.fromJson(Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Query$GetPerson(
      person:
          Query$GetPerson$person.fromJson((l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPerson$person person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPerson) || runtimeType != other.runtimeType) {
      return false;
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

extension UtilityExtension$Query$GetPerson on Query$GetPerson {
  CopyWith$Query$GetPerson<Query$GetPerson> get copyWith =>
      CopyWith$Query$GetPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPerson<TRes> {
  factory CopyWith$Query$GetPerson(
    Query$GetPerson instance,
    TRes Function(Query$GetPerson) then,
  ) = _CopyWithImpl$Query$GetPerson;

  factory CopyWith$Query$GetPerson.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPerson;

  TRes call({
    Query$GetPerson$person? person,
    String? $__typename,
  });
  CopyWith$Query$GetPerson$person<TRes> get person;
}

class _CopyWithImpl$Query$GetPerson<TRes>
    implements CopyWith$Query$GetPerson<TRes> {
  _CopyWithImpl$Query$GetPerson(
    this._instance,
    this._then,
  );

  final Query$GetPerson _instance;

  final TRes Function(Query$GetPerson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPerson(
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Query$GetPerson$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPerson$person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Query$GetPerson$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Query$GetPerson<TRes>
    implements CopyWith$Query$GetPerson<TRes> {
  _CopyWithStubImpl$Query$GetPerson(this._res);

  TRes _res;

  call({
    Query$GetPerson$person? person,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPerson$person<TRes> get person =>
      CopyWith$Query$GetPerson$person.stub(_res);
}

const documentNodeQueryGetPerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPerson'),
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
        name: NameNode(value: 'person'),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'contributionTypes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'code'),
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
                name: NameNode(value: 'count'),
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
Query$GetPerson _parserFn$Query$GetPerson(Map<String, dynamic> data) =>
    Query$GetPerson.fromJson(data);
typedef OnQueryComplete$Query$GetPerson = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetPerson?,
);

class Options$Query$GetPerson extends graphql.QueryOptions<Query$GetPerson> {
  Options$Query$GetPerson({
    String? operationName,
    required Variables$Query$GetPerson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPerson? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetPerson? onComplete,
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
                    data == null ? null : _parserFn$Query$GetPerson(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetPerson,
          parserFn: _parserFn$Query$GetPerson,
        );

  final OnQueryComplete$Query$GetPerson? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetPerson
    extends graphql.WatchQueryOptions<Query$GetPerson> {
  WatchOptions$Query$GetPerson({
    String? operationName,
    required Variables$Query$GetPerson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPerson? typedOptimisticResult,
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
          document: documentNodeQueryGetPerson,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetPerson,
        );
}

class FetchMoreOptions$Query$GetPerson extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetPerson({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetPerson variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetPerson,
        );
}

extension ClientExtension$Query$GetPerson on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetPerson>> query$GetPerson(
          Options$Query$GetPerson options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetPerson> watchQuery$GetPerson(
          WatchOptions$Query$GetPerson options) =>
      this.watchQuery(options);
  void writeQuery$GetPerson({
    required Query$GetPerson data,
    required Variables$Query$GetPerson variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetPerson),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetPerson? readQuery$GetPerson({
    required Variables$Query$GetPerson variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetPerson),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetPerson.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetPerson> useQuery$GetPerson(
        Options$Query$GetPerson options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetPerson> useWatchQuery$GetPerson(
        WatchOptions$Query$GetPerson options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetPerson$Widget extends graphql_flutter.Query<Query$GetPerson> {
  Query$GetPerson$Widget({
    widgets.Key? key,
    required Options$Query$GetPerson options,
    required graphql_flutter.QueryBuilder<Query$GetPerson> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetPerson$person {
  Query$GetPerson$person({
    required this.id,
    required this.name,
    this.image,
    required this.contributionTypes,
    this.$__typename = 'Person',
  });

  factory Query$GetPerson$person.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$contributionTypes = json['contributionTypes'];
    final l$$__typename = json['__typename'];
    return Query$GetPerson$person(
      id: (l$id as String),
      name: (l$name as String),
      image: (l$image as String?),
      contributionTypes: (l$contributionTypes as List<dynamic>)
          .map((e) => Query$GetPerson$person$contributionTypes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? image;

  final List<Query$GetPerson$person$contributionTypes> contributionTypes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$contributionTypes = contributionTypes;
    _resultData['contributionTypes'] =
        l$contributionTypes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$contributionTypes = contributionTypes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      Object.hashAll(l$contributionTypes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPerson$person) ||
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
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPerson$person on Query$GetPerson$person {
  CopyWith$Query$GetPerson$person<Query$GetPerson$person> get copyWith =>
      CopyWith$Query$GetPerson$person(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPerson$person<TRes> {
  factory CopyWith$Query$GetPerson$person(
    Query$GetPerson$person instance,
    TRes Function(Query$GetPerson$person) then,
  ) = _CopyWithImpl$Query$GetPerson$person;

  factory CopyWith$Query$GetPerson$person.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPerson$person;

  TRes call({
    String? id,
    String? name,
    String? image,
    List<Query$GetPerson$person$contributionTypes>? contributionTypes,
    String? $__typename,
  });
  TRes contributionTypes(
      Iterable<Query$GetPerson$person$contributionTypes> Function(
              Iterable<
                  CopyWith$Query$GetPerson$person$contributionTypes<
                      Query$GetPerson$person$contributionTypes>>)
          _fn);
}

class _CopyWithImpl$Query$GetPerson$person<TRes>
    implements CopyWith$Query$GetPerson$person<TRes> {
  _CopyWithImpl$Query$GetPerson$person(
    this._instance,
    this._then,
  );

  final Query$GetPerson$person _instance;

  final TRes Function(Query$GetPerson$person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? contributionTypes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPerson$person(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        image: image == _undefined ? _instance.image : (image as String?),
        contributionTypes:
            contributionTypes == _undefined || contributionTypes == null
                ? _instance.contributionTypes
                : (contributionTypes
                    as List<Query$GetPerson$person$contributionTypes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes contributionTypes(
          Iterable<Query$GetPerson$person$contributionTypes> Function(
                  Iterable<
                      CopyWith$Query$GetPerson$person$contributionTypes<
                          Query$GetPerson$person$contributionTypes>>)
              _fn) =>
      call(
          contributionTypes: _fn(_instance.contributionTypes
              .map((e) => CopyWith$Query$GetPerson$person$contributionTypes(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetPerson$person<TRes>
    implements CopyWith$Query$GetPerson$person<TRes> {
  _CopyWithStubImpl$Query$GetPerson$person(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    List<Query$GetPerson$person$contributionTypes>? contributionTypes,
    String? $__typename,
  }) =>
      _res;

  contributionTypes(_fn) => _res;
}

class Query$GetPerson$person$contributionTypes {
  Query$GetPerson$person$contributionTypes({
    required this.type,
    required this.count,
    this.$__typename = 'ContributionTypeCount',
  });

  factory Query$GetPerson$person$contributionTypes.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$GetPerson$person$contributionTypes(
      type: Query$GetPerson$person$contributionTypes$type.fromJson(
          (l$type as Map<String, dynamic>)),
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPerson$person$contributionTypes$type type;

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type.toJson();
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPerson$person$contributionTypes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$GetPerson$person$contributionTypes
    on Query$GetPerson$person$contributionTypes {
  CopyWith$Query$GetPerson$person$contributionTypes<
          Query$GetPerson$person$contributionTypes>
      get copyWith => CopyWith$Query$GetPerson$person$contributionTypes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPerson$person$contributionTypes<TRes> {
  factory CopyWith$Query$GetPerson$person$contributionTypes(
    Query$GetPerson$person$contributionTypes instance,
    TRes Function(Query$GetPerson$person$contributionTypes) then,
  ) = _CopyWithImpl$Query$GetPerson$person$contributionTypes;

  factory CopyWith$Query$GetPerson$person$contributionTypes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPerson$person$contributionTypes;

  TRes call({
    Query$GetPerson$person$contributionTypes$type? type,
    int? count,
    String? $__typename,
  });
  CopyWith$Query$GetPerson$person$contributionTypes$type<TRes> get type;
}

class _CopyWithImpl$Query$GetPerson$person$contributionTypes<TRes>
    implements CopyWith$Query$GetPerson$person$contributionTypes<TRes> {
  _CopyWithImpl$Query$GetPerson$person$contributionTypes(
    this._instance,
    this._then,
  );

  final Query$GetPerson$person$contributionTypes _instance;

  final TRes Function(Query$GetPerson$person$contributionTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPerson$person$contributionTypes(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Query$GetPerson$person$contributionTypes$type),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPerson$person$contributionTypes$type<TRes> get type {
    final local$type = _instance.type;
    return CopyWith$Query$GetPerson$person$contributionTypes$type(
        local$type, (e) => call(type: e));
  }
}

class _CopyWithStubImpl$Query$GetPerson$person$contributionTypes<TRes>
    implements CopyWith$Query$GetPerson$person$contributionTypes<TRes> {
  _CopyWithStubImpl$Query$GetPerson$person$contributionTypes(this._res);

  TRes _res;

  call({
    Query$GetPerson$person$contributionTypes$type? type,
    int? count,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPerson$person$contributionTypes$type<TRes> get type =>
      CopyWith$Query$GetPerson$person$contributionTypes$type.stub(_res);
}

class Query$GetPerson$person$contributionTypes$type {
  Query$GetPerson$person$contributionTypes$type({
    required this.code,
    required this.title,
    this.$__typename = 'ContributionType',
  });

  factory Query$GetPerson$person$contributionTypes$type.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$GetPerson$person$contributionTypes$type(
      code: (l$code as String),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPerson$person$contributionTypes$type) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$GetPerson$person$contributionTypes$type
    on Query$GetPerson$person$contributionTypes$type {
  CopyWith$Query$GetPerson$person$contributionTypes$type<
          Query$GetPerson$person$contributionTypes$type>
      get copyWith => CopyWith$Query$GetPerson$person$contributionTypes$type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPerson$person$contributionTypes$type<TRes> {
  factory CopyWith$Query$GetPerson$person$contributionTypes$type(
    Query$GetPerson$person$contributionTypes$type instance,
    TRes Function(Query$GetPerson$person$contributionTypes$type) then,
  ) = _CopyWithImpl$Query$GetPerson$person$contributionTypes$type;

  factory CopyWith$Query$GetPerson$person$contributionTypes$type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPerson$person$contributionTypes$type;

  TRes call({
    String? code,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPerson$person$contributionTypes$type<TRes>
    implements CopyWith$Query$GetPerson$person$contributionTypes$type<TRes> {
  _CopyWithImpl$Query$GetPerson$person$contributionTypes$type(
    this._instance,
    this._then,
  );

  final Query$GetPerson$person$contributionTypes$type _instance;

  final TRes Function(Query$GetPerson$person$contributionTypes$type) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPerson$person$contributionTypes$type(
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPerson$person$contributionTypes$type<TRes>
    implements CopyWith$Query$GetPerson$person$contributionTypes$type<TRes> {
  _CopyWithStubImpl$Query$GetPerson$person$contributionTypes$type(this._res);

  TRes _res;

  call({
    String? code,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetRandomContribution {
  factory Variables$Query$GetRandomContribution({
    required String id,
    List<String>? types,
  }) =>
      Variables$Query$GetRandomContribution._({
        r'id': id,
        if (types != null) r'types': types,
      });

  Variables$Query$GetRandomContribution._(this._$data);

  factory Variables$Query$GetRandomContribution.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('types')) {
      final l$types = data['types'];
      result$data['types'] =
          (l$types as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Variables$Query$GetRandomContribution._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  List<String>? get types => (_$data['types'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('types')) {
      final l$types = types;
      result$data['types'] = l$types?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetRandomContribution<
          Variables$Query$GetRandomContribution>
      get copyWith => CopyWith$Variables$Query$GetRandomContribution(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetRandomContribution) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$types = types;
    final lOther$types = other.types;
    if (_$data.containsKey('types') != other._$data.containsKey('types')) {
      return false;
    }
    if (l$types != null && lOther$types != null) {
      if (l$types.length != lOther$types.length) {
        return false;
      }
      for (int i = 0; i < l$types.length; i++) {
        final l$types$entry = l$types[i];
        final lOther$types$entry = lOther$types[i];
        if (l$types$entry != lOther$types$entry) {
          return false;
        }
      }
    } else if (l$types != lOther$types) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$types = types;
    return Object.hashAll([
      l$id,
      _$data.containsKey('types')
          ? l$types == null
              ? null
              : Object.hashAll(l$types.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetRandomContribution<TRes> {
  factory CopyWith$Variables$Query$GetRandomContribution(
    Variables$Query$GetRandomContribution instance,
    TRes Function(Variables$Query$GetRandomContribution) then,
  ) = _CopyWithImpl$Variables$Query$GetRandomContribution;

  factory CopyWith$Variables$Query$GetRandomContribution.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetRandomContribution;

  TRes call({
    String? id,
    List<String>? types,
  });
}

class _CopyWithImpl$Variables$Query$GetRandomContribution<TRes>
    implements CopyWith$Variables$Query$GetRandomContribution<TRes> {
  _CopyWithImpl$Variables$Query$GetRandomContribution(
    this._instance,
    this._then,
  );

  final Variables$Query$GetRandomContribution _instance;

  final TRes Function(Variables$Query$GetRandomContribution) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? types = _undefined,
  }) =>
      _then(Variables$Query$GetRandomContribution._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (types != _undefined) 'types': (types as List<String>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetRandomContribution<TRes>
    implements CopyWith$Variables$Query$GetRandomContribution<TRes> {
  _CopyWithStubImpl$Variables$Query$GetRandomContribution(this._res);

  TRes _res;

  call({
    String? id,
    List<String>? types,
  }) =>
      _res;
}

class Query$GetRandomContribution {
  Query$GetRandomContribution({
    required this.person,
    this.$__typename = 'QueryRoot',
  });

  factory Query$GetRandomContribution.fromJson(Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Query$GetRandomContribution(
      person: Query$GetRandomContribution$person.fromJson(
          (l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetRandomContribution$person person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetRandomContribution) ||
        runtimeType != other.runtimeType) {
      return false;
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

extension UtilityExtension$Query$GetRandomContribution
    on Query$GetRandomContribution {
  CopyWith$Query$GetRandomContribution<Query$GetRandomContribution>
      get copyWith => CopyWith$Query$GetRandomContribution(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRandomContribution<TRes> {
  factory CopyWith$Query$GetRandomContribution(
    Query$GetRandomContribution instance,
    TRes Function(Query$GetRandomContribution) then,
  ) = _CopyWithImpl$Query$GetRandomContribution;

  factory CopyWith$Query$GetRandomContribution.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRandomContribution;

  TRes call({
    Query$GetRandomContribution$person? person,
    String? $__typename,
  });
  CopyWith$Query$GetRandomContribution$person<TRes> get person;
}

class _CopyWithImpl$Query$GetRandomContribution<TRes>
    implements CopyWith$Query$GetRandomContribution<TRes> {
  _CopyWithImpl$Query$GetRandomContribution(
    this._instance,
    this._then,
  );

  final Query$GetRandomContribution _instance;

  final TRes Function(Query$GetRandomContribution) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRandomContribution(
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Query$GetRandomContribution$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetRandomContribution$person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Query$GetRandomContribution$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Query$GetRandomContribution<TRes>
    implements CopyWith$Query$GetRandomContribution<TRes> {
  _CopyWithStubImpl$Query$GetRandomContribution(this._res);

  TRes _res;

  call({
    Query$GetRandomContribution$person? person,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetRandomContribution$person<TRes> get person =>
      CopyWith$Query$GetRandomContribution$person.stub(_res);
}

const documentNodeQueryGetRandomContribution = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetRandomContribution'),
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
        variable: VariableNode(name: NameNode(value: 'types')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'person'),
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
            name: NameNode(value: 'contributions'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'shuffle'),
                value: BooleanValueNode(value: true),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '1'),
              ),
              ArgumentNode(
                name: NameNode(value: 'types'),
                value: VariableNode(name: NameNode(value: 'types')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'items'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Contribution'),
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
  fragmentDefinitionContribution,
  fragmentDefinitionEpisodeListEpisode,
  fragmentDefinitionSeasonListEpisode,
]);
Query$GetRandomContribution _parserFn$Query$GetRandomContribution(
        Map<String, dynamic> data) =>
    Query$GetRandomContribution.fromJson(data);
typedef OnQueryComplete$Query$GetRandomContribution = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetRandomContribution?,
);

class Options$Query$GetRandomContribution
    extends graphql.QueryOptions<Query$GetRandomContribution> {
  Options$Query$GetRandomContribution({
    String? operationName,
    required Variables$Query$GetRandomContribution variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetRandomContribution? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetRandomContribution? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$GetRandomContribution(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetRandomContribution,
          parserFn: _parserFn$Query$GetRandomContribution,
        );

  final OnQueryComplete$Query$GetRandomContribution? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetRandomContribution
    extends graphql.WatchQueryOptions<Query$GetRandomContribution> {
  WatchOptions$Query$GetRandomContribution({
    String? operationName,
    required Variables$Query$GetRandomContribution variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetRandomContribution? typedOptimisticResult,
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
          document: documentNodeQueryGetRandomContribution,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetRandomContribution,
        );
}

class FetchMoreOptions$Query$GetRandomContribution
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetRandomContribution({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetRandomContribution variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetRandomContribution,
        );
}

extension ClientExtension$Query$GetRandomContribution on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetRandomContribution>>
      query$GetRandomContribution(
              Options$Query$GetRandomContribution options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetRandomContribution>
      watchQuery$GetRandomContribution(
              WatchOptions$Query$GetRandomContribution options) =>
          this.watchQuery(options);
  void writeQuery$GetRandomContribution({
    required Query$GetRandomContribution data,
    required Variables$Query$GetRandomContribution variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetRandomContribution),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetRandomContribution? readQuery$GetRandomContribution({
    required Variables$Query$GetRandomContribution variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetRandomContribution),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetRandomContribution.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetRandomContribution>
    useQuery$GetRandomContribution(
            Options$Query$GetRandomContribution options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetRandomContribution>
    useWatchQuery$GetRandomContribution(
            WatchOptions$Query$GetRandomContribution options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetRandomContribution$Widget
    extends graphql_flutter.Query<Query$GetRandomContribution> {
  Query$GetRandomContribution$Widget({
    widgets.Key? key,
    required Options$Query$GetRandomContribution options,
    required graphql_flutter.QueryBuilder<Query$GetRandomContribution> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetRandomContribution$person {
  Query$GetRandomContribution$person({
    required this.contributions,
    this.$__typename = 'Person',
  });

  factory Query$GetRandomContribution$person.fromJson(
      Map<String, dynamic> json) {
    final l$contributions = json['contributions'];
    final l$$__typename = json['__typename'];
    return Query$GetRandomContribution$person(
      contributions: Query$GetRandomContribution$person$contributions.fromJson(
          (l$contributions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetRandomContribution$person$contributions contributions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contributions = contributions;
    _resultData['contributions'] = l$contributions.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contributions = contributions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contributions,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetRandomContribution$person) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contributions = contributions;
    final lOther$contributions = other.contributions;
    if (l$contributions != lOther$contributions) {
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

extension UtilityExtension$Query$GetRandomContribution$person
    on Query$GetRandomContribution$person {
  CopyWith$Query$GetRandomContribution$person<
          Query$GetRandomContribution$person>
      get copyWith => CopyWith$Query$GetRandomContribution$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRandomContribution$person<TRes> {
  factory CopyWith$Query$GetRandomContribution$person(
    Query$GetRandomContribution$person instance,
    TRes Function(Query$GetRandomContribution$person) then,
  ) = _CopyWithImpl$Query$GetRandomContribution$person;

  factory CopyWith$Query$GetRandomContribution$person.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRandomContribution$person;

  TRes call({
    Query$GetRandomContribution$person$contributions? contributions,
    String? $__typename,
  });
  CopyWith$Query$GetRandomContribution$person$contributions<TRes>
      get contributions;
}

class _CopyWithImpl$Query$GetRandomContribution$person<TRes>
    implements CopyWith$Query$GetRandomContribution$person<TRes> {
  _CopyWithImpl$Query$GetRandomContribution$person(
    this._instance,
    this._then,
  );

  final Query$GetRandomContribution$person _instance;

  final TRes Function(Query$GetRandomContribution$person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contributions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRandomContribution$person(
        contributions: contributions == _undefined || contributions == null
            ? _instance.contributions
            : (contributions
                as Query$GetRandomContribution$person$contributions),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetRandomContribution$person$contributions<TRes>
      get contributions {
    final local$contributions = _instance.contributions;
    return CopyWith$Query$GetRandomContribution$person$contributions(
        local$contributions, (e) => call(contributions: e));
  }
}

class _CopyWithStubImpl$Query$GetRandomContribution$person<TRes>
    implements CopyWith$Query$GetRandomContribution$person<TRes> {
  _CopyWithStubImpl$Query$GetRandomContribution$person(this._res);

  TRes _res;

  call({
    Query$GetRandomContribution$person$contributions? contributions,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetRandomContribution$person$contributions<TRes>
      get contributions =>
          CopyWith$Query$GetRandomContribution$person$contributions.stub(_res);
}

class Query$GetRandomContribution$person$contributions {
  Query$GetRandomContribution$person$contributions({
    required this.items,
    this.$__typename = 'ContributionsPagination',
  });

  factory Query$GetRandomContribution$person$contributions.fromJson(
      Map<String, dynamic> json) {
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$GetRandomContribution$person$contributions(
      items: (l$items as List<dynamic>)
          .map((e) =>
              Fragment$Contribution.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Contribution> items;

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
    if (!(other is Query$GetRandomContribution$person$contributions) ||
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

extension UtilityExtension$Query$GetRandomContribution$person$contributions
    on Query$GetRandomContribution$person$contributions {
  CopyWith$Query$GetRandomContribution$person$contributions<
          Query$GetRandomContribution$person$contributions>
      get copyWith => CopyWith$Query$GetRandomContribution$person$contributions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRandomContribution$person$contributions<TRes> {
  factory CopyWith$Query$GetRandomContribution$person$contributions(
    Query$GetRandomContribution$person$contributions instance,
    TRes Function(Query$GetRandomContribution$person$contributions) then,
  ) = _CopyWithImpl$Query$GetRandomContribution$person$contributions;

  factory CopyWith$Query$GetRandomContribution$person$contributions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRandomContribution$person$contributions;

  TRes call({
    List<Fragment$Contribution>? items,
    String? $__typename,
  });
  TRes items(
      Iterable<Fragment$Contribution> Function(
              Iterable<CopyWith$Fragment$Contribution<Fragment$Contribution>>)
          _fn);
}

class _CopyWithImpl$Query$GetRandomContribution$person$contributions<TRes>
    implements CopyWith$Query$GetRandomContribution$person$contributions<TRes> {
  _CopyWithImpl$Query$GetRandomContribution$person$contributions(
    this._instance,
    this._then,
  );

  final Query$GetRandomContribution$person$contributions _instance;

  final TRes Function(Query$GetRandomContribution$person$contributions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRandomContribution$person$contributions(
        items: items == _undefined || items == null
            ? _instance.items
            : (items as List<Fragment$Contribution>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes items(
          Iterable<Fragment$Contribution> Function(
                  Iterable<
                      CopyWith$Fragment$Contribution<Fragment$Contribution>>)
              _fn) =>
      call(
          items: _fn(_instance.items.map((e) => CopyWith$Fragment$Contribution(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetRandomContribution$person$contributions<TRes>
    implements CopyWith$Query$GetRandomContribution$person$contributions<TRes> {
  _CopyWithStubImpl$Query$GetRandomContribution$person$contributions(this._res);

  TRes _res;

  call({
    List<Fragment$Contribution>? items,
    String? $__typename,
  }) =>
      _res;

  items(_fn) => _res;
}

class Variables$Query$GetContributions {
  factory Variables$Query$GetContributions({
    required String id,
    int? first,
    int? offset,
    bool? shuffle,
    List<String>? types,
  }) =>
      Variables$Query$GetContributions._({
        r'id': id,
        if (first != null) r'first': first,
        if (offset != null) r'offset': offset,
        if (shuffle != null) r'shuffle': shuffle,
        if (types != null) r'types': types,
      });

  Variables$Query$GetContributions._(this._$data);

  factory Variables$Query$GetContributions.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('shuffle')) {
      final l$shuffle = data['shuffle'];
      result$data['shuffle'] = (l$shuffle as bool?);
    }
    if (data.containsKey('types')) {
      final l$types = data['types'];
      result$data['types'] =
          (l$types as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Variables$Query$GetContributions._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  int? get first => (_$data['first'] as int?);

  int? get offset => (_$data['offset'] as int?);

  bool? get shuffle => (_$data['shuffle'] as bool?);

  List<String>? get types => (_$data['types'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    if (_$data.containsKey('shuffle')) {
      final l$shuffle = shuffle;
      result$data['shuffle'] = l$shuffle;
    }
    if (_$data.containsKey('types')) {
      final l$types = types;
      result$data['types'] = l$types?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetContributions<Variables$Query$GetContributions>
      get copyWith => CopyWith$Variables$Query$GetContributions(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetContributions) ||
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
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
      return false;
    }
    final l$shuffle = shuffle;
    final lOther$shuffle = other.shuffle;
    if (_$data.containsKey('shuffle') != other._$data.containsKey('shuffle')) {
      return false;
    }
    if (l$shuffle != lOther$shuffle) {
      return false;
    }
    final l$types = types;
    final lOther$types = other.types;
    if (_$data.containsKey('types') != other._$data.containsKey('types')) {
      return false;
    }
    if (l$types != null && lOther$types != null) {
      if (l$types.length != lOther$types.length) {
        return false;
      }
      for (int i = 0; i < l$types.length; i++) {
        final l$types$entry = l$types[i];
        final lOther$types$entry = lOther$types[i];
        if (l$types$entry != lOther$types$entry) {
          return false;
        }
      }
    } else if (l$types != lOther$types) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$first = first;
    final l$offset = offset;
    final l$shuffle = shuffle;
    final l$types = types;
    return Object.hashAll([
      l$id,
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('offset') ? l$offset : const {},
      _$data.containsKey('shuffle') ? l$shuffle : const {},
      _$data.containsKey('types')
          ? l$types == null
              ? null
              : Object.hashAll(l$types.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetContributions<TRes> {
  factory CopyWith$Variables$Query$GetContributions(
    Variables$Query$GetContributions instance,
    TRes Function(Variables$Query$GetContributions) then,
  ) = _CopyWithImpl$Variables$Query$GetContributions;

  factory CopyWith$Variables$Query$GetContributions.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetContributions;

  TRes call({
    String? id,
    int? first,
    int? offset,
    bool? shuffle,
    List<String>? types,
  });
}

class _CopyWithImpl$Variables$Query$GetContributions<TRes>
    implements CopyWith$Variables$Query$GetContributions<TRes> {
  _CopyWithImpl$Variables$Query$GetContributions(
    this._instance,
    this._then,
  );

  final Variables$Query$GetContributions _instance;

  final TRes Function(Variables$Query$GetContributions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? shuffle = _undefined,
    Object? types = _undefined,
  }) =>
      _then(Variables$Query$GetContributions._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (first != _undefined) 'first': (first as int?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (shuffle != _undefined) 'shuffle': (shuffle as bool?),
        if (types != _undefined) 'types': (types as List<String>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetContributions<TRes>
    implements CopyWith$Variables$Query$GetContributions<TRes> {
  _CopyWithStubImpl$Variables$Query$GetContributions(this._res);

  TRes _res;

  call({
    String? id,
    int? first,
    int? offset,
    bool? shuffle,
    List<String>? types,
  }) =>
      _res;
}

class Query$GetContributions {
  Query$GetContributions({
    required this.person,
    this.$__typename = 'QueryRoot',
  });

  factory Query$GetContributions.fromJson(Map<String, dynamic> json) {
    final l$person = json['person'];
    final l$$__typename = json['__typename'];
    return Query$GetContributions(
      person: Query$GetContributions$person.fromJson(
          (l$person as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetContributions$person person;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$person = person;
    _resultData['person'] = l$person.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$person = person;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$person,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetContributions) ||
        runtimeType != other.runtimeType) {
      return false;
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

extension UtilityExtension$Query$GetContributions on Query$GetContributions {
  CopyWith$Query$GetContributions<Query$GetContributions> get copyWith =>
      CopyWith$Query$GetContributions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetContributions<TRes> {
  factory CopyWith$Query$GetContributions(
    Query$GetContributions instance,
    TRes Function(Query$GetContributions) then,
  ) = _CopyWithImpl$Query$GetContributions;

  factory CopyWith$Query$GetContributions.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContributions;

  TRes call({
    Query$GetContributions$person? person,
    String? $__typename,
  });
  CopyWith$Query$GetContributions$person<TRes> get person;
}

class _CopyWithImpl$Query$GetContributions<TRes>
    implements CopyWith$Query$GetContributions<TRes> {
  _CopyWithImpl$Query$GetContributions(
    this._instance,
    this._then,
  );

  final Query$GetContributions _instance;

  final TRes Function(Query$GetContributions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? person = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetContributions(
        person: person == _undefined || person == null
            ? _instance.person
            : (person as Query$GetContributions$person),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetContributions$person<TRes> get person {
    final local$person = _instance.person;
    return CopyWith$Query$GetContributions$person(
        local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl$Query$GetContributions<TRes>
    implements CopyWith$Query$GetContributions<TRes> {
  _CopyWithStubImpl$Query$GetContributions(this._res);

  TRes _res;

  call({
    Query$GetContributions$person? person,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetContributions$person<TRes> get person =>
      CopyWith$Query$GetContributions$person.stub(_res);
}

const documentNodeQueryGetContributions = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetContributions'),
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
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'shuffle')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'types')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'person'),
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
            name: NameNode(value: 'contributions'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'offset'),
                value: VariableNode(name: NameNode(value: 'offset')),
              ),
              ArgumentNode(
                name: NameNode(value: 'shuffle'),
                value: VariableNode(name: NameNode(value: 'shuffle')),
              ),
              ArgumentNode(
                name: NameNode(value: 'types'),
                value: VariableNode(name: NameNode(value: 'types')),
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
                name: NameNode(value: 'offset'),
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
                  FragmentSpreadNode(
                    name: NameNode(value: 'Contribution'),
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
  fragmentDefinitionContribution,
  fragmentDefinitionEpisodeListEpisode,
  fragmentDefinitionSeasonListEpisode,
]);
Query$GetContributions _parserFn$Query$GetContributions(
        Map<String, dynamic> data) =>
    Query$GetContributions.fromJson(data);
typedef OnQueryComplete$Query$GetContributions = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetContributions?,
);

class Options$Query$GetContributions
    extends graphql.QueryOptions<Query$GetContributions> {
  Options$Query$GetContributions({
    String? operationName,
    required Variables$Query$GetContributions variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetContributions? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetContributions? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$GetContributions(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetContributions,
          parserFn: _parserFn$Query$GetContributions,
        );

  final OnQueryComplete$Query$GetContributions? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetContributions
    extends graphql.WatchQueryOptions<Query$GetContributions> {
  WatchOptions$Query$GetContributions({
    String? operationName,
    required Variables$Query$GetContributions variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetContributions? typedOptimisticResult,
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
          document: documentNodeQueryGetContributions,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetContributions,
        );
}

class FetchMoreOptions$Query$GetContributions extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetContributions({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetContributions variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetContributions,
        );
}

extension ClientExtension$Query$GetContributions on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetContributions>> query$GetContributions(
          Options$Query$GetContributions options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetContributions> watchQuery$GetContributions(
          WatchOptions$Query$GetContributions options) =>
      this.watchQuery(options);
  void writeQuery$GetContributions({
    required Query$GetContributions data,
    required Variables$Query$GetContributions variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetContributions),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetContributions? readQuery$GetContributions({
    required Variables$Query$GetContributions variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetContributions),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetContributions.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetContributions>
    useQuery$GetContributions(Options$Query$GetContributions options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetContributions> useWatchQuery$GetContributions(
        WatchOptions$Query$GetContributions options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetContributions$Widget
    extends graphql_flutter.Query<Query$GetContributions> {
  Query$GetContributions$Widget({
    widgets.Key? key,
    required Options$Query$GetContributions options,
    required graphql_flutter.QueryBuilder<Query$GetContributions> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetContributions$person {
  Query$GetContributions$person({
    required this.contributions,
    this.$__typename = 'Person',
  });

  factory Query$GetContributions$person.fromJson(Map<String, dynamic> json) {
    final l$contributions = json['contributions'];
    final l$$__typename = json['__typename'];
    return Query$GetContributions$person(
      contributions: Query$GetContributions$person$contributions.fromJson(
          (l$contributions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetContributions$person$contributions contributions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contributions = contributions;
    _resultData['contributions'] = l$contributions.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contributions = contributions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contributions,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetContributions$person) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contributions = contributions;
    final lOther$contributions = other.contributions;
    if (l$contributions != lOther$contributions) {
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

extension UtilityExtension$Query$GetContributions$person
    on Query$GetContributions$person {
  CopyWith$Query$GetContributions$person<Query$GetContributions$person>
      get copyWith => CopyWith$Query$GetContributions$person(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetContributions$person<TRes> {
  factory CopyWith$Query$GetContributions$person(
    Query$GetContributions$person instance,
    TRes Function(Query$GetContributions$person) then,
  ) = _CopyWithImpl$Query$GetContributions$person;

  factory CopyWith$Query$GetContributions$person.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContributions$person;

  TRes call({
    Query$GetContributions$person$contributions? contributions,
    String? $__typename,
  });
  CopyWith$Query$GetContributions$person$contributions<TRes> get contributions;
}

class _CopyWithImpl$Query$GetContributions$person<TRes>
    implements CopyWith$Query$GetContributions$person<TRes> {
  _CopyWithImpl$Query$GetContributions$person(
    this._instance,
    this._then,
  );

  final Query$GetContributions$person _instance;

  final TRes Function(Query$GetContributions$person) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contributions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetContributions$person(
        contributions: contributions == _undefined || contributions == null
            ? _instance.contributions
            : (contributions as Query$GetContributions$person$contributions),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetContributions$person$contributions<TRes> get contributions {
    final local$contributions = _instance.contributions;
    return CopyWith$Query$GetContributions$person$contributions(
        local$contributions, (e) => call(contributions: e));
  }
}

class _CopyWithStubImpl$Query$GetContributions$person<TRes>
    implements CopyWith$Query$GetContributions$person<TRes> {
  _CopyWithStubImpl$Query$GetContributions$person(this._res);

  TRes _res;

  call({
    Query$GetContributions$person$contributions? contributions,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetContributions$person$contributions<TRes>
      get contributions =>
          CopyWith$Query$GetContributions$person$contributions.stub(_res);
}

class Query$GetContributions$person$contributions {
  Query$GetContributions$person$contributions({
    required this.total,
    required this.first,
    required this.offset,
    required this.items,
    this.$__typename = 'ContributionsPagination',
  });

  factory Query$GetContributions$person$contributions.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$first = json['first'];
    final l$offset = json['offset'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$GetContributions$person$contributions(
      total: (l$total as int),
      first: (l$first as int),
      offset: (l$offset as int),
      items: (l$items as List<dynamic>)
          .map((e) =>
              Fragment$Contribution.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int total;

  final int first;

  final int offset;

  final List<Fragment$Contribution> items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$first = first;
    _resultData['first'] = l$first;
    final l$offset = offset;
    _resultData['offset'] = l$offset;
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
    final l$offset = offset;
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$first,
      l$offset,
      Object.hashAll(l$items.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetContributions$person$contributions) ||
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
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (l$offset != lOther$offset) {
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

extension UtilityExtension$Query$GetContributions$person$contributions
    on Query$GetContributions$person$contributions {
  CopyWith$Query$GetContributions$person$contributions<
          Query$GetContributions$person$contributions>
      get copyWith => CopyWith$Query$GetContributions$person$contributions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetContributions$person$contributions<TRes> {
  factory CopyWith$Query$GetContributions$person$contributions(
    Query$GetContributions$person$contributions instance,
    TRes Function(Query$GetContributions$person$contributions) then,
  ) = _CopyWithImpl$Query$GetContributions$person$contributions;

  factory CopyWith$Query$GetContributions$person$contributions.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContributions$person$contributions;

  TRes call({
    int? total,
    int? first,
    int? offset,
    List<Fragment$Contribution>? items,
    String? $__typename,
  });
  TRes items(
      Iterable<Fragment$Contribution> Function(
              Iterable<CopyWith$Fragment$Contribution<Fragment$Contribution>>)
          _fn);
}

class _CopyWithImpl$Query$GetContributions$person$contributions<TRes>
    implements CopyWith$Query$GetContributions$person$contributions<TRes> {
  _CopyWithImpl$Query$GetContributions$person$contributions(
    this._instance,
    this._then,
  );

  final Query$GetContributions$person$contributions _instance;

  final TRes Function(Query$GetContributions$person$contributions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetContributions$person$contributions(
        total: total == _undefined || total == null
            ? _instance.total
            : (total as int),
        first: first == _undefined || first == null
            ? _instance.first
            : (first as int),
        offset: offset == _undefined || offset == null
            ? _instance.offset
            : (offset as int),
        items: items == _undefined || items == null
            ? _instance.items
            : (items as List<Fragment$Contribution>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes items(
          Iterable<Fragment$Contribution> Function(
                  Iterable<
                      CopyWith$Fragment$Contribution<Fragment$Contribution>>)
              _fn) =>
      call(
          items: _fn(_instance.items.map((e) => CopyWith$Fragment$Contribution(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetContributions$person$contributions<TRes>
    implements CopyWith$Query$GetContributions$person$contributions<TRes> {
  _CopyWithStubImpl$Query$GetContributions$person$contributions(this._res);

  TRes _res;

  call({
    int? total,
    int? first,
    int? offset,
    List<Fragment$Contribution>? items,
    String? $__typename,
  }) =>
      _res;

  items(_fn) => _res;
}
