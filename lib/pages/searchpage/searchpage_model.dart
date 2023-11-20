import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'searchpage_widget.dart' show SearchpageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchpageModel extends FlutterFlowModel<SearchpageWidget> {
  ///  Local state fields for this page.

  bool flag = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PatientName widget.
  FocusNode? patientNameFocusNode;
  TextEditingController? patientNameController;
  String? Function(BuildContext, String?)? patientNameControllerValidator;
  // State field(s) for PatientID widget.
  FocusNode? patientIDFocusNode;
  TextEditingController? patientIDController;
  String? Function(BuildContext, String?)? patientIDControllerValidator;
  // Stores action output result for [Backend Call - API (PatientData)] action in SearchButton widget.
  ApiCallResponse? searchresponse;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    patientNameFocusNode?.dispose();
    patientNameController?.dispose();

    patientIDFocusNode?.dispose();
    patientIDController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
