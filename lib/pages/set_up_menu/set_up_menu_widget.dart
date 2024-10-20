import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'set_up_menu_model.dart';
export 'set_up_menu_model.dart';

class SetUpMenuWidget extends StatefulWidget {
  const SetUpMenuWidget({super.key});

  @override
  State<SetUpMenuWidget> createState() => _SetUpMenuWidgetState();
}

class _SetUpMenuWidgetState extends State<SetUpMenuWidget> {
  late SetUpMenuModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetUpMenuModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.thisCurrentWeek = actions.defineCurrentWeek();
      FFAppState().currentDayMenu = functions.weekStart();
      setState(() {});
    });

    _model.dishInputTextController ??= TextEditingController();
    _model.dishInputFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 300.0,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF4B39EF),
                            Color(0xFFFF5963),
                            Color(0xFFEE8B60)
                          ],
                          stops: [0.0, 0.5, 1.0],
                          begin: AlignmentDirectional(-1.0, -1.0),
                          end: AlignmentDirectional(1.0, 1.0),
                        ),
                      ),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0x00FFFFFF), Colors.white],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Container(
                      height: 115.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 35.0),
                                      child: Text(
                                        'Рабочая неделя: ${dateTimeFormat(
                                          'dd.MM',
                                          _model.thisCurrentWeek?.begins,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )}-${dateTimeFormat(
                                          'dd.MM',
                                          _model.thisCurrentWeek?.ends,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        )}',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 20.0, 35.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                icon: const Icon(
                                  Icons.login_outlined,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                onPressed: () async {
                                  GoRouter.of(context).prepareAuthEvent();
                                  await authManager.signOut();
                                  GoRouter.of(context).clearRedirectLocation();

                                  context.goNamedAuth('Login', context.mounted);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: FlutterFlowTheme.of(context).accent1,
                        icon: Icon(
                          Icons.chevron_left_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          if (FFAppState().currentDayMenu ==
                              _model.thisCurrentWeek?.monday) {
                            FFAppState().currentDayMenu =
                                _model.thisCurrentWeek?.thursday;
                          } else {
                            if (FFAppState().currentDayMenu ==
                                _model.thisCurrentWeek?.tuesday) {
                              FFAppState().currentDayMenu =
                                  _model.thisCurrentWeek?.monday;
                            } else {
                              if (FFAppState().currentDayMenu ==
                                  _model.thisCurrentWeek?.wednesday) {
                                FFAppState().currentDayMenu =
                                    _model.thisCurrentWeek?.tuesday;
                              } else {
                                FFAppState().currentDayMenu =
                                    _model.thisCurrentWeek?.wednesday;
                              }
                            }
                          }
                          setState(() {});
                        },
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        key: const ValueKey('j'),
                        dateTimeFormat(
                          'MMMMEEEEd',
                          FFAppState().currentDayMenu,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: FlutterFlowTheme.of(context).accent1,
                        icon: Icon(
                          Icons.chevron_right_sharp,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          if (FFAppState().currentDayMenu ==
                              _model.thisCurrentWeek?.monday) {
                            FFAppState().currentDayMenu =
                                _model.thisCurrentWeek?.tuesday;
                          } else {
                            if (FFAppState().currentDayMenu ==
                                _model.thisCurrentWeek?.tuesday) {
                              FFAppState().currentDayMenu =
                                  _model.thisCurrentWeek?.wednesday;
                            } else {
                              if (FFAppState().currentDayMenu ==
                                  _model.thisCurrentWeek?.wednesday) {
                                FFAppState().currentDayMenu =
                                    _model.thisCurrentWeek?.thursday;
                              } else {
                                FFAppState().currentDayMenu =
                                    _model.thisCurrentWeek?.monday;
                              }
                            }
                          }
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: StreamBuilder<List<MenusRecord>>(
                          stream: queryMenusRecord(
                            queryBuilder: (menusRecord) => menusRecord
                                .where(
                                  'day',
                                  isEqualTo: FFAppState().currentDayMenu,
                                )
                                .orderBy('position'),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<MenusRecord> listViewMenusRecordList =
                                snapshot.data!;

                            return ReorderableListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewMenusRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewMenusRecord =
                                    listViewMenusRecordList[listViewIndex];
                                return Container(
                                  key: ValueKey("ListView_qmjzf904" '_' +
                                      listViewIndex.toString()),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderRadius: 20.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        icon: Icon(
                                          Icons.delete_forever_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          await listViewMenusRecord.reference
                                              .delete();
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Text(
                                          listViewMenusRecord.dish,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              onReorder: (int reorderableOldIndex,
                                  int reorderableNewIndex) async {
                                await listViewMenusRecordList[
                                        reorderableOldIndex]
                                    .reference
                                    .update(createMenusRecordData(
                                      position: reorderableNewIndex,
                                    ));

                                await listViewMenusRecordList[
                                        reorderableNewIndex]
                                    .reference
                                    .update(createMenusRecordData(
                                      position: reorderableOldIndex,
                                    ));

                                setState(() {});
                              },
                            );
                          },
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent1,
                      ),
                      Container(
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.dishInputTextController,
                                    focusNode: _model.dishInputFocusNode,
                                    onFieldSubmitted: (_) async {
                                      _model.dishesCount =
                                          await queryMenusRecordCount(
                                        queryBuilder: (menusRecord) =>
                                            menusRecord.where(
                                          'day',
                                          isEqualTo:
                                              FFAppState().currentDayMenu,
                                        ),
                                      );

                                      await MenusRecord.collection
                                          .doc()
                                          .set(createMenusRecordData(
                                            day: FFAppState().currentDayMenu,
                                            dish: _model
                                                .dishInputTextController.text,
                                            position: (_model.dishesCount!) + 1,
                                          ));
                                      setState(() {
                                        _model.dishInputTextController?.clear();
                                        _model.dishInputFocusNode?.requestFocus(); //SVG
                                      });


                                    },
                                    autofocus: true,
                                    textInputAction: TextInputAction.done,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        '20qixci0' /* Введите название блюда... */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    validator: _model
                                        .dishInputTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      _model.dishesCount =
                                          await queryMenusRecordCount(
                                        queryBuilder: (menusRecord) =>
                                            menusRecord.where(
                                          'day',
                                          isEqualTo:
                                              FFAppState().currentDayMenu,
                                        ),
                                      );

                                      await MenusRecord.collection
                                          .doc()
                                          .set(createMenusRecordData(
                                            day: FFAppState().currentDayMenu,
                                            dish: _model
                                                .dishInputTextController.text,
                                            position:
                                                (_model.dishesCount!) + 1,
                                          ));
                                      setState(() {
                                        _model.dishInputTextController?.clear();
                                      });

                                      _model.dishInputFocusNode?.requestFocus(); //SVG
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      '8sffcois' /* 
 */
                                      ,
                                    ),
                                    icon: const Icon(
                                      Icons.add_circle_outline,
                                      size: 25.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
