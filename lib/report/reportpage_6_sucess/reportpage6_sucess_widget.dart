import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'reportpage6_sucess_model.dart';
export 'reportpage6_sucess_model.dart';

class Reportpage6SucessWidget extends StatefulWidget {
  const Reportpage6SucessWidget({Key? key}) : super(key: key);

  @override
  _Reportpage6SucessWidgetState createState() =>
      _Reportpage6SucessWidgetState();
}

class _Reportpage6SucessWidgetState extends State<Reportpage6SucessWidget> {
  late Reportpage6SucessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Reportpage6SucessModel());
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
                      context.pushNamed('Reportpage_5_Course');
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Text(
                              'Sucesss!',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF1032B8),
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 24.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Lottie.asset(
                                  'assets/lottie_animations/Animation_-_1698194164750.json',
                                  width: 200.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                  frameRate: FrameRate(60.0),
                                  repeat: false,
                                  animate: true,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Thank you for choosing us for your diagnostics',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Text(
                              'Your diagnostics result will be delivered to you as soon as possible',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('Searchpage');
                    },
                    text: 'AGAIN',
                    options: FFButtonOptions(
                      width: 400.0,
                      height: 44.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF1032B8),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
