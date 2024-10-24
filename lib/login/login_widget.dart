import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'login_model.dart';
export 'login_model.dart';
import "package:universal_html/html.dart" as html;

import 'package:flutter/foundation.dart';
import '/flutter_flow/custom_functions.dart'; // Imports custom functions

const bool adminApp = false;

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with TickerProviderStateMixin {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.userFieldTextController ??= TextEditingController();
    _model.userFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.6, 0.6),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 30.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 150.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 30.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(-0.349, 0),
            end: const Offset(0, 0),
          ),
        ],
      ),
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
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Align(
          alignment: const AlignmentDirectional(1.0, 0.0),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: const Color(0x00E0E3E7),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  offset: const Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 5.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  width: 368.0,
                                  height: 220.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation']!),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: const Text("Вход",
                              style: TextStyle(
                                    fontFamily: 'Calibri',
                                    color: Color(0xFF101213),
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation1']!),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: const Text("Введите фамилию сотрудника",
                              style: TextStyle(
                                fontFamily: 'Calibri',
                                color: Color(0xFF57636C),
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation2']!),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 0.0, 16.0, 16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: SizedBox(
                                width: 500.0,
                                child: TextFormField(
                                  controller: _model.userFieldTextController,
                                  focusNode: _model.userFieldFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.userFieldTextController',
                                    const Duration(milliseconds: 100),
                                    () async {
                                      _model.workersList =
                                          await queryWorkersRecordOnce(
                                        queryBuilder: (workersRecord) =>
                                            workersRecord.orderBy('name'),
                                      );

                                      setState(() {});
                                    },
                                  ),
                                  autofocus: true,
                                  autofillHints: const [AutofillHints.name],
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      '9a8atn06' /* 
 */
                                      ,
                                    ),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: const Color(0xFF57636C),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFE0E3E7),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF4B39EF),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFFF5963),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFFF5963),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: const EdgeInsets.all(24.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: const Color(0xFF101213),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  keyboardType: TextInputType.name,
                                  validator: _model
                                      .userFieldTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              constraints: const BoxConstraints(
                                maxWidth: 500.0,
                              ),
                              decoration: const BoxDecoration(),
                              child: Builder(
                                builder: (context) {
                                  final fnl = (_model.workersList
                                              ?.map((e) => e)
                                              .toList()
                                              .where(
                                                  (e) => valueOrDefault<bool>(
                                                        (String searchText,
                                                                String name) {
                                                          return name
                                                                  .toLowerCase()
                                                                  .startsWith(
                                                                      searchText
                                                                          .toLowerCase()) &&
                                                              searchText != "";
                                                        }(
                                                            _model
                                                                .userFieldTextController
                                                                .text,
                                                            e.name),
                                                        true,
                                                      ))
                                              .toList()
                                              .toList() ??
                                          [])
                                      .take(5)
                                      .toList();

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: fnl.length,
                                    itemBuilder: (context, fnlIndex) {
                                      final fnlItem = fnl[fnlIndex];
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          showDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            builder: (context) {
                                              // return const Center(
                                              //   child:
                                              //       CircularProgressIndicator(),
                                              // );

                                              return Material(
                                                color:
                                                    Colors.black.withAlpha(150),
                                                child: Center(
                                                  child: Container(
                                                    constraints:
                                                        const BoxConstraints(
                                                      minWidth: 200,
                                                      minHeight: 200,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.all(16.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          SizedBox(height: 10),
                                                          CircularProgressIndicator(),
                                                          SizedBox(height: 10),
                                                          Text(
                                                            "Loading...",
                                                            style: TextStyle(
                                                                fontSize: 20),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                          // if (!_model.loginProcessing) {
                                          // showModalBottomSheet<void>(
                                          //     context: context,
                                          //     isScrollControlled: true,
                                          //     backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                                          //     isDismissible: false,
                                          //     builder: (BuildContext context) {
                                          //       return Center(
                                          //         child: Container(

                                          //           height: 500,

                                          //           color: const Color.fromARGB(184, 255, 255, 255),
                                          //           child: Image.asset(
                                          //               "images/loading.gif"),
                                          //         ),
                                          //       );
                                          //     });
                                          await actions.createFirebaseUser(
                                            fnlItem.email,
                                          );
                                          GoRouter.of(context)
                                              .prepareAuthEvent();

                                          await authManager.signInWithEmail(
                                            context,
                                            fnlItem.email,
                                            ("123456"),
                                          );

                                          if (currentUserReference != null) {
                                            if (!(valueOrDefault(
                                                    currentUserDocument?.name,
                                                    '') !=
                                                '')) {
                                              await currentUserReference!
                                                  .update(createUsersRecordData(
                                                name: fnlItem.name,
                                              ));
                                            }
                                            // } else {
                                            //   _model.loginProcessing = false;
                                            //   return;
                                            // }

                                            // FFAppState().thisCurrentWeek =
                                            //     actions.defineCurrentWeek();
                                            // setState(() {});
                                            setData(
                                                FFAppState().thisCurrentWeek);

                                            context.pushNamedAuth(
                                                'HomePage', context.mounted);
                                            Navigator.pop(
                                                context); //colse modal loading sheet
                                          }
                                        },
                                        child: ListTile(
                                          title: Text(
                                            fnlItem.name,
                                            style: const TextStyle(
                                                fontFamily: 'Calibri',
                                                fontSize: 24,
                                                letterSpacing: 0.0),
                                            // style: FlutterFlowTheme.of(context)
                                            //     .titleLarge
                                            //     // .override(
                                            //     //   // fontFamily: 'Readex Pro',
                                            //     //   letterSpacing: 0.0,
                                            //     // ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20.0,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          dense: false,
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ).animateOnPageLoad(
                          animationsMap['columnOnPageLoadAnimation']!),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(1.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (kIsWeb)
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 10.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: const Icon(
                            Icons.download,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            const url =
                                'https://raw.githubusercontent.com/skvortsovvg/IODesk/refs/heads/main/assets/files/app-release.apk';
                            html.AnchorElement anchorElement =
                                html.AnchorElement(href: url);
                            anchorElement.download = url;
                            anchorElement.click();
                            // -------------------
                            // html.window.open(
                            //     'https://raw.githubusercontent.com/skvortsovvg/IODesk/refs/heads/main/build/app/outputs/apk/release/app-release.apk',
                            //     'new tab');
                            //--------------------
                            // final ByteData bytes =
                            //     await rootBundle.load('files/IODesk.apk');
                            // final Uint8List list = bytes.buffer.asUint8List();
                            // final blob = html.Blob([list], 'application');
                            // final url = html.Url.createObjectUrlFromBlob(blob);
                            // html.AnchorElement(href: url)
                            //   ..setAttribute('download', 'IODesk.apk')
                            //   ..click();
                            // html.Url.revokeObjectUrl(url);
                          },
                        ),
                      ),
                    if (adminApp)
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 10.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: const Icon(
                            Icons.checklist_sharp,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('Dinners');
                          },
                        ),
                      ),
                    // Padding(
                    //   padding: const EdgeInsetsDirectional.fromSTEB(
                    //       0.0, 0.0, 10.0, 0.0),
                    //   child: FlutterFlowIconButton(
                    //     borderColor: Colors.transparent,
                    //     borderRadius: 30.0,
                    //     borderWidth: 1.0,
                    //     buttonSize: 60.0,
                    //     icon: const Icon(
                    //       Icons.alarm_on,
                    //       color: Colors.white,
                    //       size: 30.0,
                    //     ),
                    //     onPressed: () async {
                    //       await actions.setNotificationOnDateTime(DateTime.now().setHour(12));
                    //     },
                    //   ),
                    // ),
                    if (adminApp)
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 10.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: const Icon(
                            Icons.post_add,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('SetUpMenu');
                          },
                        ),
                      ),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 10.0),
                  child: Align(
                      alignment: Alignment.bottomRight, child: Text('v.1.7.1')))
            ],
          ),
        ),
      ),
    );
  }
}
