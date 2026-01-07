import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'adminskill_widget.dart' show AdminskillWidget;
import 'package:flutter/material.dart';

class AdminskillModel extends FlutterFlowModel<AdminskillWidget> {
  ///  Local state fields for this page.

  String? selectedClass = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController3;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController4;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController5;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController6;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController7;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController8;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController9;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController10;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController11;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController12;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController13;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController14;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController15;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
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
