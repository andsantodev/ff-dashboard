import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'menu_vertical_model.dart';
export 'menu_vertical_model.dart';

class MenuVerticalWidget extends StatefulWidget {
  const MenuVerticalWidget({
    super.key,
    this.parameter1,
  });

  final String? parameter1;

  @override
  State<MenuVerticalWidget> createState() => _MenuVerticalWidgetState();
}

class _MenuVerticalWidgetState extends State<MenuVerticalWidget> {
  late MenuVerticalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuVerticalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 264.0,
      decoration: BoxDecoration(
        color: Color(0xFF1E1E2D),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 24.0, 30.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (_model.showSubmenu == 'submenu_1') {
                          _model.showSubmenu = null;
                          safeSetState(() {});
                        } else {
                          _model.showSubmenu = 'submenu_1';
                          safeSetState(() {});
                        }
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Icon(
                                    Icons.home_outlined,
                                    color: () {
                                      if (widget.parameter1 == 'submenu_1') {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryBackground;
                                      } else if (_model.mouseRegionHovered1 ==
                                          true) {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryBackground;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .accent4;
                                      }
                                    }(),
                                    size: 24.0,
                                  ),
                                ),
                                Text(
                                  'Menu 1',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: () {
                                          if (widget.parameter1 ==
                                              'submenu_1') {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryBackground;
                                          } else if (_model
                                                  .mouseRegionHovered1 ==
                                              true) {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryBackground;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .accent4;
                                          }
                                        }(),
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                            if (_model.showSubmenu != 'submenu_1')
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: () {
                                  if (widget.parameter1 == 'submenu_1') {
                                    return FlutterFlowTheme.of(context)
                                        .secondaryBackground;
                                  } else if (_model.mouseRegionHovered1 ==
                                      true) {
                                    return FlutterFlowTheme.of(context)
                                        .secondaryBackground;
                                  } else {
                                    return FlutterFlowTheme.of(context).accent4;
                                  }
                                }(),
                                size: 24.0,
                              ),
                            if (_model.showSubmenu == 'submenu_1')
                              Icon(
                                Icons.keyboard_arrow_up,
                                color: () {
                                  if (widget.parameter1 == 'submenu_1') {
                                    return FlutterFlowTheme.of(context)
                                        .secondaryBackground;
                                  } else if (_model.mouseRegionHovered1 ==
                                      true) {
                                    return FlutterFlowTheme.of(context)
                                        .secondaryBackground;
                                  } else {
                                    return FlutterFlowTheme.of(context).accent4;
                                  }
                                }(),
                                size: 24.0,
                              ),
                          ],
                        ),
                      ),
                    ),
                    onEnter: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered1 = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered1 = false);
                    }),
                  ),
                  if (_model.showSubmenu == 'submenu_1')
                    Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Container(
                              height: 40.0,
                              decoration: BoxDecoration(),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.goNamed(
                                    'HomePage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );

                                  safeSetState(() {});
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 12.0, 0.0),
                                      child: Icon(
                                        Icons.circle_sharp,
                                        color:
                                            _model.mouseRegionHovered2 == true
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .accent4,
                                        size: 6.0,
                                      ),
                                    ),
                                    Text(
                                      'Dashboard',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: _model.mouseRegionHovered2 ==
                                                    true
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .accent4,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered2 = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered2 = false);
                            }),
                          ),
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Container(
                              height: 40.0,
                              decoration: BoxDecoration(),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.goNamed(
                                    'FormularioPage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 12.0, 0.0),
                                      child: Icon(
                                        Icons.circle_sharp,
                                        color:
                                            _model.mouseRegionHovered3 == true
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .accent4,
                                        size: 6.0,
                                      ),
                                    ),
                                    Text(
                                      'Formulário',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: _model.mouseRegionHovered3 ==
                                                    true
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .accent4,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered3 = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered3 = false);
                            }),
                          ),
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Container(
                              height: 40.0,
                              decoration: BoxDecoration(),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.goNamed(
                                    'TabelaPage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 12.0, 0.0),
                                      child: Icon(
                                        Icons.circle_sharp,
                                        color:
                                            _model.mouseRegionHovered4 == true
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .accent4,
                                        size: 6.0,
                                      ),
                                    ),
                                    Text(
                                      'Tabela',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: _model.mouseRegionHovered4 ==
                                                    true
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .accent4,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered4 = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered4 = false);
                            }),
                          ),
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Container(
                              height: 40.0,
                              decoration: BoxDecoration(),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.goNamed(
                                    'GridPage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 12.0, 0.0),
                                      child: Icon(
                                        Icons.circle_sharp,
                                        color:
                                            _model.mouseRegionHovered5 == true
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .accent4,
                                        size: 6.0,
                                      ),
                                    ),
                                    Text(
                                      'Grid',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: _model.mouseRegionHovered5 ==
                                                    true
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .accent4,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered5 = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered5 = false);
                            }),
                          ),
                        ],
                      ),
                    ),
                  MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (_model.showSubmenu == 'submenu_2') {
                          _model.showSubmenu = null;
                          safeSetState(() {});
                        } else {
                          _model.showSubmenu = 'submenu_2';
                          safeSetState(() {});
                        }
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Icon(
                                    Icons.person_outline,
                                    color: () {
                                      if (widget.parameter1 == 'submenu_2') {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryBackground;
                                      } else if (_model.mouseRegionHovered6 ==
                                          true) {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryBackground;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .accent4;
                                      }
                                    }(),
                                    size: 24.0,
                                  ),
                                ),
                                Text(
                                  'Menu 2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: () {
                                          if (widget.parameter1 ==
                                              'submenu_2') {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryBackground;
                                          } else if (_model
                                                  .mouseRegionHovered6 ==
                                              true) {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryBackground;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .accent4;
                                          }
                                        }(),
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ],
                            ),
                            if (_model.showSubmenu != 'submenu_2')
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: () {
                                  if (widget.parameter1 == 'submenu_2') {
                                    return FlutterFlowTheme.of(context)
                                        .secondaryBackground;
                                  } else if (_model.mouseRegionHovered6 ==
                                      true) {
                                    return FlutterFlowTheme.of(context)
                                        .secondaryBackground;
                                  } else {
                                    return FlutterFlowTheme.of(context).accent4;
                                  }
                                }(),
                                size: 24.0,
                              ),
                            if (_model.showSubmenu == 'submenu_2')
                              Icon(
                                Icons.keyboard_arrow_up,
                                color: () {
                                  if (widget.parameter1 == 'submenu_2') {
                                    return FlutterFlowTheme.of(context)
                                        .secondaryBackground;
                                  } else if (_model.mouseRegionHovered6 ==
                                      true) {
                                    return FlutterFlowTheme.of(context)
                                        .secondaryBackground;
                                  } else {
                                    return FlutterFlowTheme.of(context).accent4;
                                  }
                                }(),
                                size: 24.0,
                              ),
                          ],
                        ),
                      ),
                    ),
                    onEnter: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered6 = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(() => _model.mouseRegionHovered6 = false);
                    }),
                  ),
                  if (_model.showSubmenu == 'submenu_2')
                    Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Container(
                              height: 40.0,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 12.0, 0.0),
                                    child: Icon(
                                      Icons.circle_sharp,
                                      color: _model.mouseRegionHovered7 == true
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .accent4,
                                      size: 6.0,
                                    ),
                                  ),
                                  Text(
                                    'Link',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color:
                                              _model.mouseRegionHovered7 == true
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondaryBackground
                                                  : FlutterFlowTheme.of(context)
                                                      .accent4,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered7 = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered7 = false);
                            }),
                          ),
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Container(
                              height: 40.0,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 12.0, 0.0),
                                    child: Icon(
                                      Icons.circle_sharp,
                                      color: _model.mouseRegionHovered8 == true
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .accent4,
                                      size: 6.0,
                                    ),
                                  ),
                                  Text(
                                    'Link',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color:
                                              _model.mouseRegionHovered8 == true
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondaryBackground
                                                  : FlutterFlowTheme.of(context)
                                                      .accent4,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered8 = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered8 = false);
                            }),
                          ),
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Container(
                              height: 40.0,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 12.0, 0.0),
                                    child: Icon(
                                      Icons.circle_sharp,
                                      color: _model.mouseRegionHovered9 == true
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .accent4,
                                      size: 6.0,
                                    ),
                                  ),
                                  Text(
                                    'Link',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color:
                                              _model.mouseRegionHovered9 == true
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondaryBackground
                                                  : FlutterFlowTheme.of(context)
                                                      .accent4,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered9 = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered9 = false);
                            }),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
