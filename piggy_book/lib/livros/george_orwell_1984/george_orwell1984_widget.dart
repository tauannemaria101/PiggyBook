import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'george_orwell1984_model.dart';
export 'george_orwell1984_model.dart';

class GeorgeOrwell1984Widget extends StatefulWidget {
  const GeorgeOrwell1984Widget({super.key});

  @override
  State<GeorgeOrwell1984Widget> createState() => _GeorgeOrwell1984WidgetState();
}

class _GeorgeOrwell1984WidgetState extends State<GeorgeOrwell1984Widget> {
  late GeorgeOrwell1984Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeorgeOrwell1984Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          iconTheme: IconThemeData(color: FlutterFlowTheme.of(context).primary),
          automaticallyImplyLeading: true,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, -1.0),
                child: Text(
                  'PiggyBook',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 30.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(1.0, -1.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    hoverIconColor: FlutterFlowTheme.of(context).primary,
                    icon: const FaIcon(
                      FontAwesomeIcons.search,
                      color: Color(0xFFC0C0C0),
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('pesquisar_livros pressed ...');
                    },
                  ),
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: true,
          elevation: 1.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 10.0, 0.0, 5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/81StSOpmkjL._AC_UF1000,1000_QL80_.jpg',
                            width: 145.0,
                            height: 240.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 11.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '1984                                 ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                const TextSpan(
                                  text: 'George Orwell\nPáginas: 328',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.0,
                                    fontStyle: FontStyle.normal,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                      child: StreamBuilder<List<LivrosRecord>>(
                        stream: queryLivrosRecord(
                          singleRecord: true,
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
                          List<LivrosRecord> toggleIconLivrosRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final toggleIconLivrosRecord =
                              toggleIconLivrosRecordList.isNotEmpty
                                  ? toggleIconLivrosRecordList.first
                                  : null;

                          return ToggleIcon(
                            onPressed: () async {
                              await toggleIconLivrosRecord.reference.update({
                                ...mapToFirestore(
                                  {
                                    'Favorito':
                                        !toggleIconLivrosRecord.favorito,
                                  },
                                ),
                              });
                            },
                            value: toggleIconLivrosRecord!.favorito,
                            onIcon: FaIcon(
                              FontAwesomeIcons.bookmark,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 19.0,
                            ),
                            offIcon: FaIcon(
                              FontAwesomeIcons.solidBookmark,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 19.0,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              StyledDivider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
                lineStyle: DividerLineStyle.dashdotted,
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: RatingBar.builder(
                    onRatingUpdate: (newValue) =>
                        safeSetState(() => _model.estrelasValue = newValue),
                    itemBuilder: (context, index) => Icon(
                      Icons.star_rounded,
                      color: FlutterFlowTheme.of(context).warning,
                    ),
                    direction: Axis.horizontal,
                    initialRating: _model.estrelasValue ??= 4.0,
                    unratedColor: const Color(0xFFD3D3D3),
                    itemCount: 5,
                    itemSize: 24.0,
                    glowColor: FlutterFlowTheme.of(context).warning,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                child: Text(
                  'Este clássico distópico retrata um futuro totalitário onde o Big Brother vigia cada movimento. Winston Smith, um funcionário do governo, começa a questionar a opressão do regime e busca a verdade, revelando os perigos da vigilância e da manipulação da informação.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
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
