import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'exchange_sell_confirm_widget.dart' show ExchangeSellConfirmWidget;
import 'package:flutter/material.dart';

class ExchangeSellConfirmModel
    extends FlutterFlowModel<ExchangeSellConfirmWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
  }
}
