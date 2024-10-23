import 'package:i_o_desk/flutter_flow/custom_functions.dart';

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/switcher/switcher_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';


class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // int dinnersCount = await queryDinnersRecordCount(
      //   queryBuilder: (dinnersRecord) => dinnersRecord
      //       .where(
      //         'user',
      //         isEqualTo: currentUserReference,
      //       )
      //       .where(
      //         'day',
      //         isGreaterThanOrEqualTo: _model.thisCurrentWeek.begins,
      //       )
      //       .where(
      //         'day',
      //         isLessThan: _model.thisCurrentWeek.ends,
      //       ),
      // );

      // if (dinnersCount == 0) {
      //   // Запись обеды, понедельник

      //   await DinnersRecord.collection.doc().set({
      //     ...createDinnersRecordData(
      //       user: currentUserReference,
      //       name: currentUserDocument?.name,
      //       day: _model.thisCurrentWeek.monday,
      //       reserved: false,
      //     ),
      //     ...mapToFirestore(
      //       {
      //         'created_at': FieldValue.serverTimestamp(),
      //         'updated_at': FieldValue.serverTimestamp(),
      //       },
      //     ),
      //   });
      //   // Запись обеды, вторник

      //   await DinnersRecord.collection.doc().set({
      //     ...createDinnersRecordData(
      //       user: currentUserReference,
      //       name: currentUserDocument?.name,
      //       day: _model.thisCurrentWeek.tuesday,
      //       reserved: false,
      //     ),
      //     ...mapToFirestore(
      //       {
      //         'created_at': FieldValue.serverTimestamp(),
      //         'updated_at': FieldValue.serverTimestamp(),
      //       },
      //     ),
      //   });
      //   // Запись обеды, среда

      //   await DinnersRecord.collection.doc().set({
      //     ...createDinnersRecordData(
      //       user: currentUserReference,
      //       name: currentUserDocument?.name,
      //       day: _model.thisCurrentWeek.wednesday,
      //       reserved: false,
      //     ),
      //     ...mapToFirestore(
      //       {
      //         'created_at': FieldValue.serverTimestamp(),
      //         'updated_at': FieldValue.serverTimestamp(),
      //       },
      //     ),
      //   });
      //   // Запись обеды, четверг

      //   await DinnersRecord.collection.doc().set({
      //     ...createDinnersRecordData(
      //       user: currentUserReference,
      //       name: currentUserDocument?.name,
      //       day: _model.thisCurrentWeek.thursday,
      //       reserved: false,
      //     ),
      //     ...mapToFirestore(
      //       {
      //         'created_at': FieldValue.serverTimestamp(),
      //         'updated_at': FieldValue.serverTimestamp(),
      //       },
      //     ),
      //   });

      // }
      if (FFAppState().thisCurrentWeek.begins ==  null)
      {
        dispose();
        context.pushNamed('Login');
        return;
      }     
      
      actions.setNotificationOnDateTime(FFAppState().thisCurrentWeek.friday!.noonOfDay());

      // FFAppState().thisCurrentWeek = _model.thisCurrentWeek;
      // setState(() {});
    });

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
      child: PopScope(
        onPopInvoked: (_) async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                        constraints: const BoxConstraints(
                          maxWidth: 500.0,
                        ),
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
                                    Text(
                                      'Рабочая неделя: ${dateTimeFormat(
                                        'dd.MM',
                                        _model.thisCurrentWeek.begins,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )}-${dateTimeFormat(
                                        'dd.MM',
                                        _model.thisCurrentWeek.ends,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )}',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          valueOrDefault(
                                              currentUserDocument?.name, ''),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Calibri',
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: false,
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
                                    0.0, 0.0, 10.0, 20.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  icon: const Icon(
                                    Icons.login_outlined,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    GoRouter.of(context).prepareAuthEvent();
                                    await authManager.signOut();
                                    GoRouter.of(context)
                                        .clearRedirectLocation();

                                    context.goNamedAuth(
                                        'Login', context.mounted);
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
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      key: const ValueKey('j'),
                      FFLocalizations.of(context).getText(
                        'eej5tktd' /* Обеды */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 500.0,
                    ),
                    decoration: const BoxDecoration(),
                    child: StreamBuilder<List<DinnersRecord>>(
                      stream: queryDinnersRecord(
                        queryBuilder: (dinnersRecord) => dinnersRecord
                            .where(
                              'user',
                              isEqualTo: currentUserReference,
                            )
                            .where(
                              'day',
                              isGreaterThanOrEqualTo:
                                  _model.thisCurrentWeek.begins,
                            ),
                        limit: 10,
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
                        List<DinnersRecord> listViewDinnersRecordList =
                            snapshot.data!;

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewDinnersRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewDinnersRecord =
                                listViewDinnersRecordList[listViewIndex];
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: wrapWithModel(
                                model: _model.switcherModels.getModel(
                                  listViewDinnersRecord.reference.id,
                                  listViewIndex,
                                ),
                                updateCallback: () => setState(() {}),
                                child: SwitcherWidget(
                                  key: Key(
                                    'Keywpr_${listViewDinnersRecord.reference.id}',
                                  ),
                                  parameter1: listViewDinnersRecord.reserved,
                                  parameter2: dateTimeFormat(
                                    'EEEE',
                                    listViewDinnersRecord.day!,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  parameter3: dateTimeFormat(
                                    'dd MMMM yyyy',
                                    listViewDinnersRecord.day!,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  parameter4: listViewDinnersRecord.day!.beginOfDay(),
                                  doc: listViewDinnersRecord.reference,
                                ),
                              ),
                            );
                          },
                        );
                      },
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
