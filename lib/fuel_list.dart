import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:oosdesktopflutter/models/graphql/graphql_api.dart';

class FuelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Query(
      options: WatchQueryOptions(
          documentNode: CurrentFuelsByConsumerDataQuery().document,
          variables: CurrentFuelsByConsumerDataArguments(
            pagination: PaginationInput(limit: 10, offset: 0),
          ).toJson()),
      builder: (
        result, {
        refetch,
        fetchMore,
      }) {
        if (result.loading && result.data == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (result.data != null) {
          final data = CurrentFuelsByConsumerData$Query.fromJson(result.data);
          final fuelInUse = data.currentFuelsByConsumer.map((e) => e.fuel.id);
          print(fuelInUse);

          return Container(
            color: Color(0xFFf0f2f5),
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Table(
                  children: [
                    TableRow(
                        decoration: BoxDecoration(color: Color(0xFFfafafa)),
                        children: [
                          Text('Type'),
                          Text('Sulphur %'),
                          Text('Grade'),
                          Text('Density at 15℃'),
                          Text('Lower calorific value MJ/kg'),
                          Text('Temperature ℃'),
                          Container(),
                        ]),
                    ...data.fuels.fuels.map((e) {
                      return TableRow(children: [
                        Text(e.type.toString()),
                        Text(e.sulphurPercent.toString()),
                        Text(e.grade.toString()),
                        Text(e.densityAt15CKGLTR.toString()),
                        Text(e.lowerCalorificValueMJKG.toString()),
                        Text(e.temperatureC.toString()),
                        if (!fuelInUse.contains(e.id))
                          Mutation(
                            options: MutationOptions(
                              documentNode: DeleteFuelMutation().document,
                              onError: (error) {
                                print(error);
                              },
                              onCompleted: (dynamic resultData) {
                                if (resultData != null) {
                                  refetch();
                                }
                              },
                            ),
                            builder: (
                              runMutation,
                              result,
                            ) {
                              return IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      // return object of type Dialog
                                      return AlertDialog(
                                        title: Text("Alert Dialog title"),
                                        content: Text("Alert Dialog body"),
                                        actions: <Widget>[
                                          // usually buttons at the bottom of the dialog
                                          FlatButton(
                                            child: Text("Close"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          FlatButton(
                                            child: Text("Confirm"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              runMutation(
                                                  DeleteFuelArguments(id: e.id)
                                                      .toJson());
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                icon: Icon(Icons.delete),
                              );
                            },
                          )
                        else
                          Container(),
                      ]);
                    })
                  ],
                ),
              ),
            ),
          );
        }
        return Container();
      },
    );
  }
}
