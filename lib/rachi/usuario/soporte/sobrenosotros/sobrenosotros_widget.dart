import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sobrenosotros_model.dart';
export 'sobrenosotros_model.dart';

class SobrenosotrosWidget extends StatefulWidget {
  const SobrenosotrosWidget({super.key});

  @override
  State<SobrenosotrosWidget> createState() => _SobrenosotrosWidgetState();
}

class _SobrenosotrosWidgetState extends State<SobrenosotrosWidget> {
  late SobrenosotrosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SobrenosotrosModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderRadius: 30.0,
                    borderWidth: 2.0,
                    buttonSize: 44.0,
                    icon: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 25.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('Usuario');
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
              child: Text(
                '🚗 Sobre Rachi 🔧\n¡Bienvenido a Rachi! 🌟 La aplicación diseñada para los apasionados del mundo automotriz que buscan llevar sus vehículos al siguiente nivel.\n\nEn Rachi, creemos que cada vehículo tiene su propia personalidad y estilo. Nuestra misión es ofrecerte una experiencia fácil, rápida y segura para descubrir, comparar y adquirir los mejores accesorios que harán que tu auto, moto o camioneta destaque donde quiera que vayas.\n\n🔹 ¿Qué encontrarás en Rachi?\n\nAccesorios únicos y de alta calidad para cada tipo de vehículo.\nUna interfaz intuitiva y amigable para una experiencia sin complicaciones.\nRecomendaciones personalizadas según tus intereses y necesidades.\nYa sea que busques estilo, rendimiento o comodidad, en Rachi encontrarás las piezas perfectas para tu vehículo. ¡Transforma tu manejo y vive tu pasión al máximo! 🚀',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
