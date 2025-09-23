import 'package:build/build.dart';
import 'package:build_test/build_test.dart';
import 'package:isar_generator/isar_generator.dart';
import 'package:isar_generator/src/collection_generator.dart';
import 'package:test/test.dart';

void main() {
  group('Code Generation', () {
    test('generates _webSafeHash function in collection code', () async {
      const source = '''
import 'package:isar/isar.dart';

@collection
class TestCollection {
  Id id = Isar.autoIncrement;
  String? name;
}
''';

      final result = await testBuilder(
        getIsarGenerator(BuilderOptions.empty),
        {'a|lib/test_collection.dart': source},
        reader: await PackageAssetReader.currentIsolate(),
      );

      final generatedCode = result['a|lib/test_collection.g.dart']!;

      // Should contain the web-safe hash function
      expect(generatedCode,
          contains('int _webSafeHash(String input, [int seed = 0])'));
      expect(generatedCode, contains('var hash = 5381 + seed;'));
      expect(generatedCode, contains('& 0x7FFFFFFF'));
    });

    test('generates idGenerator instead of id in schema', () async {
      const source = '''
import 'package:isar/isar.dart';

@collection
class TestCollection {
  Id id = Isar.autoIncrement;
  String? name;
}
''';

      final result = await testBuilder(
        getIsarGenerator(BuilderOptions.empty),
        {'a|lib/test_collection.dart': source},
        reader: await PackageAssetReader.currentIsolate(),
      );

      final generatedCode = result['a|lib/test_collection.g.dart']!;

      // Should use idGenerator instead of id
      expect(generatedCode,
          contains('idGenerator: () => _webSafeHash(r\'TestCollection\')'));
      expect(generatedCode, isNot(contains('id: ')));
    });

    test('generates final instead of const for schema declarations', () async {
      const source = '''
import 'package:isar/isar.dart';

@collection
class TestCollection {
  Id id = Isar.autoIncrement;
  String? name;
}
''';

      final result = await testBuilder(
        getIsarGenerator(BuilderOptions.empty),
        {'a|lib/test_collection.dart': source},
        reader: await PackageAssetReader.currentIsolate(),
      );

      final generatedCode = result['a|lib/test_collection.g.dart']!;

      // Should use final instead of const
      expect(generatedCode,
          contains('final TestCollectionSchema = CollectionSchema('));
      expect(generatedCode, isNot(contains('const TestCollectionSchema')));
    });

    test('generates idGenerator for indexes', () async {
      const source = '''
import 'package:isar/isar.dart';

@collection
class TestCollection {
  Id id = Isar.autoIncrement;
  
  @Index()
  String? name;
  
  @Index(unique: true)
  String? email;
}
''';

      final result = await testBuilder(
        getIsarGenerator(BuilderOptions.empty),
        {'a|lib/test_collection.dart': source},
        reader: await PackageAssetReader.currentIsolate(),
      );

      final generatedCode = result['a|lib/test_collection.g.dart']!;

      // Should generate idGenerator for indexes
      expect(generatedCode,
          contains('idGenerator: () => _webSafeHash(r\'name\')'));
      expect(generatedCode,
          contains('idGenerator: () => _webSafeHash(r\'email\')'));
    });

    test('generates idGenerator for links', () async {
      const source = '''
import 'package:isar/isar.dart';

@collection
class User {
  Id id = Isar.autoIncrement;
  String? name;
  
  final posts = IsarLinks<Post>();
}

@collection
class Post {
  Id id = Isar.autoIncrement;
  String? title;
  
  final author = IsarLink<User>();
}
''';

      final result = await testBuilder(
        getIsarGenerator(BuilderOptions.empty),
        {
          'a|lib/user.dart': source,
        },
        reader: await PackageAssetReader.currentIsolate(),
      );

      final userCode = result['a|lib/user.g.dart']!;
      final postCode = result['a|lib/post.g.dart']!;

      // Should generate idGenerator for links
      expect(userCode, contains('idGenerator: () => _webSafeHash(r\'posts\''));
      expect(postCode, contains('idGenerator: () => _webSafeHash(r\'author\''));
    });

    test('generates embedded schema with idGenerator', () async {
      const source = '''
import 'package:isar/isar.dart';

@embedded
class Address {
  String? street;
  String? city;
}

@collection
class Person {
  Id id = Isar.autoIncrement;
  String? name;
  Address? address;
}
''';

      final result = await testBuilder(
        getIsarGenerator(BuilderOptions.empty),
        {'a|lib/person.dart': source},
        reader: await PackageAssetReader.currentIsolate(),
      );

      final generatedCode = result['a|lib/person.g.dart']!;

      // Should generate idGenerator for embedded schema
      expect(generatedCode, contains('final AddressSchema = Schema('));
      expect(generatedCode,
          contains('idGenerator: () => _webSafeHash(r\'Address\')'));
      expect(generatedCode, isNot(contains('const AddressSchema')));
    });

    test('does not generate duplicate _webSafeHash functions', () async {
      // Reset the global state before the test
      resetWebSafeHashGeneration();

      const source = '''
import 'package:isar/isar.dart';

@collection
class LocationEntity {
  LocationEntity();

  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String locationId;

  late String playerId;
  String? title;
  String? status;
  String? timezone;

  CompanyEntity? company;
  VenueEntity? venue;

  @Index()
  late DateTime cachedAt;
}

@embedded
class CompanyEntity {
  CompanyEntity();

  String? id;
  String? name;
  String? status;
  String? accountType;
}

@embedded
class VenueEntity {
  VenueEntity();

  String? name;
  String? streetAddress;
  String? timezone;
}
''';

      final result = await testBuilder(
        getIsarGenerator(BuilderOptions.empty),
        {'a|lib/location_entity.dart': source},
        reader: await PackageAssetReader.currentIsolate(),
      );

      final generatedCode = result['a|lib/location_entity.g.dart']!;

      // Count occurrences of _webSafeHash function definition
      final hashFunctionPattern = RegExp(r'int _webSafeHash\(String input, \[int seed = 0\]\)');
      final matches = hashFunctionPattern.allMatches(generatedCode);

      // Should only have one occurrence of the function
      expect(matches.length, equals(1),
          reason: 'Expected exactly one _webSafeHash function, but found ${matches.length}. Generated code:\n$generatedCode');

      // Should still contain the function
      expect(generatedCode, contains('int _webSafeHash(String input, [int seed = 0])'));

      // Should generate schemas for all entities
      expect(generatedCode, contains('final LocationEntitySchema = CollectionSchema('));
      expect(generatedCode, contains('final CompanyEntitySchema = Schema('));
      expect(generatedCode, contains('final VenueEntitySchema = Schema('));
    });

    test('handles complex collection with multiple features', () async {
      const source = '''
import 'package:isar/isar.dart';

@embedded
class Tag {
  String? name;
  int? priority;
}

@collection
class Article {
  Id id = Isar.autoIncrement;

  @Index()
  String? title;
  
  @Index(unique: true)
  String? slug;
  
  @Index(composite: [CompositeIndex('publishedAt')])
  String? category;
  
  DateTime? publishedAt;
  
  List<Tag>? tags;
  
  final author = IsarLink<User>();
  final comments = IsarLinks<Comment>();
}

@collection
class User {
  Id id = Isar.autoIncrement;
  String? name;
  
  @Backlink(to: 'author')
  final articles = IsarLinks<Article>();
}

@collection
class Comment {
  Id id = Isar.autoIncrement;
  String? content;
  
  @Backlink(to: 'comments')
  final article = IsarLink<Article>();
}
''';

      final result = await testBuilder(
        getIsarGenerator(BuilderOptions.empty),
        {'a|lib/article.dart': source},
        reader: await PackageAssetReader.currentIsolate(),
      );

      final articleCode = result['a|lib/article.g.dart']!;
      final userCode = result['a|lib/user.g.dart']!;
      final commentCode = result['a|lib/comment.g.dart']!;

      // All should contain the web-safe hash function
      expect(articleCode,
          contains('int _webSafeHash(String input, [int seed = 0])'));
      expect(
          userCode, contains('int _webSafeHash(String input, [int seed = 0])'));
      expect(commentCode,
          contains('int _webSafeHash(String input, [int seed = 0])'));

      // All should use final instead of const
      expect(articleCode, contains('final ArticleSchema = CollectionSchema('));
      expect(articleCode, contains('final TagSchema = Schema('));
      expect(userCode, contains('final UserSchema = CollectionSchema('));
      expect(commentCode, contains('final CommentSchema = CollectionSchema('));

      // Should generate idGenerator for all schemas
      expect(articleCode,
          contains('idGenerator: () => _webSafeHash(r\'Article\')'));
      expect(
          articleCode, contains('idGenerator: () => _webSafeHash(r\'Tag\')'));
      expect(userCode, contains('idGenerator: () => _webSafeHash(r\'User\')'));
      expect(commentCode,
          contains('idGenerator: () => _webSafeHash(r\'Comment\')'));

      // Should generate idGenerator for indexes
      expect(
          articleCode, contains('idGenerator: () => _webSafeHash(r\'title\')'));
      expect(
          articleCode, contains('idGenerator: () => _webSafeHash(r\'slug\')'));
      expect(articleCode, contains(
          'idGenerator: () => _webSafeHash(r\'category_publishedAt\')'));

      // Should generate idGenerator for links and backlinks
      expect(
          articleCode, contains('idGenerator: () => _webSafeHash(r\'author\''));
      expect(articleCode,
          contains('idGenerator: () => _webSafeHash(r\'comments\''));
      expect(userCode, contains('idGenerator: () => _webSafeHash(r\'author\''));
      expect(commentCode,
          contains('idGenerator: () => _webSafeHash(r\'comments\''));
    });
  });
}
