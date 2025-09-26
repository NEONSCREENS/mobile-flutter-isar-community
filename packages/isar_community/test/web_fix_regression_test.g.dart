// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_fix_regression_test.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

/// Web-safe hash function that generates consistent IDs across platforms
/// without using large integer literals that break JavaScript compilation
int _webSafeHash(String input, [int seed = 0]) {
  // Use a simple but effective hash algorithm that works on all platforms
  // This is based on the djb2 algorithm but modified to stay within safe integer range
  var hash = 5381 + seed;
  for (var i = 0; i < input.length; i++) {
    hash = ((hash << 5) + hash + input.codeUnitAt(i)) & 0x7FFFFFFF;
  }
  return hash;
}

extension GetWebTestModelCollection on Isar {
  IsarCollection<WebTestModel> get webTestModels => this.collection();
}

const WebTestModelSchema = CollectionSchema(
  name: r'WebTestModel',
  id: 2080961305847810695,
  properties: {
    r'compositeField': PropertySchema(
      id: 0,
      name: r'compositeField',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'indexedField': PropertySchema(
      id: 2,
      name: r'indexedField',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'tags': PropertySchema(
      id: 4,
      name: r'tags',
      type: IsarType.stringList,
    ),
    r'value': PropertySchema(
      id: 5,
      name: r'value',
      type: IsarType.long,
    )
  },
  estimateSize: _webTestModelEstimateSize,
  serialize: _webTestModelSerialize,
  deserialize: _webTestModelDeserialize,
  deserializeProp: _webTestModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'indexedField': IndexSchema(
      id: -8111741181306341560,
      name: r'indexedField',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'indexedField',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'compositeField_value': IndexSchema(
      id: -2469519775859183283,
      name: r'compositeField_value',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'compositeField',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'value',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _webTestModelGetId,
  getLinks: _webTestModelGetLinks,
  attach: _webTestModelAttach,
  version: '3.3.0-dev.2',
);

int _webTestModelEstimateSize(
  WebTestModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.compositeField;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.indexedField;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.tags;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  return bytesCount;
}

void _webTestModelSerialize(
  WebTestModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.compositeField);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeString(offsets[2], object.indexedField);
  writer.writeString(offsets[3], object.name);
  writer.writeStringList(offsets[4], object.tags);
  writer.writeLong(offsets[5], object.value);
}

WebTestModel _webTestModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WebTestModel();
  object.compositeField = reader.readStringOrNull(offsets[0]);
  object.createdAt = reader.readDateTimeOrNull(offsets[1]);
  object.id = id;
  object.indexedField = reader.readStringOrNull(offsets[2]);
  object.name = reader.readStringOrNull(offsets[3]);
  object.tags = reader.readStringList(offsets[4]);
  object.value = reader.readLongOrNull(offsets[5]);
  return object;
}

P _webTestModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringList(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _webTestModelGetId(WebTestModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _webTestModelGetLinks(WebTestModel object) {
  return [];
}

void _webTestModelAttach(
    IsarCollection<dynamic> col, Id id, WebTestModel object) {
  object.id = id;
}

extension WebTestModelQueryWhereSort
    on QueryBuilder<WebTestModel, WebTestModel, QWhere> {
  QueryBuilder<WebTestModel, WebTestModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WebTestModelQueryWhere
    on QueryBuilder<WebTestModel, WebTestModel, QWhereClause> {
  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      indexedFieldIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'indexedField',
        value: [null],
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      indexedFieldIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'indexedField',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      indexedFieldEqualTo(String? indexedField) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'indexedField',
        value: [indexedField],
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      indexedFieldNotEqualTo(String? indexedField) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'indexedField',
              lower: [],
              upper: [indexedField],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'indexedField',
              lower: [indexedField],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'indexedField',
              lower: [indexedField],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'indexedField',
              lower: [],
              upper: [indexedField],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      compositeFieldIsNullAnyValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'compositeField_value',
        value: [null],
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      compositeFieldIsNotNullAnyValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'compositeField_value',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      compositeFieldEqualToAnyValue(String? compositeField) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'compositeField_value',
        value: [compositeField],
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      compositeFieldNotEqualToAnyValue(String? compositeField) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'compositeField_value',
              lower: [],
              upper: [compositeField],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'compositeField_value',
              lower: [compositeField],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'compositeField_value',
              lower: [compositeField],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'compositeField_value',
              lower: [],
              upper: [compositeField],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      compositeFieldEqualToValueIsNull(String? compositeField) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'compositeField_value',
        value: [compositeField, null],
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      compositeFieldEqualToValueIsNotNull(String? compositeField) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'compositeField_value',
        lower: [compositeField, null],
        includeLower: false,
        upper: [
          compositeField,
        ],
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      compositeFieldValueEqualTo(String? compositeField, int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'compositeField_value',
        value: [compositeField, value],
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      compositeFieldEqualToValueNotEqualTo(String? compositeField, int? value) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'compositeField_value',
              lower: [compositeField],
              upper: [compositeField, value],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'compositeField_value',
              lower: [compositeField, value],
              includeLower: false,
              upper: [compositeField],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'compositeField_value',
              lower: [compositeField, value],
              includeLower: false,
              upper: [compositeField],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'compositeField_value',
              lower: [compositeField],
              upper: [compositeField, value],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      compositeFieldEqualToValueGreaterThan(
    String? compositeField,
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'compositeField_value',
        lower: [compositeField, value],
        includeLower: include,
        upper: [compositeField],
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      compositeFieldEqualToValueLessThan(
    String? compositeField,
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'compositeField_value',
        lower: [compositeField],
        upper: [compositeField, value],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterWhereClause>
      compositeFieldEqualToValueBetween(
    String? compositeField,
    int? lowerValue,
    int? upperValue, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'compositeField_value',
        lower: [compositeField, lowerValue],
        includeLower: includeLower,
        upper: [compositeField, upperValue],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WebTestModelQueryFilter
    on QueryBuilder<WebTestModel, WebTestModel, QFilterCondition> {
  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      compositeFieldIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'compositeField',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      compositeFieldIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'compositeField',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      compositeFieldEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'compositeField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      compositeFieldGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'compositeField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      compositeFieldLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'compositeField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      compositeFieldBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'compositeField',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      compositeFieldStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'compositeField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      compositeFieldEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'compositeField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      compositeFieldContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'compositeField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      compositeFieldMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'compositeField',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      compositeFieldIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'compositeField',
        value: '',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      compositeFieldIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'compositeField',
        value: '',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      createdAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      indexedFieldIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'indexedField',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      indexedFieldIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'indexedField',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      indexedFieldEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'indexedField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      indexedFieldGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'indexedField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      indexedFieldLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'indexedField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      indexedFieldBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'indexedField',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      indexedFieldStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'indexedField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      indexedFieldEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'indexedField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      indexedFieldContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'indexedField',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      indexedFieldMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'indexedField',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      indexedFieldIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'indexedField',
        value: '',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      indexedFieldIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'indexedField',
        value: '',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> tagsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tags',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tags',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tags',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tags',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      valueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> valueEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition>
      valueGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> valueLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterFilterCondition> valueBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WebTestModelQueryObject
    on QueryBuilder<WebTestModel, WebTestModel, QFilterCondition> {}

extension WebTestModelQueryLinks
    on QueryBuilder<WebTestModel, WebTestModel, QFilterCondition> {}

extension WebTestModelQuerySortBy
    on QueryBuilder<WebTestModel, WebTestModel, QSortBy> {
  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy>
      sortByCompositeField() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compositeField', Sort.asc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy>
      sortByCompositeFieldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compositeField', Sort.desc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> sortByIndexedField() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'indexedField', Sort.asc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy>
      sortByIndexedFieldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'indexedField', Sort.desc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension WebTestModelQuerySortThenBy
    on QueryBuilder<WebTestModel, WebTestModel, QSortThenBy> {
  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy>
      thenByCompositeField() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compositeField', Sort.asc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy>
      thenByCompositeFieldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compositeField', Sort.desc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> thenByIndexedField() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'indexedField', Sort.asc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy>
      thenByIndexedFieldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'indexedField', Sort.desc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QAfterSortBy> thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension WebTestModelQueryWhereDistinct
    on QueryBuilder<WebTestModel, WebTestModel, QDistinct> {
  QueryBuilder<WebTestModel, WebTestModel, QDistinct> distinctByCompositeField(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'compositeField',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QDistinct> distinctByIndexedField(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'indexedField', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QDistinct> distinctByTags() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tags');
    });
  }

  QueryBuilder<WebTestModel, WebTestModel, QDistinct> distinctByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'value');
    });
  }
}

extension WebTestModelQueryProperty
    on QueryBuilder<WebTestModel, WebTestModel, QQueryProperty> {
  QueryBuilder<WebTestModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WebTestModel, String?, QQueryOperations>
      compositeFieldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'compositeField');
    });
  }

  QueryBuilder<WebTestModel, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<WebTestModel, String?, QQueryOperations> indexedFieldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'indexedField');
    });
  }

  QueryBuilder<WebTestModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<WebTestModel, List<String>?, QQueryOperations> tagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tags');
    });
  }

  QueryBuilder<WebTestModel, int?, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWebModelWithEmbeddedCollection on Isar {
  IsarCollection<WebModelWithEmbedded> get webModelWithEmbeddeds =>
      this.collection();
}

const WebModelWithEmbeddedSchema = CollectionSchema(
  name: r'WebModelWithEmbedded',
  id: -3316063901250208130,
  properties: {
    r'embedded': PropertySchema(
      id: 0,
      name: r'embedded',
      type: IsarType.object,
      target: r'WebEmbeddedModel',
    ),
    r'embeddedList': PropertySchema(
      id: 1,
      name: r'embeddedList',
      type: IsarType.objectList,
      target: r'WebEmbeddedModel',
    )
  },
  estimateSize: _webModelWithEmbeddedEstimateSize,
  serialize: _webModelWithEmbeddedSerialize,
  deserialize: _webModelWithEmbeddedDeserialize,
  deserializeProp: _webModelWithEmbeddedDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'WebEmbeddedModel': WebEmbeddedModelSchema},
  getId: _webModelWithEmbeddedGetId,
  getLinks: _webModelWithEmbeddedGetLinks,
  attach: _webModelWithEmbeddedAttach,
  version: '3.3.0-dev.2',
);

int _webModelWithEmbeddedEstimateSize(
  WebModelWithEmbedded object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.embedded;
    if (value != null) {
      bytesCount += 3 +
          WebEmbeddedModelSchema.estimateSize(
              value, allOffsets[WebEmbeddedModel]!, allOffsets);
    }
  }
  {
    final list = object.embeddedList;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[WebEmbeddedModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              WebEmbeddedModelSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _webModelWithEmbeddedSerialize(
  WebModelWithEmbedded object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<WebEmbeddedModel>(
    offsets[0],
    allOffsets,
    WebEmbeddedModelSchema.serialize,
    object.embedded,
  );
  writer.writeObjectList<WebEmbeddedModel>(
    offsets[1],
    allOffsets,
    WebEmbeddedModelSchema.serialize,
    object.embeddedList,
  );
}

WebModelWithEmbedded _webModelWithEmbeddedDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WebModelWithEmbedded();
  object.embedded = reader.readObjectOrNull<WebEmbeddedModel>(
    offsets[0],
    WebEmbeddedModelSchema.deserialize,
    allOffsets,
  );
  object.embeddedList = reader.readObjectList<WebEmbeddedModel>(
    offsets[1],
    WebEmbeddedModelSchema.deserialize,
    allOffsets,
    WebEmbeddedModel(),
  );
  object.id = id;
  return object;
}

P _webModelWithEmbeddedDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<WebEmbeddedModel>(
        offset,
        WebEmbeddedModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectList<WebEmbeddedModel>(
        offset,
        WebEmbeddedModelSchema.deserialize,
        allOffsets,
        WebEmbeddedModel(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _webModelWithEmbeddedGetId(WebModelWithEmbedded object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _webModelWithEmbeddedGetLinks(
    WebModelWithEmbedded object) {
  return [];
}

void _webModelWithEmbeddedAttach(
    IsarCollection<dynamic> col, Id id, WebModelWithEmbedded object) {
  object.id = id;
}

extension WebModelWithEmbeddedQueryWhereSort
    on QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded, QWhere> {
  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WebModelWithEmbeddedQueryWhere
    on QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded, QWhereClause> {
  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WebModelWithEmbeddedQueryFilter on QueryBuilder<WebModelWithEmbedded,
    WebModelWithEmbedded, QFilterCondition> {
  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> embeddedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'embedded',
      ));
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> embeddedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'embedded',
      ));
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> embeddedListIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'embeddedList',
      ));
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> embeddedListIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'embeddedList',
      ));
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> embeddedListLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'embeddedList',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> embeddedListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'embeddedList',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> embeddedListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'embeddedList',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> embeddedListLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'embeddedList',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> embeddedListLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'embeddedList',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> embeddedListLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'embeddedList',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WebModelWithEmbeddedQueryObject on QueryBuilder<WebModelWithEmbedded,
    WebModelWithEmbedded, QFilterCondition> {
  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
      QAfterFilterCondition> embedded(FilterQuery<WebEmbeddedModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'embedded');
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded,
          QAfterFilterCondition>
      embeddedListElement(FilterQuery<WebEmbeddedModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'embeddedList');
    });
  }
}

extension WebModelWithEmbeddedQueryLinks on QueryBuilder<WebModelWithEmbedded,
    WebModelWithEmbedded, QFilterCondition> {}

extension WebModelWithEmbeddedQuerySortBy
    on QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded, QSortBy> {}

extension WebModelWithEmbeddedQuerySortThenBy
    on QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded, QSortThenBy> {
  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension WebModelWithEmbeddedQueryWhereDistinct
    on QueryBuilder<WebModelWithEmbedded, WebModelWithEmbedded, QDistinct> {}

extension WebModelWithEmbeddedQueryProperty on QueryBuilder<
    WebModelWithEmbedded, WebModelWithEmbedded, QQueryProperty> {
  QueryBuilder<WebModelWithEmbedded, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WebModelWithEmbedded, WebEmbeddedModel?, QQueryOperations>
      embeddedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'embedded');
    });
  }

  QueryBuilder<WebModelWithEmbedded, List<WebEmbeddedModel>?, QQueryOperations>
      embeddedListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'embeddedList');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const WebEmbeddedModelSchema = Schema(
  name: r'WebEmbeddedModel',
  id: -2484017912133448861,
  properties: {
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.string,
    ),
    r'numbers': PropertySchema(
      id: 1,
      name: r'numbers',
      type: IsarType.longList,
    ),
    r'score': PropertySchema(
      id: 2,
      name: r'score',
      type: IsarType.double,
    )
  },
  estimateSize: _webEmbeddedModelEstimateSize,
  serialize: _webEmbeddedModelSerialize,
  deserialize: _webEmbeddedModelDeserialize,
  deserializeProp: _webEmbeddedModelDeserializeProp,
);

int _webEmbeddedModelEstimateSize(
  WebEmbeddedModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.numbers;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  return bytesCount;
}

void _webEmbeddedModelSerialize(
  WebEmbeddedModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.description);
  writer.writeLongList(offsets[1], object.numbers);
  writer.writeDouble(offsets[2], object.score);
}

WebEmbeddedModel _webEmbeddedModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WebEmbeddedModel();
  object.description = reader.readStringOrNull(offsets[0]);
  object.numbers = reader.readLongList(offsets[1]);
  object.score = reader.readDoubleOrNull(offsets[2]);
  return object;
}

P _webEmbeddedModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongList(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension WebEmbeddedModelQueryFilter
    on QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QFilterCondition> {
  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      numbersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'numbers',
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      numbersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'numbers',
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      numbersElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numbers',
        value: value,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      numbersElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numbers',
        value: value,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      numbersElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numbers',
        value: value,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      numbersElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numbers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      numbersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'numbers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      numbersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'numbers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      numbersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'numbers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      numbersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'numbers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      numbersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'numbers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      numbersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'numbers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      scoreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'score',
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      scoreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'score',
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      scoreEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'score',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      scoreGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'score',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      scoreLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'score',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QAfterFilterCondition>
      scoreBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'score',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension WebEmbeddedModelQueryObject
    on QueryBuilder<WebEmbeddedModel, WebEmbeddedModel, QFilterCondition> {}
