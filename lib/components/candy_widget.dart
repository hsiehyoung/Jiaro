import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'candy_model.dart';
export 'candy_model.dart';

class CandyWidget extends StatefulWidget {
  const CandyWidget({Key? key}) : super(key: key);

  @override
  _CandyWidgetState createState() => _CandyWidgetState();
}

class _CandyWidgetState extends State<CandyWidget> {
  late CandyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CandyModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: AlignmentDirectional(-1.0, 0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/image_21.png',
              width: 50.0,
              height: 50.0,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}
