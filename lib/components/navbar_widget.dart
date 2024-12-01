import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({
    super.key,
    int? pageIndex,
  }) : pageIndex = pageIndex ?? 1;

  final int pageIndex;

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget>
    with TickerProviderStateMixin {
  late NavbarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeIn,
      width: double.infinity,
      height: 91.0,
      constraints: const BoxConstraints(
        minHeight: 76.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 20.0,
            color: Color(0x25000000),
            offset: Offset(
              0.0,
              0.0,
            ),
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'Homepage',
                  queryParameters: {
                    'pageIndex': serializeParam(
                      1,
                      ParamType.int,
                    ),
                  }.withoutNulls,
                );
              },
              child: Builder(
                builder: (context) {
                  if (widget.pageIndex == 1) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wallet_outlined,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                      ].divide(const SizedBox(height: 4.0)),
                    );
                  } else {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          FFIcons.khome,
                          color: Color(0x65000000),
                          size: 24.0,
                        ),
                      ].divide(const SizedBox(height: 4.0)),
                    );
                  }
                },
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Builder(
              builder: (context) {
                if (widget.pageIndex == 2) {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FFIcons.kanalytics,
                        color: Colors.black,
                        size: 24.0,
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  );
                } else {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.gamepad,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  );
                }
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: Builder(
              builder: (context) {
                if (widget.pageIndex == 3) {
                  return Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 6.0,
                        shape: const CircleBorder(),
                        child: Container(
                          width: 65.0,
                          height: 65.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).tertiary,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('Homepage');
                            },
                            child: Icon(
                              Icons.anchor,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              size: 28.0,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['iconOnPageLoadAnimation']!),
                        ),
                      ),
                    ),
                  );
                } else {
                  return Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: 65.0,
                      height: 65.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.anchor,
                        color: Colors.white,
                        size: 32.0,
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: Builder(
              builder: (context) {
                if (widget.pageIndex == 4) {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FFIcons.khour,
                        color: Colors.black,
                        size: 24.0,
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  );
                } else {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sensors_outlined,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  );
                }
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: Builder(
              builder: (context) {
                if (widget.pageIndex == 5) {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FFIcons.kuser,
                        color: Colors.black,
                        size: 24.0,
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  );
                } else {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  );
                }
              },
            ),
          ),
        ]
            .divide(const SizedBox(width: 8.0))
            .addToStart(const SizedBox(width: 14.0))
            .addToEnd(const SizedBox(width: 14.0)),
      ),
    );
  }
}
