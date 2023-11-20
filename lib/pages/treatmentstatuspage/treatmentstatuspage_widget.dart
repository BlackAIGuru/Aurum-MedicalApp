import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'treatmentstatuspage_model.dart';
export 'treatmentstatuspage_model.dart';

class TreatmentstatuspageWidget extends StatefulWidget {
  const TreatmentstatuspageWidget({Key? key}) : super(key: key);

  @override
  _TreatmentstatuspageWidgetState createState() =>
      _TreatmentstatuspageWidgetState();
}

class _TreatmentstatuspageWidgetState extends State<TreatmentstatuspageWidget> {
  late TreatmentstatuspageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TreatmentstatuspageModel());
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

    return FutureBuilder<ApiCallResponse>(
      future: PatientDataCall.call(
        pname: FFAppState().pname,
        pid: FFAppState().pid,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitFadingCircle(
                  color: Color(0xFF1032B8),
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        final treatmentstatuspagePatientDataResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).lineColor,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(-1.00, 0.00),
                      child: FlutterFlowIconButton(
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
                          context.pushNamed('Searchresult');
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Asset_1@4x-8.png',
                        width: 239.0,
                        height: 50.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(1.00, 0.00),
                      child: FlutterFlowIconButton(
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
                    ),
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
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.00, -1.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 80.0, 15.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).accent4,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 9.0,
                                      color: Color(0x33000000),
                                      offset: Offset(0.0, 2.0),
                                      spreadRadius: 4.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(50.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Color(0xD61D2428),
                                  ),
                                ),
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, -1.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 10.0),
                                          child: Container(
                                            width: 120.0,
                                            height: 120.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/maximilian-keller.1024x1024.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, -1.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: Text(
                                            PatientDataCall.pname(
                                              treatmentstatuspagePatientDataResponse
                                                  .jsonBody,
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: Color(0xFF1032B8),
                                                  fontSize: 27.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.00, 0.00),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  3.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'ID: ${PatientDataCall.pid(
                                                          treatmentstatuspagePatientDataResponse
                                                              .jsonBody,
                                                        ).toString()}',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              fontSize: 20.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Opacity(
                                                  opacity: 0.8,
                                                  child: SizedBox(
                                                    height: 20.0,
                                                    child: VerticalDivider(
                                                      thickness: 1.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.00, 0.00),
                                                    child: Text(
                                                      'Male',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                fontSize: 20.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                                Opacity(
                                                  opacity: 0.8,
                                                  child: SizedBox(
                                                    height: 20.0,
                                                    child: VerticalDivider(
                                                      thickness: 1.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.00, 0.00),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  3.0,
                                                                  0.0),
                                                      child: Text(
                                                        PatientDataCall.pdob(
                                                          treatmentstatuspagePatientDataResponse
                                                              .jsonBody,
                                                        ).toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              fontSize: 20.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: RatingBar.builder(
                                          onRatingUpdate: (newValue) =>
                                              setState(() => _model
                                                  .ratingBarValue = newValue),
                                          itemBuilder: (context, index) =>
                                              FaIcon(
                                            FontAwesomeIcons.chevronCircleRight,
                                            color: Color(0xFF1032B8),
                                          ),
                                          direction: Axis.horizontal,
                                          initialRating:
                                              _model.ratingBarValue ??= 0.0,
                                          unratedColor: Color(0x691032B8),
                                          itemCount: 6,
                                          itemPadding: EdgeInsets.fromLTRB(
                                              2.0, 0.0, 2.0, 0.0),
                                          itemSize: 22.0,
                                          glowColor: Color(0xFF1032B8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 50.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(0.00, 0.00),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 10.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, -1.00),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                      'Selecttreatmentpage');
                                                },
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.2,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 7.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(0.0, 2.0),
                                                        spreadRadius: 3.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    border: Border.all(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .backgroundComponents,
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Flexible(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .userPlus,
                                                              color: Color(
                                                                  0xFF2E37A4),
                                                              size: 60.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        20.0),
                                                            child: Text(
                                                              'New Treatment',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        17.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(0.00, 0.00),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 5.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, -1.00),
                                              child: Container(
                                                width: double.infinity,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.2,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 7.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(0.0, 2.0),
                                                      spreadRadius: 3.0,
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .backgroundComponents,
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Flexible(
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      20.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .userEdit,
                                                            color: Color(
                                                                0xFF008F86),
                                                            size: 60.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      20.0),
                                                          child: Text(
                                                            'Current Treatment',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      17.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
          ),
        );
      },
    );
  }
}
