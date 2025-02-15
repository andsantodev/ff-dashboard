import '/backend/api_requests/api_calls.dart';
import '/componentes/menu_horizontal/menu_horizontal_widget.dart';
import '/componentes/menu_vertical/menu_vertical_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chartPieChartColorsList = [
      FlutterFlowTheme.of(context).primary,
      FlutterFlowTheme.of(context).secondary,
      FlutterFlowTheme.of(context).accent4
    ];
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
                            child: Image.asset(
                              'assets/images/Dash_logo_2018_rgb_for_screens.png',
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
                                child: Image.asset(
                                  'assets/images/Dash_logo_2018_rgb_for_screens.png',
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
                            child: MenuHorizontalWidget(
                              parameter1: _model.menuHorizontal,
                            ),
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
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(32.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Dashboard',
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
                                                'Insira as informações necessárias para realizar o cadastro em nosso sistema.',
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
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width <
                                                      kBreakpointMedium
                                                  ? 16.0
                                                  : 8.0,
                                              0.0,
                                            ),
                                            0.0,
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width <
                                                      kBreakpointMedium
                                                  ? 16.0
                                                  : 8.0,
                                              0.0,
                                            ),
                                            24.0),
                                        child: Wrap(
                                          spacing: 32.0,
                                          runSpacing: 32.0,
                                          alignment: WrapAlignment.center,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Material(
                                              color: Colors.transparent,
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                height: 260.0,
                                                constraints: BoxConstraints(
                                                  maxWidth:
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              kBreakpointMedium
                                                          ? 1024.0
                                                          : 540.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/vector-1.png',
                                                    ).image,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(
                                                      valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 18.0
                                                        : 26.0,
                                                    0.0,
                                                  )),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            '154',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize:
                                                                      42.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineLargeFamily),
                                                                ),
                                                          ),
                                                          Text(
                                                            'Projetos em andamento',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                '37 Projetos pendentes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      fontSize:
                                                                          16.0,
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
                                                              Text(
                                                                '54%',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      fontSize:
                                                                          16.0,
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
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                LinearPercentIndicator(
                                                              percent: 0.54,
                                                              lineHeight: 12.0,
                                                              animation: true,
                                                              animateFromLastPercent:
                                                                  true,
                                                              progressColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent4,
                                                              barRadius: Radius
                                                                  .circular(
                                                                      100.0),
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation']!),
                                            Material(
                                              color: Colors.transparent,
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                height: 260.0,
                                                constraints: BoxConstraints(
                                                  maxWidth:
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              kBreakpointMedium
                                                          ? 1024.0
                                                          : 540.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(
                                                      valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 18.0
                                                        : 26.0,
                                                    0.0,
                                                  )),
                                                  child: FutureBuilder<
                                                      ApiCallResponse>(
                                                    future:
                                                        GerarUsersAleatoriosCall
                                                            .call(),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final columnGerarUsersAleatoriosResponse =
                                                          snapshot.data!;

                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                '376',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineLargeFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          42.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).headlineLargeFamily),
                                                                    ),
                                                              ),
                                                              Text(
                                                                'Profissionais',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Melhores profissionais',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final fotos = (GerarUsersAleatoriosCall.resultados(
                                                                                  columnGerarUsersAleatoriosResponse.jsonBody,
                                                                                )?.toList() ??
                                                                                [])
                                                                            .take(5)
                                                                            .toList();

                                                                        return Wrap(
                                                                          spacing:
                                                                              0.0,
                                                                          runSpacing:
                                                                              0.0,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          crossAxisAlignment:
                                                                              WrapCrossAlignment.start,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          runAlignment:
                                                                              WrapAlignment.start,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: List.generate(
                                                                              fotos.length,
                                                                              (fotosIndex) {
                                                                            final fotosItem =
                                                                                fotos[fotosIndex];
                                                                            return Container(
                                                                              width: 60.0,
                                                                              height: 60.0,
                                                                              clipBehavior: Clip.antiAlias,
                                                                              decoration: BoxDecoration(
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Image.network(
                                                                                getJsonField(
                                                                                  fotosItem,
                                                                                  r'''$.picture.thumbnail''',
                                                                                ).toString(),
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            );
                                                                          }),
                                                                        );
                                                                      },
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          60.0,
                                                                      height:
                                                                          60.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        borderRadius:
                                                                            BorderRadius.circular(100.0),
                                                                      ),
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        '+ ${GerarUsersAleatoriosCall.resultados(
                                                                          columnGerarUsersAleatoriosResponse
                                                                              .jsonBody,
                                                                        )?.length.toString()}',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 8.0)),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Material(
                                              color: Colors.transparent,
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                height: 260.0,
                                                constraints: BoxConstraints(
                                                  maxWidth:
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              kBreakpointMedium
                                                          ? 1024.0
                                                          : 540.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(
                                                      valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 18.0
                                                        : 26.0,
                                                    0.0,
                                                  )),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Lottie',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Lottie.asset(
                                                              'assets/jsons/Animation_-_1704809542957.json',
                                                              width: 300.0,
                                                              height: 180.0,
                                                              fit: BoxFit
                                                                  .contain,
                                                              reverse: true,
                                                              animate: false,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Material(
                                              color: Colors.transparent,
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                height: 260.0,
                                                constraints: BoxConstraints(
                                                  maxWidth:
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              kBreakpointMedium
                                                          ? 1024.0
                                                          : 540.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(
                                                      valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 18.0
                                                        : 26.0,
                                                    0.0,
                                                  )),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                child: Text(
                                                                  'R\$',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                              Text(
                                                                '6.540',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      fontSize:
                                                                          40.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent4,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              4.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .arrow_upward_sharp,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      Text(
                                                                        '2.2%',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).success,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            2.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 6.0)),
                                                          ),
                                                          Text(
                                                            'Faturamento de projetos',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        width: MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall
                                                                            ? 80.0
                                                                            : 100.0,
                                                                        height: MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall
                                                                            ? 80.0
                                                                            : 100.0,
                                                                        child:
                                                                            FlutterFlowPieChart(
                                                                          data:
                                                                              FFPieChartData(
                                                                            values:
                                                                                List.generate(random_data.randomInteger(3, 3), (index) => random_data.randomInteger(10, 50)),
                                                                            colors:
                                                                                chartPieChartColorsList,
                                                                            radius: [
                                                                              20.0
                                                                            ],
                                                                          ),
                                                                          donutHoleRadius:
                                                                              30.0,
                                                                          donutHoleColor:
                                                                              Colors.transparent,
                                                                          sectionLabelStyle: FlutterFlowTheme.of(context)
                                                                              .headlineSmall
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.circle_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            size:
                                                                                12.0,
                                                                          ),
                                                                          Text(
                                                                            'ACME Ltda',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 6.0)),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.circle_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                12.0,
                                                                          ),
                                                                          Text(
                                                                            'Myve App',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 6.0)),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.circle_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).accent4,
                                                                            size:
                                                                                12.0,
                                                                          ),
                                                                          Text(
                                                                            'Google Ltda',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(width: 6.0)),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            8.0)),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        24.0)),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'R\$ 1.224,45',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    'R\$ 1.24,45',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    'R\$ 1.2524,45',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        8.0)),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width <
                                                      kBreakpointMedium
                                                  ? 16.0
                                                  : 32.0,
                                              0.0,
                                            ),
                                            0.0,
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width <
                                                      kBreakpointMedium
                                                  ? 16.0
                                                  : 32.0,
                                              0.0,
                                            ),
                                            24.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Material(
                                              color: Colors.transparent,
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/12151158_4885247.jpg',
                                                    ).image,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(26.0, 26.0,
                                                          26.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        width: 700.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Text(
                                                          'Lorem ipson lorerm ipsum  lorerm ipsum  lorerm ipsum  lorerm ipsum  lorerm ipsum ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall
                                                                    ? 18.0
                                                                    : 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () {
                                                            print(
                                                                'Button pressed ...');
                                                          },
                                                          text: 'Cliquei aqui',
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
                                                                .secondaryText,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleMediumFamily),
                                                                    ),
                                                            elevation: 3.0,
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
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/7140765_3556938.svg',
                                                          width: 460.0,
                                                          height: 310.0,
                                                          fit: BoxFit.cover,
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
