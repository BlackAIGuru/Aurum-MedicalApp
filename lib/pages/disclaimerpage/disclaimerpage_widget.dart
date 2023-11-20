import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'disclaimerpage_model.dart';
export 'disclaimerpage_model.dart';

class DisclaimerpageWidget extends StatefulWidget {
  const DisclaimerpageWidget({Key? key}) : super(key: key);

  @override
  _DisclaimerpageWidgetState createState() => _DisclaimerpageWidgetState();
}

class _DisclaimerpageWidgetState extends State<DisclaimerpageWidget> {
  late DisclaimerpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DisclaimerpageModel());
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
                      context.pushNamed('Loginpage');
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.00, 0.00),
                                          child: Text(
                                            'Copyright © 2023 Aurum Medical Ltd',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: Text(
                                            'This app is owned and operated by Aurum Medical Ltd. All content, graphics, interfaces, and logos are copyrighted by Aurum Medical Ltd and protected by international copyright laws. Compiling all content and software is Aurum Medical Ltd.’s exclusive property and is protected by international copyright laws. All software used in this app is the property of Aurum Medical Ltd or its software suppliers and is protected by international copyright laws.',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 16.0,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.00, 0.00),
                                          child: Text(
                                            'Disclaimer',
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: Text(
                                            'The information provided by this app is for general holistic diagnostics purposes only. It is not intended to substitute for professional medical advice, diagnosis or treatment. Aurum Medical Ltd does not guarantee any content\'s accuracy, completeness, or usefulness and will not be held liable for any direct or indirect damages arising from using any information in this app. The content in this app reflects the views and opinions of the authors and does not represent professional advice in any manner. Reliance on any information this app provides is solely at your own risk. Aurum Medical Ltd is not liable for any losses or damages concerning the use of app content.',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 16.0,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.00, 0.00),
                                          child: Text(
                                            'User Agreement',
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: Text(
                                            'By using this app, you signify your agreement to this disclaimer. If you disagree with this disclaimer, do use this app. Your continued use of this app after posting any changes to this disclaimer constitutes your acceptance of such changes.',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 16.0,
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 5.0, 10.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              child: Checkbox(
                                value: _model.checkboxValue ??= false,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.checkboxValue = newValue!);
                                },
                                activeColor: Color(0xFF1032B8),
                                checkColor: FlutterFlowTheme.of(context).info,
                              ),
                            ),
                            Text(
                              'I agree',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 1.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                    child: FFButtonWidget(
                      onPressed: !_model.checkboxValue!
                          ? null
                          : () async {
                              context.pushNamed('Searchpage');
                            },
                      text: 'AGREE',
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
                        disabledColor: Color(0x991032B8),
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
