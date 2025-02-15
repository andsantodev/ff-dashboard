import '/componentes/menu_horizontal/menu_horizontal_widget.dart';
import '/componentes/menu_vertical/menu_vertical_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'formulario_page_widget.dart' show FormularioPageWidget;
import 'package:flutter/material.dart';

class FormularioPageModel extends FlutterFlowModel<FormularioPageWidget> {
  ///  Local state fields for this page.

  String? menuHorizontal = '';

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for MenuVertical component.
  late MenuVerticalModel menuVerticalModel1;
  // Model for MenuHorizontal component.
  late MenuHorizontalModel menuHorizontalModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // Model for MenuVertical component.
  late MenuVerticalModel menuVerticalModel2;

  @override
  void initState(BuildContext context) {
    menuVerticalModel1 = createModel(context, () => MenuVerticalModel());
    menuHorizontalModel = createModel(context, () => MenuHorizontalModel());
    menuVerticalModel2 = createModel(context, () => MenuVerticalModel());
  }

  @override
  void dispose() {
    menuVerticalModel1.dispose();
    menuHorizontalModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    textFieldFocusNode8?.dispose();
    textController8?.dispose();

    textFieldFocusNode9?.dispose();
    textController9?.dispose();

    menuVerticalModel2.dispose();
  }
}
