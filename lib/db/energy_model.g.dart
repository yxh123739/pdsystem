// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'energy_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEnergyModelCollection on Isar {
  IsarCollection<EnergyModel> get energyModels => this.collection();
}

const EnergyModelSchema = CollectionSchema(
  name: r'EnergyModel',
  id: 8738953482973370484,
  properties: {
    r'circuitName': PropertySchema(
      id: 0,
      name: r'circuitName',
      type: IsarType.string,
    ),
    r'collectTime': PropertySchema(
      id: 1,
      name: r'collectTime',
      type: IsarType.dateTime,
    ),
    r'epi': PropertySchema(
      id: 2,
      name: r'epi',
      type: IsarType.double,
    ),
    r'humidity': PropertySchema(
      id: 3,
      name: r'humidity',
      type: IsarType.double,
    ),
    r'ia': PropertySchema(
      id: 4,
      name: r'ia',
      type: IsarType.double,
    ),
    r'ib': PropertySchema(
      id: 5,
      name: r'ib',
      type: IsarType.double,
    ),
    r'ic': PropertySchema(
      id: 6,
      name: r'ic',
      type: IsarType.double,
    ),
    r'p': PropertySchema(
      id: 7,
      name: r'p',
      type: IsarType.double,
    ),
    r'pf': PropertySchema(
      id: 8,
      name: r'pf',
      type: IsarType.double,
    ),
    r'q': PropertySchema(
      id: 9,
      name: r'q',
      type: IsarType.double,
    ),
    r'temperature': PropertySchema(
      id: 10,
      name: r'temperature',
      type: IsarType.double,
    ),
    r'ua': PropertySchema(
      id: 11,
      name: r'ua',
      type: IsarType.double,
    ),
    r'uab': PropertySchema(
      id: 12,
      name: r'uab',
      type: IsarType.double,
    ),
    r'ub': PropertySchema(
      id: 13,
      name: r'ub',
      type: IsarType.double,
    ),
    r'ubc': PropertySchema(
      id: 14,
      name: r'ubc',
      type: IsarType.double,
    ),
    r'uc': PropertySchema(
      id: 15,
      name: r'uc',
      type: IsarType.double,
    ),
    r'uca': PropertySchema(
      id: 16,
      name: r'uca',
      type: IsarType.double,
    )
  },
  estimateSize: _energyModelEstimateSize,
  serialize: _energyModelSerialize,
  deserialize: _energyModelDeserialize,
  deserializeProp: _energyModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _energyModelGetId,
  getLinks: _energyModelGetLinks,
  attach: _energyModelAttach,
  version: '3.1.0+1',
);

int _energyModelEstimateSize(
  EnergyModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.circuitName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _energyModelSerialize(
  EnergyModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.circuitName);
  writer.writeDateTime(offsets[1], object.collectTime);
  writer.writeDouble(offsets[2], object.epi);
  writer.writeDouble(offsets[3], object.humidity);
  writer.writeDouble(offsets[4], object.ia);
  writer.writeDouble(offsets[5], object.ib);
  writer.writeDouble(offsets[6], object.ic);
  writer.writeDouble(offsets[7], object.p);
  writer.writeDouble(offsets[8], object.pf);
  writer.writeDouble(offsets[9], object.q);
  writer.writeDouble(offsets[10], object.temperature);
  writer.writeDouble(offsets[11], object.ua);
  writer.writeDouble(offsets[12], object.uab);
  writer.writeDouble(offsets[13], object.ub);
  writer.writeDouble(offsets[14], object.ubc);
  writer.writeDouble(offsets[15], object.uc);
  writer.writeDouble(offsets[16], object.uca);
}

EnergyModel _energyModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EnergyModel();
  object.circuitName = reader.readStringOrNull(offsets[0]);
  object.collectTime = reader.readDateTimeOrNull(offsets[1]);
  object.epi = reader.readDoubleOrNull(offsets[2]);
  object.humidity = reader.readDoubleOrNull(offsets[3]);
  object.ia = reader.readDoubleOrNull(offsets[4]);
  object.ib = reader.readDoubleOrNull(offsets[5]);
  object.ic = reader.readDoubleOrNull(offsets[6]);
  object.id = id;
  object.p = reader.readDoubleOrNull(offsets[7]);
  object.pf = reader.readDoubleOrNull(offsets[8]);
  object.q = reader.readDoubleOrNull(offsets[9]);
  object.temperature = reader.readDoubleOrNull(offsets[10]);
  object.ua = reader.readDoubleOrNull(offsets[11]);
  object.uab = reader.readDoubleOrNull(offsets[12]);
  object.ub = reader.readDoubleOrNull(offsets[13]);
  object.ubc = reader.readDoubleOrNull(offsets[14]);
  object.uc = reader.readDoubleOrNull(offsets[15]);
  object.uca = reader.readDoubleOrNull(offsets[16]);
  return object;
}

P _energyModelDeserializeProp<P>(
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
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readDoubleOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    case 13:
      return (reader.readDoubleOrNull(offset)) as P;
    case 14:
      return (reader.readDoubleOrNull(offset)) as P;
    case 15:
      return (reader.readDoubleOrNull(offset)) as P;
    case 16:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _energyModelGetId(EnergyModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _energyModelGetLinks(EnergyModel object) {
  return [];
}

void _energyModelAttach(
    IsarCollection<dynamic> col, Id id, EnergyModel object) {
  object.id = id;
}

extension EnergyModelQueryWhereSort
    on QueryBuilder<EnergyModel, EnergyModel, QWhere> {
  QueryBuilder<EnergyModel, EnergyModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EnergyModelQueryWhere
    on QueryBuilder<EnergyModel, EnergyModel, QWhereClause> {
  QueryBuilder<EnergyModel, EnergyModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<EnergyModel, EnergyModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterWhereClause> idBetween(
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

extension EnergyModelQueryFilter
    on QueryBuilder<EnergyModel, EnergyModel, QFilterCondition> {
  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      circuitNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'circuitName',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      circuitNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'circuitName',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      circuitNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'circuitName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      circuitNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'circuitName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      circuitNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'circuitName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      circuitNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'circuitName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      circuitNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'circuitName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      circuitNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'circuitName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      circuitNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'circuitName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      circuitNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'circuitName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      circuitNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'circuitName',
        value: '',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      circuitNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'circuitName',
        value: '',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      collectTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'collectTime',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      collectTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'collectTime',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      collectTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'collectTime',
        value: value,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      collectTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'collectTime',
        value: value,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      collectTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'collectTime',
        value: value,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      collectTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'collectTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> epiIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'epi',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> epiIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'epi',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> epiEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'epi',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> epiGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'epi',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> epiLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'epi',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> epiBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'epi',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      humidityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'humidity',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      humidityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'humidity',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> humidityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'humidity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      humidityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'humidity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      humidityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'humidity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> humidityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'humidity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> iaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ia',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> iaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ia',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> iaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ia',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> iaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ia',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> iaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ia',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> iaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ibIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ib',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ibIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ib',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ibEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ib',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ibGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ib',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ibLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ib',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ibBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ib',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> icIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ic',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> icIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ic',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> icEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ic',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> icGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ic',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> icLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ic',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> icBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ic',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> pIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'p',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> pIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'p',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> pEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'p',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> pGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'p',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> pLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'p',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> pBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'p',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> pfIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pf',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> pfIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pf',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> pfEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pf',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> pfGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pf',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> pfLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pf',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> pfBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pf',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> qIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'q',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> qIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'q',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> qEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'q',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> qGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'q',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> qLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'q',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> qBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'q',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      temperatureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'temperature',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      temperatureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'temperature',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      temperatureEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      temperatureGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      temperatureLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition>
      temperatureBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperature',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> uaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ua',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> uaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ua',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> uaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ua',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> uaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ua',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> uaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ua',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> uaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ua',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> uabIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uab',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> uabIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uab',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> uabEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uab',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> uabGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uab',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> uabLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uab',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> uabBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uab',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ubIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ub',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ubIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ub',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ubEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ub',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ubGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ub',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ubLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ub',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ubBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ub',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ubcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ubc',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ubcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ubc',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ubcEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ubc',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ubcGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ubc',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ubcLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ubc',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ubcBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ubc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ucIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uc',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ucIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uc',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ucEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uc',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ucGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uc',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ucLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uc',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ucBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ucaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uca',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ucaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uca',
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ucaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uca',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ucaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uca',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ucaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uca',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterFilterCondition> ucaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uca',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension EnergyModelQueryObject
    on QueryBuilder<EnergyModel, EnergyModel, QFilterCondition> {}

extension EnergyModelQueryLinks
    on QueryBuilder<EnergyModel, EnergyModel, QFilterCondition> {}

extension EnergyModelQuerySortBy
    on QueryBuilder<EnergyModel, EnergyModel, QSortBy> {
  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByCircuitName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'circuitName', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByCircuitNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'circuitName', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByCollectTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectTime', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByCollectTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectTime', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByEpi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epi', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByEpiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epi', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByHumidityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByIa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ia', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByIaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ia', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByIb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ib', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByIbDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ib', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByIc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ic', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByIcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ic', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'p', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'p', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByPf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pf', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByPfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pf', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByQ() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'q', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByQDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'q', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByTemperatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByUa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ua', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByUaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ua', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByUab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uab', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByUabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uab', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByUb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ub', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByUbDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ub', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByUbc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubc', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByUbcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubc', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByUc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uc', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByUcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uc', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByUca() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uca', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> sortByUcaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uca', Sort.desc);
    });
  }
}

extension EnergyModelQuerySortThenBy
    on QueryBuilder<EnergyModel, EnergyModel, QSortThenBy> {
  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByCircuitName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'circuitName', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByCircuitNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'circuitName', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByCollectTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectTime', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByCollectTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectTime', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByEpi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epi', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByEpiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'epi', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByHumidityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'humidity', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByIa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ia', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByIaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ia', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByIb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ib', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByIbDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ib', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByIc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ic', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByIcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ic', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByP() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'p', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByPDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'p', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByPf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pf', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByPfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pf', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByQ() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'q', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByQDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'q', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByTemperatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByUa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ua', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByUaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ua', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByUab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uab', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByUabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uab', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByUb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ub', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByUbDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ub', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByUbc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubc', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByUbcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ubc', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByUc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uc', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByUcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uc', Sort.desc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByUca() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uca', Sort.asc);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QAfterSortBy> thenByUcaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uca', Sort.desc);
    });
  }
}

extension EnergyModelQueryWhereDistinct
    on QueryBuilder<EnergyModel, EnergyModel, QDistinct> {
  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByCircuitName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'circuitName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByCollectTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'collectTime');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByEpi() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'epi');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByHumidity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'humidity');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByIa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ia');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByIb() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ib');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByIc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ic');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByP() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'p');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByPf() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pf');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByQ() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'q');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'temperature');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByUa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ua');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByUab() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uab');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByUb() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ub');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByUbc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ubc');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByUc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uc');
    });
  }

  QueryBuilder<EnergyModel, EnergyModel, QDistinct> distinctByUca() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uca');
    });
  }
}

extension EnergyModelQueryProperty
    on QueryBuilder<EnergyModel, EnergyModel, QQueryProperty> {
  QueryBuilder<EnergyModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<EnergyModel, String?, QQueryOperations> circuitNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'circuitName');
    });
  }

  QueryBuilder<EnergyModel, DateTime?, QQueryOperations> collectTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'collectTime');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> epiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'epi');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> humidityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'humidity');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> iaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ia');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> ibProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ib');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> icProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ic');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> pProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'p');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> pfProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pf');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> qProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'q');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> temperatureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'temperature');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> uaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ua');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> uabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uab');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> ubProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ub');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> ubcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ubc');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> ucProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uc');
    });
  }

  QueryBuilder<EnergyModel, double?, QQueryOperations> ucaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uca');
    });
  }
}
