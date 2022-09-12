// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: no_leading_underscores_for_local_identifiers

part of 'meme_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetMemeModelCollection on Isar {
  IsarCollection<MemeModel> get memeModels => getCollection();
}

const MemeModelSchema = CollectionSchema(
  name: 'MemeModel',
  schema:
      '{"name":"MemeModel","idName":"id","properties":[{"name":"bottomText","type":"String"},{"name":"image","type":"String"},{"name":"name","type":"String"},{"name":"topText","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'bottomText': 0, 'image': 1, 'name': 2, 'topText': 3},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _memeModelGetId,
  setId: _memeModelSetId,
  getLinks: _memeModelGetLinks,
  attachLinks: _memeModelAttachLinks,
  serializeNative: _memeModelSerializeNative,
  deserializeNative: _memeModelDeserializeNative,
  deserializePropNative: _memeModelDeserializePropNative,
  serializeWeb: _memeModelSerializeWeb,
  deserializeWeb: _memeModelDeserializeWeb,
  deserializePropWeb: _memeModelDeserializePropWeb,
  version: 3,
);

int? _memeModelGetId(MemeModel object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _memeModelSetId(MemeModel object, int id) {
  object.id = id;
}

List<IsarLinkBase> _memeModelGetLinks(MemeModel object) {
  return [];
}

void _memeModelSerializeNative(
    IsarCollection<MemeModel> collection,
    IsarRawObject rawObj,
    MemeModel object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.bottomText;
  IsarUint8List? _bottomText;
  if (value0 != null) {
    _bottomText = IsarBinaryWriter.utf8Encoder.convert(value0);
  }
  dynamicSize += (_bottomText?.length ?? 0) as int;
  final value1 = object.image;
  final _image = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_image.length) as int;
  final value2 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_name.length) as int;
  final value3 = object.topText;
  IsarUint8List? _topText;
  if (value3 != null) {
    _topText = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_topText?.length ?? 0) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _bottomText);
  writer.writeBytes(offsets[1], _image);
  writer.writeBytes(offsets[2], _name);
  writer.writeBytes(offsets[3], _topText);
}

MemeModel _memeModelDeserializeNative(IsarCollection<MemeModel> collection,
    int id, IsarBinaryReader reader, List<int> offsets) {
  final object = MemeModel(
    bottomText: reader.readStringOrNull(offsets[0]),
    id: id,
    image: reader.readString(offsets[1]),
    name: reader.readString(offsets[2]),
    topText: reader.readStringOrNull(offsets[3]),
  );
  return object;
}

P _memeModelDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _memeModelSerializeWeb(
    IsarCollection<MemeModel> collection, MemeModel object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'bottomText', object.bottomText);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'image', object.image);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'topText', object.topText);
  return jsObj;
}

MemeModel _memeModelDeserializeWeb(
    IsarCollection<MemeModel> collection, dynamic jsObj) {
  final object = MemeModel(
    bottomText: IsarNative.jsObjectGet(jsObj, 'bottomText'),
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    image: IsarNative.jsObjectGet(jsObj, 'image') ?? '',
    name: IsarNative.jsObjectGet(jsObj, 'name') ?? '',
    topText: IsarNative.jsObjectGet(jsObj, 'topText'),
  );
  return object;
}

P _memeModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'bottomText':
      return (IsarNative.jsObjectGet(jsObj, 'bottomText')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'image':
      return (IsarNative.jsObjectGet(jsObj, 'image') ?? '') as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'topText':
      return (IsarNative.jsObjectGet(jsObj, 'topText')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _memeModelAttachLinks(IsarCollection col, int id, MemeModel object) {}

extension MemeModelQueryWhereSort
    on QueryBuilder<MemeModel, MemeModel, QWhere> {
  QueryBuilder<MemeModel, MemeModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension MemeModelQueryWhere
    on QueryBuilder<MemeModel, MemeModel, QWhereClause> {
  QueryBuilder<MemeModel, MemeModel, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<MemeModel, MemeModel, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<MemeModel, MemeModel, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<MemeModel, MemeModel, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension MemeModelQueryFilter
    on QueryBuilder<MemeModel, MemeModel, QFilterCondition> {
  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> bottomTextIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'bottomText',
      value: null,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> bottomTextEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'bottomText',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition>
      bottomTextGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'bottomText',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> bottomTextLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'bottomText',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> bottomTextBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'bottomText',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition>
      bottomTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'bottomText',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> bottomTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'bottomText',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> bottomTextContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'bottomText',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> bottomTextMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'bottomText',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> imageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'image',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> imageGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'image',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> imageLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'image',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> imageBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'image',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'image',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'image',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> imageContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'image',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> imageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'image',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> topTextIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'topText',
      value: null,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> topTextEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'topText',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> topTextGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'topText',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> topTextLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'topText',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> topTextBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'topText',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> topTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'topText',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> topTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'topText',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> topTextContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'topText',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<MemeModel, MemeModel, QAfterFilterCondition> topTextMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'topText',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension MemeModelQueryLinks
    on QueryBuilder<MemeModel, MemeModel, QFilterCondition> {}

extension MemeModelQueryWhereSortBy
    on QueryBuilder<MemeModel, MemeModel, QSortBy> {
  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> sortByBottomText() {
    return addSortByInternal('bottomText', Sort.asc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> sortByBottomTextDesc() {
    return addSortByInternal('bottomText', Sort.desc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> sortByImage() {
    return addSortByInternal('image', Sort.asc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> sortByImageDesc() {
    return addSortByInternal('image', Sort.desc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> sortByTopText() {
    return addSortByInternal('topText', Sort.asc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> sortByTopTextDesc() {
    return addSortByInternal('topText', Sort.desc);
  }
}

extension MemeModelQueryWhereSortThenBy
    on QueryBuilder<MemeModel, MemeModel, QSortThenBy> {
  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> thenByBottomText() {
    return addSortByInternal('bottomText', Sort.asc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> thenByBottomTextDesc() {
    return addSortByInternal('bottomText', Sort.desc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> thenByImage() {
    return addSortByInternal('image', Sort.asc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> thenByImageDesc() {
    return addSortByInternal('image', Sort.desc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> thenByTopText() {
    return addSortByInternal('topText', Sort.asc);
  }

  QueryBuilder<MemeModel, MemeModel, QAfterSortBy> thenByTopTextDesc() {
    return addSortByInternal('topText', Sort.desc);
  }
}

extension MemeModelQueryWhereDistinct
    on QueryBuilder<MemeModel, MemeModel, QDistinct> {
  QueryBuilder<MemeModel, MemeModel, QDistinct> distinctByBottomText(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('bottomText', caseSensitive: caseSensitive);
  }

  QueryBuilder<MemeModel, MemeModel, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<MemeModel, MemeModel, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('image', caseSensitive: caseSensitive);
  }

  QueryBuilder<MemeModel, MemeModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<MemeModel, MemeModel, QDistinct> distinctByTopText(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('topText', caseSensitive: caseSensitive);
  }
}

extension MemeModelQueryProperty
    on QueryBuilder<MemeModel, MemeModel, QQueryProperty> {
  QueryBuilder<MemeModel, String?, QQueryOperations> bottomTextProperty() {
    return addPropertyNameInternal('bottomText');
  }

  QueryBuilder<MemeModel, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<MemeModel, String, QQueryOperations> imageProperty() {
    return addPropertyNameInternal('image');
  }

  QueryBuilder<MemeModel, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<MemeModel, String?, QQueryOperations> topTextProperty() {
    return addPropertyNameInternal('topText');
  }
}
