import '/components/app_bar_widget.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'exchange_widget.dart' show ExchangeWidget;
import 'package:flutter/material.dart';

class ExchangeModel extends FlutterFlowModel<ExchangeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    navbarModel.dispose();
  }
}
