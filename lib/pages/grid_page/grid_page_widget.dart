import '/backend/api_requests/api_calls.dart';
import '/componentes/menu_horizontal/menu_horizontal_widget.dart';
import '/componentes/menu_vertical/menu_vertical_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'grid_page_model.dart';
export 'grid_page_model.dart';

class GridPageWidget extends StatefulWidget {
  const GridPageWidget({super.key});

  @override
  State<GridPageWidget> createState() => _GridPageWidgetState();
}

class _GridPageWidgetState extends State<GridPageWidget> {
  late GridPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GridPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Container(
          width: 264.0,
          child: Drawer(
            elevation: 16.0,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 264.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF1E1E2D),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://via.placeholder.com/500x80?text=Logo',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: wrapWithModel(
                    model: _model.menuVerticalModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: MenuVerticalWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 264.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF1E1E2D),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://via.placeholder.com/500x80?text=Logo',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.menuVerticalModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: MenuVerticalWidget(),
                      ),
                    ),
                  ],
                ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          wrapWithModel(
                            model: _model.menuHorizontalModel,
                            updateCallback: () => safeSetState(() {}),
                            child: MenuHorizontalWidget(),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 70.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                constraints: BoxConstraints(
                                  maxWidth: 1200.0,
                                ),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width <
                                                      kBreakpointMedium
                                                  ? 16.0
                                                  : 32.0,
                                              0.0,
                                            ),
                                            32.0,
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width <
                                                      kBreakpointMedium
                                                  ? 16.0
                                                  : 32.0,
                                              0.0,
                                            ),
                                            valueOrDefault<double>(
                                              () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 1.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 1.0;
                                                } else {
                                                  return 32.0;
                                                }
                                              }(),
                                              0.0,
                                            )),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Lista em Grid',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                            Text(
                                              'Aqui você consegue visualizar todos os usuários do seu aplicativo no formato Grid',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context).width <
                                                                            kBreakpointMedium
                                                                        ? 0.0
                                                                        : 28.0,
                                                                    0.0,
                                                                  ),
                                                                  28.0,
                                                                  28.0,
                                                                  0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Meus usuários',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Divider(
                                                          height: 36.0,
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent4,
                                                        ),
                                                        Expanded(
                                                          child: FutureBuilder<
                                                              ApiCallResponse>(
                                                            future:
                                                                GerarUsersAleatoriosCall
                                                                    .call(),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              final containerGerarUsersAleatoriosResponse =
                                                                  snapshot
                                                                      .data!;

                                                              return Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child:
                                                                    SingleChildScrollView(
                                                                  primary:
                                                                      false,
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            16.0),
                                                                        child:
                                                                            Builder(
                                                                          builder:
                                                                              (context) {
                                                                            final usuariosGrid = GerarUsersAleatoriosCall.resultados(
                                                                                  containerGerarUsersAleatoriosResponse.jsonBody,
                                                                                )?.toList() ??
                                                                                [];

                                                                            return Wrap(
                                                                              spacing: 20.0,
                                                                              runSpacing: 24.0,
                                                                              alignment: WrapAlignment.start,
                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                              direction: Axis.horizontal,
                                                                              runAlignment: WrapAlignment.start,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: List.generate(usuariosGrid.length, (usuariosGridIndex) {
                                                                                final usuariosGridItem = usuariosGrid[usuariosGridIndex];
                                                                                return Material(
                                                                                  color: Colors.transparent,
                                                                                  elevation: 3.0,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                  ),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                    child: Container(
                                                                                      width: 260.0,
                                                                                      height: MediaQuery.sizeOf(context).width < kBreakpointSmall ? 330.0 : 350.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        borderRadius: BorderRadius.circular(12.0),
                                                                                      ),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Stack(
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: double.infinity,
                                                                                                    height: MediaQuery.sizeOf(context).width < kBreakpointSmall ? 80.0 : 100.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: random_data.randomColor(),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                                                          0.0,
                                                                                                          valueOrDefault<double>(
                                                                                                            MediaQuery.sizeOf(context).width < kBreakpointSmall ? 20.0 : 40.0,
                                                                                                            0.0,
                                                                                                          ),
                                                                                                          0.0,
                                                                                                          0.0),
                                                                                                      child: Container(
                                                                                                        width: MediaQuery.sizeOf(context).width < kBreakpointSmall ? 100.0 : 120.0,
                                                                                                        height: MediaQuery.sizeOf(context).width < kBreakpointSmall ? 100.0 : 120.0,
                                                                                                        clipBehavior: Clip.antiAlias,
                                                                                                        decoration: BoxDecoration(
                                                                                                          shape: BoxShape.circle,
                                                                                                        ),
                                                                                                        child: Image.network(
                                                                                                          getJsonField(
                                                                                                            usuariosGridItem,
                                                                                                            r'''$.picture.large''',
                                                                                                          ).toString(),
                                                                                                          fit: BoxFit.cover,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      '${getJsonField(
                                                                                                        usuariosGridItem,
                                                                                                        r'''$.name.first''',
                                                                                                      ).toString()} ${getJsonField(
                                                                                                        usuariosGridItem,
                                                                                                        r'''$.name.last''',
                                                                                                      ).toString()}',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      getJsonField(
                                                                                                        usuariosGridItem,
                                                                                                        r'''$.email''',
                                                                                                      ).toString(),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      '${getJsonField(
                                                                                                        usuariosGridItem,
                                                                                                        r'''$.location.city''',
                                                                                                      ).toString()} / ${getJsonField(
                                                                                                        usuariosGridItem,
                                                                                                        r'''$.location.state''',
                                                                                                      ).toString()}',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ].divide(SizedBox(height: 18.0)),
                                                                                                ),
                                                                                              ),
                                                                                            ].divide(SizedBox(height: 18.0)),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                                                                                            child: FFButtonWidget(
                                                                                              onPressed: () {
                                                                                                print('Button pressed ...');
                                                                                              },
                                                                                              text: 'Ver perfil',
                                                                                              options: FFButtonOptions(
                                                                                                height: 40.0,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: FlutterFlowTheme.of(context).secondary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                                      color: Colors.white,
                                                                                                      letterSpacing: 0.0,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                        Divider(
                                                          height: 36.0,
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent4,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            valueOrDefault<
                                                                double>(
                                                              MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall
                                                                  ? 0.0
                                                                  : 1.0,
                                                              0.0,
                                                            ),
                                                            1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  28.0,
                                                                  0.0,
                                                                  28.0,
                                                                  28.0),
                                                      child: Wrap(
                                                        spacing: 12.0,
                                                        runSpacing: 12.0,
                                                        alignment:
                                                            WrapAlignment.start,
                                                        crossAxisAlignment:
                                                            WrapCrossAlignment
                                                                .start,
                                                        direction:
                                                            Axis.horizontal,
                                                        runAlignment:
                                                            WrapAlignment.start,
                                                        verticalDirection:
                                                            VerticalDirection
                                                                .down,
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'btnCancelar pressed ...');
                                                            },
                                                            text: 'Cancelar',
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent4,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                              elevation: 0.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                          FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'btnSalvar pressed ...');
                                                            },
                                                            text: 'Salvar',
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                              elevation: 0.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
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
      ),
    );
  }
}
