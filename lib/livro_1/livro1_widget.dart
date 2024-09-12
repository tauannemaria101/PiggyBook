import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'livro1_model.dart';
export 'livro1_model.dart';

class Livro1Widget extends StatefulWidget {
  const Livro1Widget({super.key});

  @override
  State<Livro1Widget> createState() => _Livro1WidgetState();
}

class _Livro1WidgetState extends State<Livro1Widget> {
  late Livro1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Livro1Model());
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
                alignment: AlignmentDirectional(-1.0, -1.0),
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
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    hoverIconColor: FlutterFlowTheme.of(context).primary,
                    icon: FaIcon(
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
          actions: [],
          centerTitle: true,
          elevation: 1.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 10.0, 0.0, 5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://cdn.discordapp.com/attachments/870026598794006598/1283417810675957891/terra_sonhos_capa.webp?ex=66e2eb7a&is=66e199fa&hm=a2c9c1d7e0256e2937c770d5587623fcc0b9ffe0114e5b3fbdfc0c10dfb5a71c&',
                            width: 145.0,
                            height: 240.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Terra de Sonhos e Acasos\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                TextSpan(
                                  text: 'Páginas: 305',
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
                  ],
                ),
              ),
              StyledDivider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
                lineStyle: DividerLineStyle.dashdotted,
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: RatingBar.builder(
                    onRatingUpdate: (newValue) =>
                        safeSetState(() => _model.estrelasValue = newValue),
                    itemBuilder: (context, index) => Icon(
                      Icons.star_rounded,
                      color: FlutterFlowTheme.of(context).warning,
                    ),
                    direction: Axis.horizontal,
                    initialRating: _model.estrelasValue ??= 4.0,
                    unratedColor: Color(0xFFD3D3D3),
                    itemCount: 5,
                    itemSize: 24.0,
                    glowColor: FlutterFlowTheme.of(context).warning,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                child: Text(
                  'Após a morte dos pais, Ismael volta ao interior de São Paulo para reaver sua herança. \nInundada por uma tempestade e isolada do mundo a pequena cidade de Rio das Almas está sob intervenção militar. Seus habitantes, acuados por estranhos crimes, professam uma inquietante religiosidade baseada num livro de autor desconhecido. ',
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
