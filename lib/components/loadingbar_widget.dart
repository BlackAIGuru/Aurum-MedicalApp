import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'loadingbar_model.dart';
export 'loadingbar_model.dart';

class LoadingbarWidget extends StatefulWidget {
  const LoadingbarWidget({Key? key}) : super(key: key);

  @override
  _LoadingbarWidgetState createState() => _LoadingbarWidgetState();
}

class _LoadingbarWidgetState extends State<LoadingbarWidget> {
  late LoadingbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingbarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Lottie.asset(
          'assets/lottie_animations/Animation_-_1698194547584.json',
          width: 400.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          fit: BoxFit.cover,
          animate: true,
        ),
      ],
    );
  }
}
