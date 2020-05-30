// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer$Fuel
    _$CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer$FuelFromJson(
        Map<String, dynamic> json) {
  return CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer$Fuel()
    ..dateCreated =
        fromGraphQLDateTimeToDartDateTime(json['dateCreated'] as String)
    ..dateDeleted =
        fromGraphQLDateTimeToDartDateTime(json['dateDeleted'] as String)
    ..densityAt15CKGLTR = (json['densityAt15CKGLTR'] as num)?.toDouble()
    ..grade = (json['grade'] as num)?.toDouble()
    ..id = json['id'] as String
    ..lowerCalorificValueMJKG =
        (json['lowerCalorificValueMJKG'] as num)?.toDouble()
    ..status = _$enumDecodeNullable(_$FuelDeletionStatusEnumMap, json['status'],
        unknownValue: FuelDeletionStatus.artemisUnknown)
    ..sulphurPercent = (json['sulphurPercent'] as num)?.toDouble()
    ..temperatureC = (json['temperatureC'] as num)?.toDouble()
    ..type = _$enumDecodeNullable(_$FuelTypeEnumMap, json['type'],
        unknownValue: FuelType.artemisUnknown)
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer$FuelToJson(
            CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer$Fuel
                instance) =>
        <String, dynamic>{
          'dateCreated':
              fromDartDateTimeToGraphQLDateTime(instance.dateCreated),
          'dateDeleted':
              fromDartDateTimeToGraphQLDateTime(instance.dateDeleted),
          'densityAt15CKGLTR': instance.densityAt15CKGLTR,
          'grade': instance.grade,
          'id': instance.id,
          'lowerCalorificValueMJKG': instance.lowerCalorificValueMJKG,
          'status': _$FuelDeletionStatusEnumMap[instance.status],
          'sulphurPercent': instance.sulphurPercent,
          'temperatureC': instance.temperatureC,
          'type': _$FuelTypeEnumMap[instance.type],
          '__typename': instance.$$typename,
        };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$FuelDeletionStatusEnumMap = {
  FuelDeletionStatus.active: 'active',
  FuelDeletionStatus.deleted: 'deleted',
  FuelDeletionStatus.unknown: 'unknown',
  FuelDeletionStatus.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$FuelTypeEnumMap = {
  FuelType.hsfo: 'HSFO',
  FuelType.mdo: 'MDO',
  FuelType.mgo: 'MGO',
  FuelType.ulsfo: 'ULSFO',
  FuelType.vlsfo: 'VLSFO',
  FuelType.unknown: 'unknown',
  FuelType.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer
    _$CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumerFromJson(
        Map<String, dynamic> json) {
  return CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer()
    ..consumer = _$enumDecodeNullable(_$FuelConsumerEnumMap, json['consumer'],
        unknownValue: FuelConsumer.artemisUnknown)
    ..fuel = json['fuel'] == null
        ? null
        : CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer$Fuel.fromJson(
            json['fuel'] as Map<String, dynamic>)
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic>
    _$CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumerToJson(
            CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer instance) =>
        <String, dynamic>{
          'consumer': _$FuelConsumerEnumMap[instance.consumer],
          'fuel': instance.fuel?.toJson(),
          '__typename': instance.$$typename,
        };

const _$FuelConsumerEnumMap = {
  FuelConsumer.auxiliaryEngine: 'AuxiliaryEngine',
  FuelConsumer.boiler: 'Boiler',
  FuelConsumer.mainEngine: 'MainEngine',
  FuelConsumer.unknown: 'unknown',
  FuelConsumer.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

CurrentFuelsByConsumerData$Query$Fuels
    _$CurrentFuelsByConsumerData$Query$FuelsFromJson(
        Map<String, dynamic> json) {
  return CurrentFuelsByConsumerData$Query$Fuels()
    ..totalCount = json['totalCount'] as int
    ..fuels = (json['fuels'] as List)
        ?.map((e) => e == null
            ? null
            : FuelListMixin$Fuels.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic> _$CurrentFuelsByConsumerData$Query$FuelsToJson(
        CurrentFuelsByConsumerData$Query$Fuels instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'fuels': instance.fuels?.map((e) => e?.toJson())?.toList(),
      '__typename': instance.$$typename,
    };

CurrentFuelsByConsumerData$Query _$CurrentFuelsByConsumerData$QueryFromJson(
    Map<String, dynamic> json) {
  return CurrentFuelsByConsumerData$Query()
    ..currentFuelsByConsumer = (json['currentFuelsByConsumer'] as List)
        ?.map((e) => e == null
            ? null
            : CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..fuels = json['fuels'] == null
        ? null
        : CurrentFuelsByConsumerData$Query$Fuels.fromJson(
            json['fuels'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CurrentFuelsByConsumerData$QueryToJson(
        CurrentFuelsByConsumerData$Query instance) =>
    <String, dynamic>{
      'currentFuelsByConsumer':
          instance.currentFuelsByConsumer?.map((e) => e?.toJson())?.toList(),
      'fuels': instance.fuels?.toJson(),
    };

FuelListMixin$Fuels _$FuelListMixin$FuelsFromJson(Map<String, dynamic> json) {
  return FuelListMixin$Fuels()
    ..dateCreated =
        fromGraphQLDateTimeToDartDateTime(json['dateCreated'] as String)
    ..dateDeleted =
        fromGraphQLDateTimeToDartDateTime(json['dateDeleted'] as String)
    ..densityAt15CKGLTR = (json['densityAt15CKGLTR'] as num)?.toDouble()
    ..grade = (json['grade'] as num)?.toDouble()
    ..id = json['id'] as String
    ..lowerCalorificValueMJKG =
        (json['lowerCalorificValueMJKG'] as num)?.toDouble()
    ..status = _$enumDecodeNullable(_$FuelDeletionStatusEnumMap, json['status'],
        unknownValue: FuelDeletionStatus.artemisUnknown)
    ..sulphurPercent = (json['sulphurPercent'] as num)?.toDouble()
    ..temperatureC = (json['temperatureC'] as num)?.toDouble()
    ..type = _$enumDecodeNullable(_$FuelTypeEnumMap, json['type'],
        unknownValue: FuelType.artemisUnknown)
    ..$$typename = json['__typename'] as String;
}

Map<String, dynamic> _$FuelListMixin$FuelsToJson(
        FuelListMixin$Fuels instance) =>
    <String, dynamic>{
      'dateCreated': fromDartDateTimeToGraphQLDateTime(instance.dateCreated),
      'dateDeleted': fromDartDateTimeToGraphQLDateTime(instance.dateDeleted),
      'densityAt15CKGLTR': instance.densityAt15CKGLTR,
      'grade': instance.grade,
      'id': instance.id,
      'lowerCalorificValueMJKG': instance.lowerCalorificValueMJKG,
      'status': _$FuelDeletionStatusEnumMap[instance.status],
      'sulphurPercent': instance.sulphurPercent,
      'temperatureC': instance.temperatureC,
      'type': _$FuelTypeEnumMap[instance.type],
      '__typename': instance.$$typename,
    };

PaginationInput _$PaginationInputFromJson(Map<String, dynamic> json) {
  return PaginationInput(
    limit: json['limit'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$PaginationInputToJson(PaginationInput instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
    };

DeleteFuel$Mutation _$DeleteFuel$MutationFromJson(Map<String, dynamic> json) {
  return DeleteFuel$Mutation()..deleteFuel = json['deleteFuel'] as String;
}

Map<String, dynamic> _$DeleteFuel$MutationToJson(
        DeleteFuel$Mutation instance) =>
    <String, dynamic>{
      'deleteFuel': instance.deleteFuel,
    };

CurrentFuelsByConsumerDataArguments
    _$CurrentFuelsByConsumerDataArgumentsFromJson(Map<String, dynamic> json) {
  return CurrentFuelsByConsumerDataArguments(
    pagination: json['pagination'] == null
        ? null
        : PaginationInput.fromJson(json['pagination'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CurrentFuelsByConsumerDataArgumentsToJson(
        CurrentFuelsByConsumerDataArguments instance) =>
    <String, dynamic>{
      'pagination': instance.pagination?.toJson(),
    };

DeleteFuelArguments _$DeleteFuelArgumentsFromJson(Map<String, dynamic> json) {
  return DeleteFuelArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$DeleteFuelArgumentsToJson(
        DeleteFuelArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
