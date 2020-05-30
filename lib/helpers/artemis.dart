import 'package:http/http.dart';

DateTime fromGraphQLDateTimeToDartDateTime(String dateTime) {
  return dateTime != null && dateTime.length != 0
      ? DateTime.parse(dateTime)
      : null;
}

String fromDartDateTimeToGraphQLDateTime(DateTime dateTime) {
  if (dateTime != null) {
    return dateTime.toIso8601String();
  }

  return null;
}
