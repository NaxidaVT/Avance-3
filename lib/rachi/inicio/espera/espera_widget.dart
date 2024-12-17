import '/auth/base_auth_user_provider.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'espera_model.dart';
export 'espera_model.dart';

class EsperaWidget extends StatefulWidget {
  const EsperaWidget({super.key});

  @override
  State<EsperaWidget> createState() => _EsperaWidgetState();
}

class _EsperaWidgetState extends State<EsperaWidget> {
  late EsperaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EsperaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (loggedIn) {
        context.pushNamed('Menudeinicio');
      } else {
        context.pushNamed('Iniciodeapp');
      }
    });
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
        backgroundColor: const Color(0xFF0070FF),
      ),
    );
  }
}
