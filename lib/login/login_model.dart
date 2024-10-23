import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for userField widget.
  FocusNode? userFieldFocusNode;
  TextEditingController? userFieldTextController;
  String? Function(BuildContext, String?)? userFieldTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in userField widget.
  List<WorkersRecord>? workersList;

  bool loginProcessing = false;
  
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    userFieldFocusNode?.dispose();
    userFieldTextController?.dispose();
  }
}
