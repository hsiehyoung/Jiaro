import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_card_model.dart';
export 'home_card_model.dart';

class HomeCardWidget extends StatefulWidget {
  const HomeCardWidget({Key? key}) : super(key: key);

  @override
  _HomeCardWidgetState createState() => _HomeCardWidgetState();
}

class _HomeCardWidgetState extends State<HomeCardWidget> {
  late HomeCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 8.0),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 430.0,
            maxHeight: 690.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).alternate,
            boxShadow: [
              BoxShadow(
                blurRadius: 8.0,
                color: Color(0x230F1113),
                offset: Offset(0.0, 4.0),
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).lineColor,
            ),
          ),
          alignment: AlignmentDirectional(0.0, -0.5),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: 120.0,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.candyCane,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 69.0,
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          '更好的女孩',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).secondaryText,
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 10.0, 8.0, 20.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  '曾經有一個男孩愛上了一個女孩，但女孩卻不喜歡他。男孩很難過，但他也知道不能勉強別人去愛自己。\n他開始想辦法去轉移注意力，便開始參加各種活動，學習新技能，並且認識了一些新朋友。但他還是時不時地想起那個女孩，心情仍然有些難過。\n有一天，男孩參加了一個慈善活動，他看到了一個小女孩，她在向路人募捐。男孩走過去，想要幫忙，但他身上的錢不多，他給了那個小女孩一些零錢。小女孩卻非常感謝，她對男孩說：“謝謝你，你真好。我們都需要更多像你這樣的人。〞\n男孩聽到這句話後，心情突然開朗了許多。他意識到，他並不需要別人的愛來感到快樂和有價值。他可以通過幫助別人來找到自己的價值。他回家後，開始主動參加更多的志願活動，幫助需要幫助的人。這讓他感到非常滿足和快樂。',
                              style: TextStyle(),
                            )
                          ],
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (FFAppState().pagename == 'finishChat') {
                            context.pushNamed('chatFinish');
                          } else {
                            context.safePop();
                          }
                        },
                        text: '我看完了',
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 60.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 20.0,
                              ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
