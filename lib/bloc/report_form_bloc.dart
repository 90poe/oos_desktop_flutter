import 'package:flutter/cupertino.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:form_bloc/form_bloc.dart';
import 'package:oosdesktopflutter/models/graphql/graphql_api.graphql.dart';

class FuelFormBloc extends FormBloc<String, String> {
  final CurrentFuelsByConsumerData$Query$CurrentFuelsByConsumer$Fuel fuel;
  final sulphur = TextFieldBloc<Object>();
  final grade = TextFieldBloc<Object>();
  final density = TextFieldBloc<Object>();
  final lowerCalorificValue = TextFieldBloc<Object>();
  final temperature = TextFieldBloc<Object>();

//  final currentComment = TextFieldBloc<Object>(
//    name: ReportFormBlocField.currentComment.toString(),
//  );
//
//  final currentCreatedAt = InputFieldBloc<DateTime, Object>(
//    name: ReportFormBlocField.currentCreatedAt.toString(),
//    validators: [FieldBlocValidators.required],
//  );
//
//  final currentRollover = InputFieldBloc<bool, Object>(
//      name: ReportFormBlocField.currentRollover.toString());
//
//  final currentImage = InputFieldBloc<ReportImage, Object>(
//    name: ReportFormBlocField.currentImage.toString(),
//  );
//
//  final previousValue = TextFieldBloc<Object>(
//    name: ReportFormBlocField.previousValue.toString(),
//  );
//  final previousComment = TextFieldBloc<Object>(
//    name: ReportFormBlocField.previousComment.toString(),
//  );
//  final previousCreatedAt = InputFieldBloc<DateTime, Object>(
//    name: ReportFormBlocField.previousCreatedAt.toString(),
//  );
//  final previousRollover = InputFieldBloc<bool, Object>(
//      name: ReportFormBlocField.previousRollover.toString());
//
//  final DeviceReportMixin report;
//
//  final ReportImage image;

  FuelFormBloc({@required this.fuel}) : super(isLoading: true) {
//    currentValue.addValidators([
//      CustomValidators.currentRhRequired(this, report),
//    ]);
//
//    currentCreatedAt.addValidators([
//      CustomValidators.lowerThenPreviousDate(report),
//    ]);
//
//    addFieldBlocs(fieldBlocs: [
//      currentValue,
//      currentCreatedAt,
//      currentRollover,
//      currentComment,
//      currentImage,
//      previousValue,
//      previousCreatedAt,
//      previousRollover,
//      previousComment
//    ]);
  }

  @override
  void onLoading() async {
    try {
//      currentValue.updateInitialValue(report.current?.value == null
//          ? null
//          : report.current.value.toString());
//      currentComment.updateInitialValue(report.current?.comment);
//      currentCreatedAt.updateInitialValue(report.current?.updatedAt);
//      currentRollover.updateInitialValue(report.current?.rollover ?? false);
//      currentImage.updateInitialValue(image);
//
//      previousValue.updateInitialValue(report.previous?.value == null
//          ? null
//          : report.previous.value.toString());
//      previousComment.updateInitialValue(report.previous?.comment);
//      previousCreatedAt.updateInitialValue(report.previous?.updatedAt);
//      previousRollover.updateInitialValue(report.previous?.rollover ?? false);

      emitLoaded();
    } catch (e) {
      emitLoadFailed();
    }
  }

  @override
  void onSubmitting() {}
}
