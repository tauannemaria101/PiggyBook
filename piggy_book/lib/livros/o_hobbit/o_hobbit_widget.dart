import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'o_hobbit_model.dart';
export 'o_hobbit_model.dart';

class OHobbitWidget extends StatefulWidget {
  const OHobbitWidget({super.key});

  @override
  State<OHobbitWidget> createState() => _OHobbitWidgetState();
}

class _OHobbitWidgetState extends State<OHobbitWidget> {
  late OHobbitModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OHobbitModel());
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
                            'assets/images/91M9xPIf10L._AC_UF1000,1000_QL80_.jpg',
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
                                  text:
                                      'O Hobbit                                                                                                                                                      ',
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
                                  text: 'J.R.R. Tolkien\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.0,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                const TextSpan(
                                  text: 'Páginas: 300',
                                  style: TextStyle(),
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
                  'Esta clássica história de fantasia segue Bilbo Bolseiro, um hobbit que é inesperadamente recrutado por um grupo de anões e o mago Gandalf para uma aventura épica. Juntos, eles partem em uma jornada para recuperar um tesouro guardado pelo dragão Smaug, enfrentando criaturas mágicas e desafios ao longo do caminho. O livro é uma introdução ao mundo da Terra Média e é repleto de amizade, coragem e descoberta.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: StreamBuilder<List<LivrosRecord>>(
                  stream: queryLivrosRecord(),
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
                    List<LivrosRecord> buttonLivrosRecordList = snapshot.data!;

                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onLongPress: () async {
                        await _model.hobbit!.reference.delete();
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              content: const Text('Seu livro foi removido!'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: const Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: FFButtonWidget(
                        onPressed: () async {
                          var livrosRecordReference =
                              LivrosRecord.collection.doc('hobbit');
                          await livrosRecordReference
                              .set(createLivrosRecordData(
                            livroImagem:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/piggy-book-a23t21/assets/eplecbvib5pp/91M9xPIf10L._AC_UF1000%2C1000_QL80_.jpg',
                          ));
                          _model.hobbit = LivrosRecord.getDocumentFromData(
                              createLivrosRecordData(
                                livroImagem:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/piggy-book-a23t21/assets/eplecbvib5pp/91M9xPIf10L._AC_UF1000%2C1000_QL80_.jpg',
                              ),
                              livrosRecordReference);
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                content: const Text('Seu livro foi adicionado!'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: const Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );

                          safeSetState(() {});
                        },
                        text: 'Adicionar Livro',
                        icon: const FaIcon(
                          FontAwesomeIcons.solidBookmark,
                          size: 17.0,
                        ),
                        options: FFButtonOptions(
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
