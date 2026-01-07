import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/questions_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'teachers_model.dart';
export 'teachers_model.dart';

class TeachersWidget extends StatefulWidget {
  const TeachersWidget({
    super.key,
    this.classDiv,
  });

  final String? classDiv;

  static String routeName = 'teachers';
  static String routePath = '/teachers';

  @override
  State<TeachersWidget> createState() => _TeachersWidgetState();
}

class _TeachersWidgetState extends State<TeachersWidget> {
  late TeachersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeachersModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              'snjdtxvi' /* Feedback Form */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.outfit(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 12.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  GoRouter.of(context).prepareAuthEvent();
                  await authManager.signOut();
                  GoRouter.of(context).clearRedirectLocation();

                  context.goNamedAuth(LoginWidget.routeName, context.mounted);
                },
                child: FaIcon(
                  FontAwesomeIcons.signOutAlt,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 33.8,
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    height: MediaQuery.sizeOf(context).height * 0.8,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      '5genwfsg' /* Rate the following statements ... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'hh7pk6vx' /* 
(1 being Strongly Disagree an... */
                                      ,
                                    ),
                                    style: TextStyle(),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.readexPro(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Wrap(
                              spacing: 30.0,
                              runSpacing: 20.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                FlutterFlowDropDown<String>(
                                  controller: _model.dropDownValueController ??=
                                      FormFieldController<String>(
                                    _model.dropDownValue ??=
                                        FFAppState().selectedClass,
                                  ),
                                  options: FFAppState()
                                      .teacherList
                                      .map((e) => e.classId)
                                      .toList(),
                                  onChanged: (val) async {
                                    safeSetState(
                                        () => _model.dropDownValue = val);
                                    FFAppState().currentTeacherList =
                                        FFAppState()
                                            .teacherList
                                            .where((e) =>
                                                e.classId ==
                                                _model.dropDownValue)
                                            .toList()
                                            .firstOrNull!
                                            .classTeacherList;
                                    FFAppState().activeTeacherList = functions
                                        .commaSeperatedtoList(FFAppState()
                                            .teacherList
                                            .where((e) =>
                                                e.classId ==
                                                _model.dropDownValue)
                                            .toList()
                                            .firstOrNull!
                                            .classTeacherList)
                                        .toList()
                                        .cast<String>();
                                    FFAppState().selectedClass =
                                        _model.dropDownValue!;
                                    safeSetState(() {});
                                  },
                                  width: 300.0,
                                  height: 50.0,
                                  maxHeight: 400.0,
                                  searchHintTextStyle:
                                      FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                  searchTextStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'kay49gaa' /* Please select your class... */,
                                  ),
                                  searchHintText:
                                      FFLocalizations.of(context).getText(
                                    'kmxg1fe6' /* Search for an item... */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: true,
                                  isMultiSelect: false,
                                ),
                                if (_model.dropDownValue != null &&
                                    _model.dropDownValue != '')
                                  FlutterFlowDropDown<String>(
                                    controller: _model.staffValueController ??=
                                        FormFieldController<String>(null),
                                    options: FFAppState().activeTeacherList,
                                    onChanged: (val) => safeSetState(
                                        () => _model.staffValue = val),
                                    width: 300.0,
                                    height: 50.0,
                                    maxHeight: 400.0,
                                    searchHintTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                    searchTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.readexPro(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      '5lgiqo3d' /* Select staff... */,
                                    ),
                                    searchHintText:
                                        FFLocalizations.of(context).getText(
                                      '4q618rt1' /* Search for an item... */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isSearchable: true,
                                    isMultiSelect: false,
                                  ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    wrapWithModel(
                                      model: _model.questionsModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: QuestionsWidget(
                                        slNo: '1',
                                        question: () {
                                          if ((_model.staffValue == 'Mani') ||
                                              (_model.staffValue ==
                                                  'Chandrakanth')) {
                                            return 'The librarian/lab assistant demonstrates comprehensive knowledge in their area of expertise.';
                                          } else if ((_model.staffValue ==
                                                  'Kirthana') ||
                                              (_model.staffValue ==
                                                  'Revathi')) {
                                            return 'How effective is the teacher\'s communication towards  teaching the concept?';
                                          } else {
                                            return 'Teacher demonstrates a thorough understanding of the subject matter.';
                                          }
                                        }(),
                                      ),
                                    ),
                                    FlutterFlowRadioButton(
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'bvx3jl0c' /* 1 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '62l3tuh9' /* 2 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'bf5x3ek4' /* 3 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'fco6m4uk' /* 4 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '0jjs890v' /* 5 */,
                                        )
                                      ].toList(),
                                      onChanged: (val) => safeSetState(() {}),
                                      controller:
                                          _model.radioButtonValueController1 ??=
                                              FormFieldController<String>(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                        'v7ppjpjm' /* 3 */,
                                      )),
                                      optionHeight: 32.0,
                                      optionWidth: 200.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.horizontal,
                                      radioButtonColor:
                                          FlutterFlowTheme.of(context).primary,
                                      inactiveRadioButtonColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ]
                                      .divide(SizedBox(height: 10.0))
                                      .around(SizedBox(height: 10.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    wrapWithModel(
                                      model: _model.questionsModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: QuestionsWidget(
                                        slNo: '2',
                                        question: () {
                                          if ((_model.staffValue == 'Mani') ||
                                              (_model.staffValue ==
                                                  'Chandrakanth')) {
                                            return 'The library/lab is well-organized, and resources are readily accessible.';
                                          } else if ((_model.staffValue ==
                                                  'Kirthana') ||
                                              (_model.staffValue ==
                                                  'Revathi')) {
                                            return 'Is the teacher Innovative in her problem solving abilities?';
                                          } else {
                                            return 'Concepts are explained in a clear and understandable manner.';
                                          }
                                        }(),
                                      ),
                                    ),
                                    FlutterFlowRadioButton(
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'm7wodd6u' /* 1 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'f0h0up2o' /* 2 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'jmndm22l' /* 3 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'f95ihmct' /* 4 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '43kmguj4' /* 5 */,
                                        )
                                      ].toList(),
                                      onChanged: (val) => safeSetState(() {}),
                                      controller:
                                          _model.radioButtonValueController2 ??=
                                              FormFieldController<String>(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                        'yx6njzag' /* 3 */,
                                      )),
                                      optionHeight: 32.0,
                                      optionWidth: 200.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      selectedTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.horizontal,
                                      radioButtonColor:
                                          FlutterFlowTheme.of(context).primary,
                                      inactiveRadioButtonColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ]
                                      .divide(SizedBox(height: 10.0))
                                      .around(SizedBox(height: 10.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    wrapWithModel(
                                      model: _model.questionsModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: QuestionsWidget(
                                        slNo: '3',
                                        question: () {
                                          if ((_model.staffValue == 'Mani') ||
                                              (_model.staffValue ==
                                                  'Chandrakanth')) {
                                            return 'Technical issues are efficiently addressed and resolved.';
                                          } else if ((_model.staffValue ==
                                                  'Kirthana') ||
                                              (_model.staffValue ==
                                                  'Revathi')) {
                                            return 'How effective is the teacher in Classroom management?';
                                          } else {
                                            return 'Teacher uses a variety of teaching methods to cater to different learning styles.';
                                          }
                                        }(),
                                      ),
                                    ),
                                    FlutterFlowRadioButton(
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'xyrylbtp' /* 1 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ekwl03vw' /* 2 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'n39efdo4' /* 3 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'x6rjd8dd' /* 4 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ot6rhy72' /* 5 */,
                                        )
                                      ].toList(),
                                      onChanged: (val) => safeSetState(() {}),
                                      controller:
                                          _model.radioButtonValueController3 ??=
                                              FormFieldController<String>(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                        '4wl7gwjv' /* 3 */,
                                      )),
                                      optionHeight: 32.0,
                                      optionWidth: 200.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      selectedTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.horizontal,
                                      radioButtonColor:
                                          FlutterFlowTheme.of(context).primary,
                                      inactiveRadioButtonColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ]
                                      .divide(SizedBox(height: 10.0))
                                      .around(SizedBox(height: 10.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    wrapWithModel(
                                      model: _model.questionsModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: QuestionsWidget(
                                        slNo: '4',
                                        question: () {
                                          if ((_model.staffValue == 'Mani') ||
                                              (_model.staffValue ==
                                                  'Chandrakanth')) {
                                            return 'Instructions and information are communicated clearly.';
                                          } else if ((_model.staffValue ==
                                                  'Kirthana') ||
                                              (_model.staffValue ==
                                                  'Revathi')) {
                                            return 'Is the teacher interactive with all the students?';
                                          } else {
                                            return 'Teacher shows enthusiasm and passion for the subject, making classes engaging.';
                                          }
                                        }(),
                                      ),
                                    ),
                                    FlutterFlowRadioButton(
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          '8p9lgb3e' /* 1 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'dldog9rl' /* 2 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'gc3vhaeg' /* 3 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '9ne5vsmq' /* 4 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'wfyys4v7' /* 5 */,
                                        )
                                      ].toList(),
                                      onChanged: (val) => safeSetState(() {}),
                                      controller:
                                          _model.radioButtonValueController4 ??=
                                              FormFieldController<String>(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                        'asjgho44' /* 3 */,
                                      )),
                                      optionHeight: 32.0,
                                      optionWidth: 200.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      selectedTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.horizontal,
                                      radioButtonColor:
                                          FlutterFlowTheme.of(context).primary,
                                      inactiveRadioButtonColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ]
                                      .divide(SizedBox(height: 10.0))
                                      .around(SizedBox(height: 10.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    wrapWithModel(
                                      model: _model.questionsModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: QuestionsWidget(
                                        slNo: '5',
                                        question: () {
                                          if ((_model.staffValue == 'Mani') ||
                                              (_model.staffValue ==
                                                  'Chandrakanth')) {
                                            return 'They listen attentively to my questions.';
                                          } else if ((_model.staffValue ==
                                                  'Kirthana') ||
                                              (_model.staffValue ==
                                                  'Revathi')) {
                                            return 'Is the teacher updated in the latest technologies and programming languages?';
                                          } else {
                                            return 'The teacher maintains an appropriate pace that facilitates my understanding.';
                                          }
                                        }(),
                                      ),
                                    ),
                                    FlutterFlowRadioButton(
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'lggg86pp' /* 1 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'hhnycz5s' /* 2 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '672nns0w' /* 3 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'nedtmqqf' /* 4 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '8vt1r539' /* 5 */,
                                        )
                                      ].toList(),
                                      onChanged: (val) => safeSetState(() {}),
                                      controller:
                                          _model.radioButtonValueController5 ??=
                                              FormFieldController<String>(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                        'ihrnhfj0' /* 3 */,
                                      )),
                                      optionHeight: 32.0,
                                      optionWidth: 200.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      selectedTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.horizontal,
                                      radioButtonColor:
                                          FlutterFlowTheme.of(context).primary,
                                      inactiveRadioButtonColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ]
                                      .divide(SizedBox(height: 10.0))
                                      .around(SizedBox(height: 10.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    wrapWithModel(
                                      model: _model.questionsModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: QuestionsWidget(
                                        slNo: '6',
                                        question: (_model.staffValue ==
                                                    'Mani') ||
                                                (_model.staffValue ==
                                                    'Chandrakanth')
                                            ? 'Interactions are conducted in a respectful and professional manner.'
                                            : 'Technology and other resources are effectively integrated to enhance learning.',
                                      ),
                                    ),
                                    FlutterFlowRadioButton(
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'c9cfybjr' /* 1 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'f74mh443' /* 2 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'p4mfa5ro' /* 3 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'hptckxbn' /* 4 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'w7owk26v' /* 5 */,
                                        )
                                      ].toList(),
                                      onChanged: (val) => safeSetState(() {}),
                                      controller:
                                          _model.radioButtonValueController6 ??=
                                              FormFieldController<String>(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                        'q79wpky8' /* 3 */,
                                      )),
                                      optionHeight: 32.0,
                                      optionWidth: 200.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      selectedTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.horizontal,
                                      radioButtonColor:
                                          FlutterFlowTheme.of(context).primary,
                                      inactiveRadioButtonColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ]
                                      .divide(SizedBox(height: 10.0))
                                      .around(SizedBox(height: 10.0)),
                                ),
                                if (!((_model.staffValue == 'Mani') ||
                                    (_model.staffValue == 'Chandrakanth') ||
                                    (_model.staffValue == 'Kirthana') ||
                                    (_model.staffValue == 'Revathi')))
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      wrapWithModel(
                                        model: _model.questionsModel7,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: QuestionsWidget(
                                          slNo: '7',
                                          question:
                                              'Teacher encourages all students to participate in discussions and activities.',
                                        ),
                                      ),
                                      FlutterFlowRadioButton(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'nn2dzf1k' /* 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'j0qp538u' /* 2 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '0dms18uy' /* 3 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'qbazpiml' /* 4 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ec0dqcfk' /* 5 */,
                                          )
                                        ].toList(),
                                        onChanged: (val) => safeSetState(() {}),
                                        controller: _model
                                                .radioButtonValueController7 ??=
                                            FormFieldController<String>(
                                                FFLocalizations.of(context)
                                                    .getText(
                                          'qqty7y7n' /* 3 */,
                                        )),
                                        optionHeight: 32.0,
                                        optionWidth: 200.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        selectedTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ]
                                        .divide(SizedBox(height: 10.0))
                                        .around(SizedBox(height: 10.0)),
                                  ),
                                if (!((_model.staffValue == 'Mani') ||
                                    (_model.staffValue == 'Chandrakanth')))
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      wrapWithModel(
                                        model: _model.questionsModel8,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: QuestionsWidget(
                                          slNo: '8',
                                          question:
                                              'Lessons are connected to real-world applications, making learning meaningful.',
                                        ),
                                      ),
                                      FlutterFlowRadioButton(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'vm6g047e' /* 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'b5660yhg' /* 2 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'c13yaz8a' /* 3 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'xkapr3e1' /* 4 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'r3pgubns' /* 5 */,
                                          )
                                        ].toList(),
                                        onChanged: (val) => safeSetState(() {}),
                                        controller: _model
                                                .radioButtonValueController8 ??=
                                            FormFieldController<String>(
                                                FFLocalizations.of(context)
                                                    .getText(
                                          'n8d2u4fi' /* 3 */,
                                        )),
                                        optionHeight: 32.0,
                                        optionWidth: 200.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        selectedTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ]
                                        .divide(SizedBox(height: 10.0))
                                        .around(SizedBox(height: 10.0)),
                                  ),
                                if (!((_model.staffValue == 'Mani') ||
                                    (_model.staffValue == 'Chandrakanth')))
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      wrapWithModel(
                                        model: _model.questionsModel9,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: QuestionsWidget(
                                          slNo: '9',
                                          question:
                                              'I receive timely and constructive feedback that helps me improve.',
                                        ),
                                      ),
                                      FlutterFlowRadioButton(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'msza6ftc' /* 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '8wlohejq' /* 2 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'li62vx3i' /* 3 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ipmgnga3' /* 4 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'mcr9qdpm' /* 5 */,
                                          )
                                        ].toList(),
                                        onChanged: (val) => safeSetState(() {}),
                                        controller: _model
                                                .radioButtonValueController9 ??=
                                            FormFieldController<String>(
                                                FFLocalizations.of(context)
                                                    .getText(
                                          't4jx5v7g' /* 3 */,
                                        )),
                                        optionHeight: 32.0,
                                        optionWidth: 200.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        selectedTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ]
                                        .divide(SizedBox(height: 10.0))
                                        .around(SizedBox(height: 10.0)),
                                  ),
                                if (!((_model.staffValue == 'Mani') ||
                                    (_model.staffValue == 'Chandrakanth')))
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      wrapWithModel(
                                        model: _model.questionsModel10,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: QuestionsWidget(
                                          slNo: '10',
                                          question:
                                              'The classroom environment is inclusive, and all students feel valued and respected.',
                                        ),
                                      ),
                                      FlutterFlowRadioButton(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '3d098f0w' /* 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'yjxsayjb' /* 2 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '0ysrmhir' /* 3 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'hj79osui' /* 4 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'iydwdqym' /* 5 */,
                                          )
                                        ].toList(),
                                        onChanged: (val) => safeSetState(() {}),
                                        controller: _model
                                                .radioButtonValueController10 ??=
                                            FormFieldController<String>(
                                                FFLocalizations.of(context)
                                                    .getText(
                                          '5zdskkvn' /* 3 */,
                                        )),
                                        optionHeight: 32.0,
                                        optionWidth: 200.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        selectedTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ]
                                        .divide(SizedBox(height: 10.0))
                                        .around(SizedBox(height: 10.0)),
                                  ),
                                if (!((_model.staffValue == 'Mani') ||
                                    (_model.staffValue == 'Chandrakanth')))
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      wrapWithModel(
                                        model: _model.questionsModel11,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: QuestionsWidget(
                                          slNo: '11',
                                          question:
                                              'Classroom rules and expectations are clearly communicated and consistently enforced.',
                                        ),
                                      ),
                                      FlutterFlowRadioButton(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'wdst4xg8' /* 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'xbzkrl9c' /* 2 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'vvrgfsin' /* 3 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'fq4hh9yc' /* 4 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '47grp4uh' /* 5 */,
                                          )
                                        ].toList(),
                                        onChanged: (val) => safeSetState(() {}),
                                        controller: _model
                                                .radioButtonValueController11 ??=
                                            FormFieldController<String>(
                                                FFLocalizations.of(context)
                                                    .getText(
                                          'dce6t8z1' /* 3 */,
                                        )),
                                        optionHeight: 32.0,
                                        optionWidth: 200.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        selectedTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ]
                                        .divide(SizedBox(height: 10.0))
                                        .around(SizedBox(height: 10.0)),
                                  ),
                                if (!((_model.staffValue == 'Mani') ||
                                    (_model.staffValue == 'Chandrakanth')))
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      wrapWithModel(
                                        model: _model.questionsModel12,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: QuestionsWidget(
                                          slNo: '12',
                                          question:
                                              'A respectful atmosphere is maintained in the classroom.',
                                        ),
                                      ),
                                      FlutterFlowRadioButton(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '2xal73i1' /* 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '3hcx2o5v' /* 2 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'kqqqq746' /* 3 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'uyp0n0ip' /* 4 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '1rshyi87' /* 5 */,
                                          )
                                        ].toList(),
                                        onChanged: (val) => safeSetState(() {}),
                                        controller: _model
                                                .radioButtonValueController12 ??=
                                            FormFieldController<String>(
                                                FFLocalizations.of(context)
                                                    .getText(
                                          'ga919e9e' /* 3 */,
                                        )),
                                        optionHeight: 32.0,
                                        optionWidth: 200.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        selectedTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ]
                                        .divide(SizedBox(height: 10.0))
                                        .around(SizedBox(height: 10.0)),
                                  ),
                                if (!((_model.staffValue == 'Mani') ||
                                    (_model.staffValue == 'Chandrakanth')))
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      wrapWithModel(
                                        model: _model.questionsModel13,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: QuestionsWidget(
                                          slNo: '13',
                                          question:
                                              'Class time is managed effectively to maximize learning opportunities.',
                                        ),
                                      ),
                                      FlutterFlowRadioButton(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            '96u0ambf' /* 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'liuqmwia' /* 2 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'hrnu0a50' /* 3 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'zilugbnv' /* 4 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'tvj2iubo' /* 5 */,
                                          )
                                        ].toList(),
                                        onChanged: (val) => safeSetState(() {}),
                                        controller: _model
                                                .radioButtonValueController13 ??=
                                            FormFieldController<String>(
                                                FFLocalizations.of(context)
                                                    .getText(
                                          'qj7x5nsz' /* 3 */,
                                        )),
                                        optionHeight: 32.0,
                                        optionWidth: 200.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        selectedTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ]
                                        .divide(SizedBox(height: 10.0))
                                        .around(SizedBox(height: 10.0)),
                                  ),
                                if (!((_model.staffValue == 'Mani') ||
                                    (_model.staffValue == 'Chandrakanth')))
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      wrapWithModel(
                                        model: _model.questionsModel14,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: QuestionsWidget(
                                          slNo: '14',
                                          question:
                                              'Disciplinary issues are handled fairly and consistently.',
                                        ),
                                      ),
                                      FlutterFlowRadioButton(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'n87fv7hx' /* 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'zfv6m5fm' /* 2 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '3ofzqsv8' /* 3 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '3ddu42qk' /* 4 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'crpokkq6' /* 5 */,
                                          )
                                        ].toList(),
                                        onChanged: (val) => safeSetState(() {}),
                                        controller: _model
                                                .radioButtonValueController14 ??=
                                            FormFieldController<String>(
                                                FFLocalizations.of(context)
                                                    .getText(
                                          'loaets82' /* 3 */,
                                        )),
                                        optionHeight: 32.0,
                                        optionWidth: 200.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        selectedTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ]
                                        .divide(SizedBox(height: 10.0))
                                        .around(SizedBox(height: 10.0)),
                                  ),
                                if (!((_model.staffValue == 'Mani') ||
                                    (_model.staffValue == 'Chandrakanth')))
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      wrapWithModel(
                                        model: _model.questionsModel15,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: QuestionsWidget(
                                          slNo: '15',
                                          question:
                                              'My progress is regularly monitored and communicated.',
                                        ),
                                      ),
                                      FlutterFlowRadioButton(
                                        options: [
                                          FFLocalizations.of(context).getText(
                                            'jpq6hbex' /* 1 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '6acrx17p' /* 2 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'i0u8fkeb' /* 3 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '941j05xz' /* 4 */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '22nnw0ic' /* 5 */,
                                          )
                                        ].toList(),
                                        onChanged: (val) => safeSetState(() {}),
                                        controller: _model
                                                .radioButtonValueController15 ??=
                                            FormFieldController<String>(
                                                FFLocalizations.of(context)
                                                    .getText(
                                          'su96es4h' /* 3 */,
                                        )),
                                        optionHeight: 32.0,
                                        optionWidth: 200.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        selectedTextStyle: FlutterFlowTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ]
                                        .divide(SizedBox(height: 10.0))
                                        .around(SizedBox(height: 10.0)),
                                  ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.6,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: Color(0x66707F8A),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.6,
                                          child: TextFormField(
                                            controller: _model.textController,
                                            focusNode:
                                                _model.textFieldFocusNode,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'fm7zsjqr' /* Please provide any additional ... */,
                                              ),
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontStyle,
                                                  ),
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontStyle,
                                                  ),
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              focusedErrorBorder:
                                                  InputBorder.none,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                            maxLines: 7,
                                            validator: _model
                                                .textControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if ((_model.staffValue != null &&
                                        _model.staffValue != '') &&
                                    !((_model.staffValue == 'Mani') ||
                                        (_model.staffValue == 'Chandrakanth')))
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await StaffFeedbackTable().insert({
                                        'staff_name': _model.staffValue,
                                        'department': 'Teacher',
                                        'criteria1': int.parse(
                                            (_model.radioButtonValue1!)),
                                        'criteria2': int.parse(
                                            (_model.radioButtonValue2!)),
                                        'criteria3': int.parse(
                                            (_model.radioButtonValue3!)),
                                        'criteria4': int.parse(
                                            (_model.radioButtonValue4!)),
                                        'criteria5': int.parse(
                                            (_model.radioButtonValue5!)),
                                        'criteria6': int.parse(
                                            (_model.radioButtonValue6!)),
                                        'criteria7': int.parse(
                                            (_model.radioButtonValue7!)),
                                        'criteria8': int.parse(
                                            (_model.radioButtonValue8!)),
                                        'criteria9': int.parse(
                                            (_model.radioButtonValue9!)),
                                        'criteria10': int.parse(
                                            (_model.radioButtonValue10!)),
                                        'criteria11': int.parse(
                                            (_model.radioButtonValue11!)),
                                        'criteria12': int.parse(
                                            (_model.radioButtonValue12!)),
                                        'criteria13': int.parse(
                                            (_model.radioButtonValue13!)),
                                        'criteria14': int.parse(
                                            (_model.radioButtonValue14!)),
                                        'criteria15': int.parse(
                                            (_model.radioButtonValue15!)),
                                        'comment': _model.textController.text,
                                        'class': _model.dropDownValue,
                                      });
                                      FFAppState().removeFromActiveTeacherList(
                                          _model.staffValue!);
                                      safeSetState(() {});

                                      context
                                          .pushNamed(SuccessWidget.routeName);
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      '8sk1ejtb' /* Submit */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                if ((_model.staffValue != null &&
                                        _model.staffValue != '') &&
                                    ((_model.staffValue == 'Mani') ||
                                        (_model.staffValue == 'Chandrakanth')))
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await StaffFeedbackTable().insert({
                                        'staff_name': _model.staffValue,
                                        'department': 'Teacher',
                                        'criteria1': int.parse(
                                            (_model.radioButtonValue1!)),
                                        'criteria2': int.parse(
                                            (_model.radioButtonValue2!)),
                                        'criteria3': int.parse(
                                            (_model.radioButtonValue3!)),
                                        'criteria4': int.parse(
                                            (_model.radioButtonValue4!)),
                                        'criteria5': int.parse(
                                            (_model.radioButtonValue5!)),
                                        'criteria6': int.parse(
                                            (_model.radioButtonValue6!)),
                                        'comment': _model.textController.text,
                                        'class': _model.dropDownValue,
                                      });
                                      FFAppState().removeFromActiveTeacherList(
                                          _model.staffValue!);
                                      safeSetState(() {});

                                      context
                                          .pushNamed(SuccessWidget.routeName);
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'es5418xf' /* Submit */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                              ],
                            ),
                          ]
                              .divide(SizedBox(height: 20.0))
                              .around(SizedBox(height: 20.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
