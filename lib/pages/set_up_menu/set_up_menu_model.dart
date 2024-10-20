import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'set_up_menu_widget.dart' show SetUpMenuWidget;
import 'package:flutter/material.dart';

class SetUpMenuModel extends FlutterFlowModel<SetUpMenuWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - defineCurrentWeek] action in SetUpMenu widget.
  CurrentWeekStruct? thisCurrentWeek;
  // State field(s) for DishInput widget.
  FocusNode? dishInputFocusNode;
  TextEditingController? dishInputTextController;
  String? Function(BuildContext, String?)? dishInputTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in DishInput widget.
  int? dishesCount;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? dishesCountButton;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    dishInputFocusNode?.dispose();
    dishInputTextController?.dispose();
  }
}
