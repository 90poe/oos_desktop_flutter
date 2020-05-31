// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:oosdesktopflutter/helpers/artemis.dart';
part 'graphql_api.graphql.g.dart';

mixin FuelMixin {
  @JsonKey(
    fromJson: fromGraphQLDateTimeToDartDateTime,
    toJson: fromDartDateTimeToGraphQLDateTime,
  )
  DateTime dateCreated;
  @JsonKey(
    fromJson: fromGraphQLDateTimeToDartDateTime,
    toJson: fromDartDateTimeToGraphQLDateTime,
  )
  DateTime dateDeleted;
  double densityAt15CKGLTR;
  double grade;
  String id;
  double lowerCalorificValueMJKG;
  @JsonKey(unknownEnumValue: FuelDeletionStatus.artemisUnknown)
  FuelDeletionStatus status;
  double sulphurPercent;
  double temperatureC;
  @JsonKey(unknownEnumValue: FuelType.artemisUnknown)
  FuelType type;
  @override
  @JsonKey(name: '__typename')
  String $$typename;
}
mixin FuelListMixin {
  int totalCount;
  List<FuelListMixin$Fuels> fuels;
  @override
  @JsonKey(name: '__typename')
  String $$typename;
}

@JsonSerializable(explicitToJson: true)
class CreateFuel$Mutation$CreateFuel with EquatableMixin, FuelMixin {
  CreateFuel$Mutation$CreateFuel();

  factory CreateFuel$Mutation$CreateFuel.fromJson(Map<String, dynamic> json) =>
      _$CreateFuel$Mutation$CreateFuelFromJson(json);

  @override
  List<Object> get props => [
        dateCreated,
        dateDeleted,
        densityAt15CKGLTR,
        grade,
        id,
        lowerCalorificValueMJKG,
        status,
        sulphurPercent,
        temperatureC,
        type,
        $$typename
      ];
  Map<String, dynamic> toJson() => _$CreateFuel$Mutation$CreateFuelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateFuel$Mutation with EquatableMixin {
  CreateFuel$Mutation();

  factory CreateFuel$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateFuel$MutationFromJson(json);

  CreateFuel$Mutation$CreateFuel createFuel;

  @override
  List<Object> get props => [createFuel];
  Map<String, dynamic> toJson() => _$CreateFuel$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FuelInput with EquatableMixin {
  FuelInput(
      {@required this.densityAt15CKGLTR,
      @required this.grade,
      @required this.lowerCalorificValueMJKG,
      @required this.sulphurPercent,
      @required this.temperatureC,
      @required this.type});

  factory FuelInput.fromJson(Map<String, dynamic> json) =>
      _$FuelInputFromJson(json);

  double densityAt15CKGLTR;

  double grade;

  double lowerCalorificValueMJKG;

  double sulphurPercent;

  double temperatureC;

  @JsonKey(unknownEnumValue: FuelType.artemisUnknown)
  FuelType type;

  @override
  List<Object> get props => [
        densityAt15CKGLTR,
        grade,
        lowerCalorificValueMJKG,
        sulphurPercent,
        temperatureC,
        type
      ];
  Map<String, dynamic> toJson() => _$FuelInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer$Fuel
    with EquatableMixin, FuelMixin {
  CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer$Fuel();

  factory CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer$Fuel.fromJson(
          Map<String, dynamic> json) =>
      _$CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer$FuelFromJson(
          json);

  @override
  List<Object> get props => [
        dateCreated,
        dateDeleted,
        densityAt15CKGLTR,
        grade,
        id,
        lowerCalorificValueMJKG,
        status,
        sulphurPercent,
        temperatureC,
        type,
        $$typename
      ];
  Map<String, dynamic> toJson() =>
      _$CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer$FuelToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer
    with EquatableMixin {
  CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer();

  factory CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer.fromJson(
          Map<String, dynamic> json) =>
      _$CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumerFromJson(json);

  @JsonKey(unknownEnumValue: FuelConsumer.artemisUnknown)
  FuelConsumer consumer;

  CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer$Fuel fuel;

  @override
  @JsonKey(name: '__typename')
  String $$typename;

  @override
  List<Object> get props => [consumer, fuel, $$typename];
  Map<String, dynamic> toJson() =>
      _$CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CurrentFuelsByConsumerData$Query$Fuels
    with EquatableMixin, FuelListMixin {
  CurrentFuelsByConsumerData$Query$Fuels();

  factory CurrentFuelsByConsumerData$Query$Fuels.fromJson(
          Map<String, dynamic> json) =>
      _$CurrentFuelsByConsumerData$Query$FuelsFromJson(json);

  @override
  @JsonKey(name: '__typename')
  String $$typename;

  @override
  List<Object> get props => [totalCount, fuels, $$typename, $$typename];
  Map<String, dynamic> toJson() =>
      _$CurrentFuelsByConsumerData$Query$FuelsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CurrentFuelsByConsumerData$Query with EquatableMixin {
  CurrentFuelsByConsumerData$Query();

  factory CurrentFuelsByConsumerData$Query.fromJson(
          Map<String, dynamic> json) =>
      _$CurrentFuelsByConsumerData$QueryFromJson(json);

  List<CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer>
      currentFuelsByConsumer;

  CurrentFuelsByConsumerData$Query$Fuels fuels;

  @override
  List<Object> get props => [currentFuelsByConsumer, fuels];
  Map<String, dynamic> toJson() =>
      _$CurrentFuelsByConsumerData$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FuelListMixin$Fuels with EquatableMixin, FuelMixin {
  FuelListMixin$Fuels();

  factory FuelListMixin$Fuels.fromJson(Map<String, dynamic> json) =>
      _$FuelListMixin$FuelsFromJson(json);

  @override
  List<Object> get props => [
        dateCreated,
        dateDeleted,
        densityAt15CKGLTR,
        grade,
        id,
        lowerCalorificValueMJKG,
        status,
        sulphurPercent,
        temperatureC,
        type,
        $$typename
      ];
  Map<String, dynamic> toJson() => _$FuelListMixin$FuelsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginationInput with EquatableMixin {
  PaginationInput({@required this.limit, @required this.offset});

  factory PaginationInput.fromJson(Map<String, dynamic> json) =>
      _$PaginationInputFromJson(json);

  int limit;

  int offset;

  @override
  List<Object> get props => [limit, offset];
  Map<String, dynamic> toJson() => _$PaginationInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteFuel$Mutation with EquatableMixin {
  DeleteFuel$Mutation();

  factory DeleteFuel$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeleteFuel$MutationFromJson(json);

  String deleteFuel;

  @override
  List<Object> get props => [deleteFuel];
  Map<String, dynamic> toJson() => _$DeleteFuel$MutationToJson(this);
}

enum FuelDeletionStatus {
  @JsonValue("active")
  active,
  @JsonValue("deleted")
  deleted,
  @JsonValue("unknown")
  unknown,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum FuelType {
  @JsonValue("HSFO")
  hsfo,
  @JsonValue("MDO")
  mdo,
  @JsonValue("MGO")
  mgo,
  @JsonValue("ULSFO")
  ulsfo,
  @JsonValue("VLSFO")
  vlsfo,
  @JsonValue("unknown")
  unknown,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}
enum FuelConsumer {
  @JsonValue("AuxiliaryEngine")
  auxiliaryEngine,
  @JsonValue("Boiler")
  boiler,
  @JsonValue("MainEngine")
  mainEngine,
  @JsonValue("unknown")
  unknown,
  @JsonValue("ARTEMIS_UNKNOWN")
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class CreateFuelArguments extends JsonSerializable with EquatableMixin {
  CreateFuelArguments({@required this.fuelData});

  factory CreateFuelArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateFuelArgumentsFromJson(json);

  final FuelInput fuelData;

  @override
  List<Object> get props => [fuelData];
  Map<String, dynamic> toJson() => _$CreateFuelArgumentsToJson(this);
}

class CreateFuelMutation
    extends GraphQLQuery<CreateFuel$Mutation, CreateFuelArguments> {
  CreateFuelMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'createFuel'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'fuelData')),
              type: NamedTypeNode(
                  name: NameNode(value: 'FuelInput'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'createFuel'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'fuelData'),
                    value: VariableNode(name: NameNode(value: 'fuelData')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'Fuel'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'Fuel'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(name: NameNode(value: 'Fuel'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'dateCreated'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'dateDeleted'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'densityAt15CKGLTR'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'grade'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'lowerCalorificValueMJKG'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'status'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'sulphurPercent'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'temperatureC'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'type'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'createFuel';

  @override
  final CreateFuelArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  CreateFuel$Mutation parse(Map<String, dynamic> json) =>
      CreateFuel$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CurrentFuelsByConsumerDataArguments extends JsonSerializable
    with EquatableMixin {
  CurrentFuelsByConsumerDataArguments({@required this.pagination});

  factory CurrentFuelsByConsumerDataArguments.fromJson(
          Map<String, dynamic> json) =>
      _$CurrentFuelsByConsumerDataArgumentsFromJson(json);

  final PaginationInput pagination;

  @override
  List<Object> get props => [pagination];
  Map<String, dynamic> toJson() =>
      _$CurrentFuelsByConsumerDataArgumentsToJson(this);
}

class CurrentFuelsByConsumerDataQuery extends GraphQLQuery<
    CurrentFuelsByConsumerData$Query, CurrentFuelsByConsumerDataArguments> {
  CurrentFuelsByConsumerDataQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'CurrentFuelsByConsumerData'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'pagination')),
              type: NamedTypeNode(
                  name: NameNode(value: 'PaginationInput'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'currentFuelsByConsumer'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'consumer'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fuel'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                          name: NameNode(value: 'Fuel'), directives: [])
                    ])),
                FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'fuels'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'pagination'),
                    value: VariableNode(name: NameNode(value: 'pagination')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'FuelList'), directives: []),
                FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'Fuel'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(name: NameNode(value: 'Fuel'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'dateCreated'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'dateDeleted'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'densityAt15CKGLTR'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'grade'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'lowerCalorificValueMJKG'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'status'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'sulphurPercent'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'temperatureC'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'type'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'FuelList'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'FuelList'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'totalCount'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'fuels'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'Fuel'), directives: [])
              ])),
          FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'CurrentFuelsByConsumerData';

  @override
  final CurrentFuelsByConsumerDataArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  CurrentFuelsByConsumerData$Query parse(Map<String, dynamic> json) =>
      CurrentFuelsByConsumerData$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeleteFuelArguments extends JsonSerializable with EquatableMixin {
  DeleteFuelArguments({@required this.id});

  factory DeleteFuelArguments.fromJson(Map<String, dynamic> json) =>
      _$DeleteFuelArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$DeleteFuelArgumentsToJson(this);
}

class DeleteFuelMutation
    extends GraphQLQuery<DeleteFuel$Mutation, DeleteFuelArguments> {
  DeleteFuelMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'deleteFuel'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'deleteFuel'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'deleteFuel';

  @override
  final DeleteFuelArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  DeleteFuel$Mutation parse(Map<String, dynamic> json) =>
      DeleteFuel$Mutation.fromJson(json);
}
