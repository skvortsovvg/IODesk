import '/flutter_flow/flutter_flow_util.dart';
import 'dinners_widget.dart' show DinnersWidget;
import 'package:flutter/material.dart';

class DinnersModel extends FlutterFlowModel<DinnersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
