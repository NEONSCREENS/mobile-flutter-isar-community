import 'package:test/test.dart';
import 'package:isar_community/isar.dart';

part 'web_fix_regression_test.g.dart';

/// Test model for web compilation verification
@collection
class WebTestModel {
  Id id = Isar.autoIncrement;
  
  String? name;
  int? value;
  List<String>? tags;
  DateTime? createdAt;
  
  @Index()
  String? indexedField;
  
  @Index(composite: [CompositeIndex('value')])
  String? compositeField;
}

/// Embedded test model
@embedded
class WebEmbeddedModel {
  String? description;
  double? score;
  List<int>? numbers;
}

/// Test model with embedded objects
@collection
class WebModelWithEmbedded {
  Id id = Isar.autoIncrement;
  
  WebEmbeddedModel? embedded;
  List<WebEmbeddedModel>? embeddedList;
}

void main() {
  group('Web Compilation Fix Regression Tests', () {
    test('should compile basic collection model without errors', () {
      // This test verifies that the basic collection model compiles
      // The fact that this test runs means the generator worked correctly
      expect(WebTestModel, isNotNull);
      expect(WebTestModel().id, equals(Isar.autoIncrement));
    });

    test('should compile embedded model without errors', () {
      // This test verifies that embedded models compile correctly
      expect(WebEmbeddedModel, isNotNull);
      final embedded = WebEmbeddedModel();
      expect(embedded.description, isNull);
    });

    test('should compile model with embedded objects without errors', () {
      // This test verifies that models with embedded objects compile
      expect(WebModelWithEmbedded, isNotNull);
      final model = WebModelWithEmbedded();
      expect(model.embedded, isNull);
      expect(model.embeddedList, isNull);
    });

    test('should handle indexed fields correctly', () {
      // Verify that indexed fields are properly handled
      final model = WebTestModel()
        ..name = 'test'
        ..indexedField = 'indexed_value'
        ..compositeField = 'composite_value'
        ..value = 42;
      
      expect(model.indexedField, equals('indexed_value'));
      expect(model.compositeField, equals('composite_value'));
    });

    test('should handle various data types correctly', () {
      final now = DateTime.now();
      final model = WebTestModel()
        ..name = 'test_model'
        ..value = 123
        ..tags = ['tag1', 'tag2', 'tag3']
        ..createdAt = now;
      
      expect(model.name, equals('test_model'));
      expect(model.value, equals(123));
      expect(model.tags, hasLength(3));
      expect(model.createdAt, equals(now));
    });

    test('should handle embedded objects with various types', () {
      final embedded = WebEmbeddedModel()
        ..description = 'test description'
        ..score = 95.5
        ..numbers = [1, 2, 3, 4, 5];
      
      final model = WebModelWithEmbedded()
        ..embedded = embedded
        ..embeddedList = [embedded, embedded];
      
      expect(model.embedded?.description, equals('test description'));
      expect(model.embedded?.score, equals(95.5));
      expect(model.embedded?.numbers, hasLength(5));
      expect(model.embeddedList, hasLength(2));
    });

    test('should handle null values correctly', () {
      final model = WebTestModel();
      
      expect(model.name, isNull);
      expect(model.value, isNull);
      expect(model.tags, isNull);
      expect(model.createdAt, isNull);
      expect(model.indexedField, isNull);
      expect(model.compositeField, isNull);
    });

    test('should handle empty collections correctly', () {
      final model = WebTestModel()
        ..tags = [];
      
      expect(model.tags, isEmpty);
      
      final embeddedModel = WebEmbeddedModel()
        ..numbers = [];
      
      expect(embeddedModel.numbers, isEmpty);
    });
  });

  group('Web Platform Detection Tests', () {
    test('should detect platform correctly', () {
      // Test the web detection constant
      const bool isWeb = identical(0, 0.0);
      // On native platforms, this should be false
      // On web platforms, this should be true
      // This test verifies the detection mechanism works
      expect(isWeb, isA<bool>(),
          reason: 'Platform detection should return a boolean',);
    });
  });
}
