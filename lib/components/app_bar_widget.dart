import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app_bar_model.dart';
export 'app_bar_model.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({
    super.key,
    String? namePage,
    this.nameCoin,
    bool? moreOptions,
  })  : namePage = namePage ?? 'home',
        moreOptions = moreOptions ?? true;

  final String namePage;
  final String? nameCoin;
  final bool moreOptions;

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  late AppBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 121.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/4a3ee947aa4e02e8ada74ce0eb120dac.jpg',
          ).image,
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(30.0, 50.0, 30.0, 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: const BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Untitled_design_(1).png',
                  width: 146.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Builder(
                  builder: (context) {
                    if (widget.nameCoin == 'bitcoin') {
                      return Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: SvgPicture.asset(
                            'assets/images/logos_bitcoin.svg',
                            width: 30.0,
                            height: 30.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    } else {
                      return Container(
                        decoration: const BoxDecoration(),
                      );
                    }
                  },
                ),
                Text(
                  valueOrDefault<String>(
                    widget.namePage,
                    'Home',
                  ),
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
            Builder(
              builder: (context) {
                if (widget.moreOptions) {
                  return Icon(
                    Icons.more_vert,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 26.0,
                  );
                } else {
                  return Container(
                    width: 26.0,
                    height: 26.0,
                    decoration: const BoxDecoration(),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
