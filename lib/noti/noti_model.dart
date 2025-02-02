import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotiModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool? listening;

  int hour1 = 0;

  int hour2 = 0;

  int minute1 = 0;

  int minute2 = 0;

  int hours = 0;

  int minutes = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for hour1 widget.
  PageController? hour1Controller1;
  // State field(s) for hour1 widget.
  PageController? hour1Controller2;
  // State field(s) for minute1 widget.
  PageController? minute1Controller;
  // State field(s) for minute2 widget.
  PageController? minute2Controller;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
