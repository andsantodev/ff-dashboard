import '/componentes/menu_horizontal/menu_horizontal_widget.dart';
import '/componentes/menu_vertical/menu_vertical_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tabela_page_widget.dart' show TabelaPageWidget;
import 'package:flutter/material.dart';

class TabelaPageModel extends FlutterFlowModel<TabelaPageWidget> {
  ///  Local state fields for this page.

  String? menuHorizontal = '';

  ///  State fields for stateful widgets in this page.

  // Model for MenuVertical component.
  late MenuVerticalModel menuVerticalModel1;
  // Model for MenuHorizontal component.
  late MenuHorizontalModel menuHorizontalModel;
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
    menuVerticalModel2.dispose();
  }
}
