import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'questionpage_model.dart';
export 'questionpage_model.dart';

class QuestionpageWidget extends StatefulWidget {
  const QuestionpageWidget({Key? key}) : super(key: key);

  @override
  _QuestionpageWidgetState createState() => _QuestionpageWidgetState();
}

class _QuestionpageWidgetState extends State<QuestionpageWidget> {
  late QuestionpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionpageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).lineColor,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed('Selectionpage');
                },
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Asset_1@4x-8.png',
                  width: 200.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                ),
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 40.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.logout,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  GoRouter.of(context).prepareAuthEvent();
                  await authManager.signOut();
                  GoRouter.of(context).clearRedirectLocation();

                  context.goNamedAuth('Loginpage', context.mounted);
                },
              ),
            ],
          ),
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              'Xavi Hernandez (12 Aug, 1992)',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    fontSize: 20.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                    child: SingleChildScrollView(
                      controller: _model.columnController,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await _model.listViewController?.animateTo(
                                _model.listViewController!.position
                                    .maxScrollExtent,
                                duration: Duration(milliseconds: 100),
                                curve: Curves.ease,
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Text(
                                    FFAppState().selected,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 25.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Text(
                                    'Health and Well-being Diagnostic',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 20.0,
                                        ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) {
                                    final section = getJsonField(
                                      FFAppState().quesTion,
                                      r'''$.sections''',
                                    ).toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: section.length,
                                      itemBuilder: (context, sectionIndex) {
                                        final sectionItem =
                                            section[sectionIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Flexible(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Text(
                                                        getJsonField(
                                                          sectionItem,
                                                          r'''$.section_title''',
                                                        ).toString(),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  fontSize:
                                                                      26.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final ques = getJsonField(
                                                    sectionItem,
                                                    r'''$.questions''',
                                                  ).toList();
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: List.generate(
                                                        ques.length,
                                                        (quesIndex) {
                                                      final quesItem =
                                                          ques[quesIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    10.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              '${getJsonField(
                                                                quesItem,
                                                                r'''$.idx''',
                                                              ).toString()}. ${getJsonField(
                                                                quesItem,
                                                                r'''$.question''',
                                                              ).toString()}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Noto Serif',
                                                                    fontSize:
                                                                        22.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            Builder(
                                                              builder:
                                                                  (context) {
                                                                final choice =
                                                                    getJsonField(
                                                                  quesItem,
                                                                  r'''$.choices''',
                                                                ).toList();
                                                                return Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: List
                                                                      .generate(
                                                                          choice
                                                                              .length,
                                                                          (choiceIndex) {
                                                                    final choiceItem =
                                                                        choice[
                                                                            choiceIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          setState(
                                                                              () {
                                                                            FFAppState().updateSumAtIndex(
                                                                              getJsonField(
                                                                                    quesItem,
                                                                                    r'''$.idx''',
                                                                                  ) -
                                                                                  1,
                                                                              (e) => e
                                                                                ..idxscore = getJsonField(
                                                                                  choiceItem,
                                                                                  r'''$.points''',
                                                                                )
                                                                                ..selected = getJsonField(
                                                                                  choiceItem,
                                                                                  r'''$.option''',
                                                                                ).toString(),
                                                                            );
                                                                          });
                                                                        },
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            if (valueOrDefault<String>(
                                                                                  FFAppState()
                                                                                      .Sum[getJsonField(
                                                                                            quesItem,
                                                                                            r'''$.idx''',
                                                                                          ) -
                                                                                          1]
                                                                                      .selected,
                                                                                  '-',
                                                                                ) ==
                                                                                getJsonField(
                                                                                  choiceItem,
                                                                                  r'''$.option''',
                                                                                ))
                                                                              Icon(
                                                                                Icons.check_circle_outlined,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 28.0,
                                                                              ),
                                                                            if (valueOrDefault<String>(
                                                                                  FFAppState()
                                                                                      .Sum[getJsonField(
                                                                                            quesItem,
                                                                                            r'''$.idx''',
                                                                                          ) -
                                                                                          1]
                                                                                      .selected,
                                                                                  '-',
                                                                                ) !=
                                                                                getJsonField(
                                                                                  choiceItem,
                                                                                  r'''$.option''',
                                                                                ))
                                                                              Icon(
                                                                                Icons.circle_outlined,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 28.0,
                                                                              ),
                                                                            Text(
                                                                              getJsonField(
                                                                                choiceItem,
                                                                                r'''$.option''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Mukta',
                                                                                    fontSize: 20.0,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }),
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      controller: _model.listViewController,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 40.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        setState(() {
                          FFAppState().score = (List<int> var1) {
                            return var1
                                .reduce((value, element) => value + element);
                          }(FFAppState().Sum.map((e) => e.idxscore).toList());
                        });
                      },
                      text: 'Submit',
                      options: FFButtonOptions(
                        width: 370.0,
                        height: 44.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
