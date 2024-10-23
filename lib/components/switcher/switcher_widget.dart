import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/modal_menu_show/modal_menu_show_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'switcher_model.dart';
export 'switcher_model.dart';

import '/flutter_flow/custom_functions.dart' as functions;

class SwitcherWidget extends StatefulWidget {
  const SwitcherWidget({
    super.key,
    this.parameter1,
    required this.parameter2,
    required this.parameter3,
    required this.parameter4,
    required this.doc,
  });

  final bool? parameter1;
  final String? parameter2;
  final String? parameter3;
  final DateTime parameter4;
  final DocumentReference? doc;

  @override
  State<SwitcherWidget> createState() => _SwitcherWidgetState();
}

class _SwitcherWidgetState extends State<SwitcherWidget> {
  late SwitcherModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitcherModel());

    _model.switchValue = widget.parameter1!;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 500.0,
      ),
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 30.0, 0.0),
            child: Switch.adaptive(
              value: _model.switchValue!,
              onChanged: (DateTime.now().isAfter(widget.parameter4.previousDayNoon())) ? null :
              (newValue) async {
                setState(() => _model.switchValue = newValue);
                if (newValue) {
                  await widget.doc!.update({
                    ...createDinnersRecordData(
                      reserved: _model.switchValue,
                    ),
                    ...mapToFirestore(
                      {
                        'updated_at': FieldValue.serverTimestamp(),
                      },
                    ),
                  });
                } else {
                  await widget.doc!.update({
                    ...createDinnersRecordData(
                      reserved: _model.switchValue,
                    ),
                    ...mapToFirestore(
                      {
                        'updated_at': FieldValue.serverTimestamp(),
                      },
                    ),
                  });
                }
              },
              activeColor: Colors.deepPurpleAccent,
              activeTrackColor: FlutterFlowTheme.of(context).alternate,
              inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
              inactiveThumbColor: (DateTime.now().isAfter(widget.parameter4.previousDayNoon()))
                  ? Colors.grey 
                  : FlutterFlowTheme.of(context).accent1,
            ),
          ),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    widget.parameter2!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Text(
                  widget.parameter3!,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: ModalMenuShowWidget(
                        day: widget.parameter4,
                      ),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              },
              child: const FaIcon(
                FontAwesomeIcons.listAlt,
                color: Color(0xA74B39EF),
                size: 35.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
