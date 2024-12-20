import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'games_widget.dart' show GamesWidget;
import 'package:flutter/material.dart';

class GamesModel extends FlutterFlowModel<GamesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
