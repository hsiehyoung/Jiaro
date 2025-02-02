import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/chat_confirm_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatPageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int step = 1;

  bool processing = false;

  bool isComplete = false;

  bool showFinish = false;

  bool nowRecording = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getUserSay)] action in Container widget.
  ApiCallResponse? apiResultfoe;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
