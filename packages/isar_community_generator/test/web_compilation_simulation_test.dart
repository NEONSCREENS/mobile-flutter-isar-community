import 'package:test/test.dart';
import 'package:isar_community_generator/src/collection_generator.dart';

void main() {
  group('Web Compilation Fix Tests', () {
    setUp(() {
      // Reset the web-safe hash generation state before each test
      resetWebSafeHashGeneration();
    });

    test('generateWebSafeHashFunction should generate function only once per file', () {
      const fileName = 'test_file.dart';
      
      // First call should generate the function
      final firstCall = generateWebSafeHashFunction(fileName);
      expect(firstCall, isNotEmpty);
      expect(firstCall, contains('_webSafeHash'));
      expect(firstCall, contains('Web-safe hash function'));
      
      // Second call should return empty string
      final secondCall = generateWebSafeHashFunction(fileName);
      expect(secondCall, isEmpty);
    });

    test('generateWebSafeHashFunction should generate function for different files', () {
      const fileName1 = 'test_file1.dart';
      const fileName2 = 'test_file2.dart';
      
      // Both files should get the function
      final firstFile = generateWebSafeHashFunction(fileName1);
      final secondFile = generateWebSafeHashFunction(fileName2);
      
      expect(firstFile, isNotEmpty);
      expect(secondFile, isNotEmpty);
      expect(firstFile, contains('_webSafeHash'));
      expect(secondFile, contains('_webSafeHash'));
    });

    test('resetWebSafeHashGeneration should clear the state', () {
      const fileName = 'test_file.dart';
      
      // Generate function once
      final firstCall = generateWebSafeHashFunction(fileName);
      expect(firstCall, isNotEmpty);
      
      // Second call should be empty
      final secondCall = generateWebSafeHashFunction(fileName);
      expect(secondCall, isEmpty);
      
      // Reset and try again
      resetWebSafeHashGeneration();
      final afterReset = generateWebSafeHashFunction(fileName);
      expect(afterReset, isNotEmpty);
      expect(afterReset, contains('_webSafeHash'));
    });

    test('webSafeHashFunction constant should contain valid Dart code', () {
      expect(webSafeHashFunction, contains('int _webSafeHash(String input'));
      expect(webSafeHashFunction, contains('var hash = 5381 + seed'));
      expect(webSafeHashFunction, contains('0x7FFFFFFF'));
      expect(webSafeHashFunction, contains('return hash'));
    });

    test('web-safe hash function should avoid large integer literals', () {
      // The function should use 0x7FFFFFFF instead of large literals
      // that would break JavaScript compilation
      expect(webSafeHashFunction, contains('0x7FFFFFFF'));
      expect(webSafeHashFunction, isNot(contains('9007199254740991')));
      expect(webSafeHashFunction, isNot(contains('9223372036854775807')));
    });
  });
}
