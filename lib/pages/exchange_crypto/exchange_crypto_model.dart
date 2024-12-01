import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'exchange_crypto_widget.dart' show ExchangeCryptoWidget;
import 'package:flutter/material.dart';

class ExchangeCryptoModel extends FlutterFlowModel<ExchangeCryptoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
  }
}
