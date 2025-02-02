import '/backend/backend.dart';
import '/components/home_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'candyjar_model.dart';
export 'candyjar_model.dart';

class CandyjarWidget extends StatefulWidget {
  const CandyjarWidget({Key? key}) : super(key: key);

  @override
  _CandyjarWidgetState createState() => _CandyjarWidgetState();
}

class _CandyjarWidgetState extends State<CandyjarWidget> {
  late CandyjarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  int get pageViewCurrentIndex => _model.pageViewController != null &&
          _model.pageViewController!.hasClients &&
          _model.pageViewController!.page != null
      ? _model.pageViewController!.page!.round()
      : 0;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CandyjarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'candyjar',
        color: FlutterFlowTheme.of(context).primary,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFF1F4F8),
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  '我的糖果罐',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 22.0,
                      ),
                ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(50.0, 30.0, 50.0, 50.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 100.0,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      '2023',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF1D2429),
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.currentMonth.toString() !=
                                          '0') {
                                        setState(() {
                                          _model.currentMonth =
                                              _model.currentMonth + -1;
                                        });
                                        return;
                                      } else {
                                        return;
                                      }
                                    },
                                    child: Icon(
                                      Icons.arrow_left,
                                      color: Colors.black,
                                      size: 60.0,
                                    ),
                                  ),
                                  Container(
                                    width: 150.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent3,
                                      borderRadius: BorderRadius.circular(20.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        (String thisMonth) {
                                          return thisMonth + "月";
                                        }((_model.currentMonth + 1).toString()),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 25.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.currentMonth.toString() !=
                                          '11') {
                                        setState(() {
                                          _model.currentMonth =
                                              _model.currentMonth + 1;
                                        });
                                        return;
                                      } else {
                                        return;
                                      }
                                    },
                                    child: Icon(
                                      Icons.arrow_right,
                                      color: Colors.black,
                                      size: 60.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 500.0,
                      child: PageView(
                        controller: _model.pageViewController ??=
                            PageController(
                                initialPage: min(
                                    valueOrDefault<int>(
                                      _model.currentMonth,
                                      0,
                                    ),
                                    0)),
                        onPageChanged: (_) async {
                          setState(() {
                            _model.currentMonth = pageViewCurrentIndex;
                          });
                        },
                        scrollDirection: Axis.horizontal,
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                'assets/images/candyjar.png',
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                fit: BoxFit.fitHeight,
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.05, 0.3),
                                child: Container(
                                  width: 169.0,
                                  height: 223.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: StreamBuilder<List<DailyRecordRecord>>(
                                    stream: queryDailyRecordRecord(
                                      queryBuilder: (dailyRecordRecord) =>
                                          dailyRecordRecord
                                              .where('date',
                                                  isGreaterThan:
                                                      (String monthString) {
                                                    return "2023-0" +
                                                        monthString;
                                                  }((_model.currentMonth + 1)
                                                          .toString()))
                                              .where('date',
                                                  isLessThan:
                                                      (String nextMonthString) {
                                                    return "2023-0" +
                                                        nextMonthString;
                                                  }((_model.currentMonth + 2)
                                                          .toString())),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 40.0,
                                            height: 40.0,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                          ),
                                        );
                                      }
                                      List<DailyRecordRecord>
                                          wrapDailyRecordRecordList =
                                          snapshot.data!;
                                      return Wrap(
                                        spacing: 0.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection: VerticalDirection.up,
                                        clipBehavior: Clip.none,
                                        children: List.generate(
                                            wrapDailyRecordRecordList.length,
                                            (wrapIndex) {
                                          final wrapDailyRecordRecord =
                                              wrapDailyRecordRecordList[
                                                  wrapIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Transform.rotate(
                                                angle: 0.0,
                                                child: Visibility(
                                                  visible: wrapDailyRecordRecord
                                                          .candynum ==
                                                      0,
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      setState(() {
                                                        FFAppState().pagename =
                                                            'candyJar';
                                                      });
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder:
                                                            (bottomSheetContext) {
                                                          return GestureDetector(
                                                            onTap: () => FocusScope
                                                                    .of(context)
                                                                .requestFocus(
                                                                    _unfocusNode),
                                                            child: Padding(
                                                              padding: MediaQuery.of(
                                                                      bottomSheetContext)
                                                                  .viewInsets,
                                                              child:
                                                                  HomeCardWidget(),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/candy1.png',
                                                        width: 50.0,
                                                        height: 50.0,
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              if (wrapDailyRecordRecord
                                                      .candynum ==
                                                  1)
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      FFAppState().pagename =
                                                          'candyJar';
                                                    });
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder:
                                                          (bottomSheetContext) {
                                                        return GestureDetector(
                                                          onTap: () => FocusScope
                                                                  .of(context)
                                                              .requestFocus(
                                                                  _unfocusNode),
                                                          child: Padding(
                                                            padding: MediaQuery.of(
                                                                    bottomSheetContext)
                                                                .viewInsets,
                                                            child:
                                                                HomeCardWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/candybear.png',
                                                      width: 50.0,
                                                      height: 50.0,
                                                      fit: BoxFit.fitWidth,
                                                    ),
                                                  ),
                                                ),
                                              if (wrapDailyRecordRecord
                                                      .candynum ==
                                                  2)
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      FFAppState().pagename =
                                                          'candyJar';
                                                    });
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder:
                                                          (bottomSheetContext) {
                                                        return GestureDetector(
                                                          onTap: () => FocusScope
                                                                  .of(context)
                                                              .requestFocus(
                                                                  _unfocusNode),
                                                          child: Padding(
                                                            padding: MediaQuery.of(
                                                                    bottomSheetContext)
                                                                .viewInsets,
                                                            child:
                                                                HomeCardWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/candy2.png',
                                                      width: 50.0,
                                                      height: 50.0,
                                                      fit: BoxFit.fitHeight,
                                                    ),
                                                  ),
                                                ),
                                              if (wrapDailyRecordRecord
                                                      .candynum ==
                                                  3)
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      FFAppState().pagename =
                                                          'candyJar';
                                                    });
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder:
                                                          (bottomSheetContext) {
                                                        return GestureDetector(
                                                          onTap: () => FocusScope
                                                                  .of(context)
                                                              .requestFocus(
                                                                  _unfocusNode),
                                                          child: Padding(
                                                            padding: MediaQuery.of(
                                                                    bottomSheetContext)
                                                                .viewInsets,
                                                            child:
                                                                HomeCardWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/candy3.png',
                                                      width: 50.0,
                                                      height: 50.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
                    child: FutureBuilder<int>(
                      future: queryDailyRecordRecordCount(
                        queryBuilder: (dailyRecordRecord) => dailyRecordRecord
                            .where('date',
                                isGreaterThan: (String monthString) {
                                  return "2023-0" + monthString;
                                }((_model.currentMonth + 1).toString()))
                            .where('date',
                                isLessThan: (String nextMonthString) {
                                  return "2023-0" + nextMonthString;
                                }((_model.currentMonth + 2).toString())),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          );
                        }
                        int columnCount = snapshot.data!;
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 100.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          columnCount.toString() == '0'
                                              ? '尚未收到任何糖果哦 !  試著去錄製心情吧 !'
                                              : '有在進步呢！',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF616161),
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
