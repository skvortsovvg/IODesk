import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/switcher/switcher_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - defineCurrentWeek] action in HomePage widget.
  final CurrentWeekStruct thisCurrentWeek = actions.defineCurrentWeek();
  
  // Models for switcher dynamic component.
  late FlutterFlowDynamicModels<SwitcherModel> switcherModels;

  @override
  void initState(BuildContext context) {
    switcherModels = FlutterFlowDynamicModels(() => SwitcherModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    switcherModels.dispose();
  }
}
