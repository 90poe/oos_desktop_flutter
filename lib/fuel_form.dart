import 'package:dropdown_search/dropdown_search.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'models/graphql/graphql_api.graphql.dart';

class FuelForm extends StatefulWidget {
  final Refetch refetch;
  FuelForm({Key key, this.refetch}) : super(key: key);

  @override
  _FuelFormState createState() => _FuelFormState();
}

class _FuelFormState extends State<FuelForm> {
  final _formKey = GlobalKey<FormState>();
  String _type;
  int _sulphur;
  int _grade;
  int _density;
  int _lowerCalorificValue;
  int _temperature;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new Builder(builder: (context) {
          return BackButton(
            onPressed: () {
              try {
                Navigator.pop(context); //close the popup
              } catch (e) {}
            },
          );
        }),
        brightness: Brightness.light,
      ),
      resizeToAvoidBottomPadding: false,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              DropdownSearch<String>(
//                                          validator: (v) => v == null
//                                              ? "required field"
//                                              : null,
                onSaved: (value) => setState(() {
                  _type = value;
                }),
                hint: "Select a country",
                mode: Mode.MENU,
                showSelectedItem: true,
                searchBoxDecoration: InputDecoration(
                  border: const OutlineInputBorder(),
//                                            contentPadding:
//                                                const EdgeInsets.all(0),
                ),
                items: ["HSFO", "ULSFO", "VLSFO", 'MGO', 'MDO'],
                label: "Type",
//                                          showClearButton: true,
                onChanged: print,
//                                          popupItemDisabled: (String s) =>
//                                              s.startsWith('I'),
//                                          selectedItem: "Brazil",
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Sulphur %',
                  border: const OutlineInputBorder(),
                ),
                onSaved: (value) => setState(() {
                  _sulphur = int.tryParse(value);
                }),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Grade',
                  border: const OutlineInputBorder(),
                ),
                onSaved: (value) => setState(() {
                  _grade = int.tryParse(value);
                }),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Density',
                  border: const OutlineInputBorder(),
                ),
                onSaved: (value) => setState(() {
                  _density = int.tryParse(value);
                }),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Lower calorific value',
                  border: const OutlineInputBorder(),
                ),
                onSaved: (value) => setState(() {
                  _lowerCalorificValue = int.tryParse(value);
                }),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Temperature',
                  border: const OutlineInputBorder(),
                ),
                onSaved: (value) => setState(() {
                  _temperature = int.tryParse(value);
                }),
              ),
              SizedBox(height: 16),
              Divider(),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Cancel'),
                  ),
                  SizedBox(width: 16),
                  Mutation(
                    options: MutationOptions(
                      documentNode: CreateFuelMutation().document,
                      onError: (error) {
                        print(error);
                      },
                      onCompleted: (dynamic resultData) {
                        if (resultData != null) {
                          widget.refetch();
                        }
                      },
                    ),
                    builder: (
                      runMutation,
                      result,
                    ) {
                      return RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            runMutation(CreateFuelArguments(
                                fuelData: FuelInput(
                              sulphurPercent: _sulphur.toDouble(),
                              lowerCalorificValueMJKG:
                                  _lowerCalorificValue.toDouble(),
                              densityAt15CKGLTR: _density.toDouble(),
                              temperatureC: _temperature.toDouble(),
                              grade: _grade.toDouble(),
                              type: EnumToString.fromString(
                                  FuelType.values, _type),
                            )).toJson());
                          }
                          Navigator.of(context).pop();
                        },
                        child: Text('Save'),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
