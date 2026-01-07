import '/components/questions_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'teachers_widget.dart' show TeachersWidget;
import 'package:flutter/material.dart';

class TeachersModel extends FlutterFlowModel<TeachersWidget> {
  ///  Local state fields for this page.

  String? selectedClass = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Staff widget.
  String? staffValue;
  FormFieldController<String>? staffValueController;
  // Model for questions component.
  late QuestionsModel questionsModel1;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Model for questions component.
  late QuestionsModel questionsModel2;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // Model for questions component.
  late QuestionsModel questionsModel3;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController3;
  // Model for questions component.
  late QuestionsModel questionsModel4;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController4;
  // Model for questions component.
  late QuestionsModel questionsModel5;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController5;
  // Model for questions component.
  late QuestionsModel questionsModel6;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController6;
  // Model for questions component.
  late QuestionsModel questionsModel7;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController7;
  // Model for questions component.
  late QuestionsModel questionsModel8;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController8;
  // Model for questions component.
  late QuestionsModel questionsModel9;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController9;
  // Model for questions component.
  late QuestionsModel questionsModel10;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController10;
  // Model for questions component.
  late QuestionsModel questionsModel11;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController11;
  // Model for questions component.
  late QuestionsModel questionsModel12;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController12;
  // Model for questions component.
  late QuestionsModel questionsModel13;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController13;
  // Model for questions component.
  late QuestionsModel questionsModel14;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController14;
  // Model for questions component.
  late QuestionsModel questionsModel15;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController15;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    questionsModel1 = createModel(context, () => QuestionsModel());
    questionsModel2 = createModel(context, () => QuestionsModel());
    questionsModel3 = createModel(context, () => QuestionsModel());
    questionsModel4 = createModel(context, () => QuestionsModel());
    questionsModel5 = createModel(context, () => QuestionsModel());
    questionsModel6 = createModel(context, () => QuestionsModel());
    questionsModel7 = createModel(context, () => QuestionsModel());
    questionsModel8 = createModel(context, () => QuestionsModel());
    questionsModel9 = createModel(context, () => QuestionsModel());
    questionsModel10 = createModel(context, () => QuestionsModel());
    questionsModel11 = createModel(context, () => QuestionsModel());
    questionsModel12 = createModel(context, () => QuestionsModel());
    questionsModel13 = createModel(context, () => QuestionsModel());
    questionsModel14 = createModel(context, () => QuestionsModel());
    questionsModel15 = createModel(context, () => QuestionsModel());
  }

  @override
  void dispose() {
    questionsModel1.dispose();
    questionsModel2.dispose();
    questionsModel3.dispose();
    questionsModel4.dispose();
    questionsModel5.dispose();
    questionsModel6.dispose();
    questionsModel7.dispose();
    questionsModel8.dispose();
    questionsModel9.dispose();
    questionsModel10.dispose();
    questionsModel11.dispose();
    questionsModel12.dispose();
    questionsModel13.dispose();
    questionsModel14.dispose();
    questionsModel15.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
  String? get radioButtonValue3 => radioButtonValueController3?.value;
  String? get radioButtonValue4 => radioButtonValueController4?.value;
  String? get radioButtonValue5 => radioButtonValueController5?.value;
  String? get radioButtonValue6 => radioButtonValueController6?.value;
  String? get radioButtonValue7 => radioButtonValueController7?.value;
  String? get radioButtonValue8 => radioButtonValueController8?.value;
  String? get radioButtonValue9 => radioButtonValueController9?.value;
  String? get radioButtonValue10 => radioButtonValueController10?.value;
  String? get radioButtonValue11 => radioButtonValueController11?.value;
  String? get radioButtonValue12 => radioButtonValueController12?.value;
  String? get radioButtonValue13 => radioButtonValueController13?.value;
  String? get radioButtonValue14 => radioButtonValueController14?.value;
  String? get radioButtonValue15 => radioButtonValueController15?.value;
}
