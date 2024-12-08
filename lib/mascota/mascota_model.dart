import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'mascota_widget.dart' show MascotaWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MascotaModel extends FlutterFlowModel<MascotaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for Raza widget.
  FocusNode? razaFocusNode;
  TextEditingController? razaTextController;
  String? Function(BuildContext, String?)? razaTextControllerValidator;
  // State field(s) for Color widget.
  FocusNode? colorFocusNode;
  TextEditingController? colorTextController;
  String? Function(BuildContext, String?)? colorTextControllerValidator;
  // State field(s) for Edad widget.
  FocusNode? edadFocusNode;
  TextEditingController? edadTextController;
  String? Function(BuildContext, String?)? edadTextControllerValidator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    razaFocusNode?.dispose();
    razaTextController?.dispose();

    colorFocusNode?.dispose();
    colorTextController?.dispose();

    edadFocusNode?.dispose();
    edadTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();
  }
}
