import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'centrodeayuda_model.dart';
export 'centrodeayuda_model.dart';

class CentrodeayudaWidget extends StatefulWidget {
  const CentrodeayudaWidget({super.key});

  @override
  State<CentrodeayudaWidget> createState() => _CentrodeayudaWidgetState();
}

class _CentrodeayudaWidgetState extends State<CentrodeayudaWidget> {
  late CentrodeayudaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CentrodeayudaModel());
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
                '🛠️ Centro de Ayuda Rachi 🚗\n¿Tienes alguna duda? ¡Estamos aquí para ayudarte!\n\nEn el Centro de Ayuda de Rachi, te ofrecemos soporte rápido y soluciones claras para que disfrutes al máximo tu experiencia en nuestra app.\n\n🔹 ¿Qué puedes hacer?\n\n🛒 Obtener ayuda con tus compras, envíos o devoluciones.\n⚙️ Resolver problemas técnicos de la aplicación.\n💬 Contactar con nuestro equipo de soporte si necesitas asistencia personalizada.\nTu comodidad y confianza son nuestra prioridad. Si no encuentras lo que buscas, ¡no dudes en escribirnos! Estamos disponibles para ayudarte a cualquier hora.\n\nAtendemos todo esto y mas!, envianos un correo a Correo@mail.com! estaremos para ayudarte.\n\n🚀 Rachi: Porque tu vehículo y tu experiencia merecen lo mejor.',
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
