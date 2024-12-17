import '/flutter_flow/flutter_flow_util.dart';
import 'inicioy_creacionde_usuario_widget.dart'
    show InicioyCreaciondeUsuarioWidget;
import 'package:flutter/material.dart';

class InicioyCreaciondeUsuarioModel
    extends FlutterFlowModel<InicioyCreaciondeUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for password_CreateConfirm widget.
  FocusNode? passwordCreateConfirmFocusNode;
  TextEditingController? passwordCreateConfirmTextController;
  late bool passwordCreateConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateConfirmTextControllerValidator;
  // State field(s) for Direcciondelcorreo widget.
  FocusNode? direcciondelcorreoFocusNode;
  TextEditingController? direcciondelcorreoTextController;
  String? Function(BuildContext, String?)?
      direcciondelcorreoTextControllerValidator;
  // State field(s) for Contrasea widget.
  FocusNode? contraseaFocusNode;
  TextEditingController? contraseaTextController;
  late bool contraseaVisibility;
  String? Function(BuildContext, String?)? contraseaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCreateConfirmVisibility = false;
    contraseaVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordCreateConfirmFocusNode?.dispose();
    passwordCreateConfirmTextController?.dispose();

    direcciondelcorreoFocusNode?.dispose();
    direcciondelcorreoTextController?.dispose();

    contraseaFocusNode?.dispose();
    contraseaTextController?.dispose();
  }
}
