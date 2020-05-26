import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';
import 'package:url_launcher/url_launcher.dart';
import 'base/base.dart';
import 'core/core.dart';

void main() async {
  await setupInjector();
  runApp(MyApp(
    routeManager: injector<RouteManager>(),
  ));
}

class MyApp extends StatelessWidget {
  final RouteManager _routeManager;
  const MyApp({
    Key key,
    @required RouteManager routeManager,
  })  : _routeManager = routeManager,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return LiquidApp(
      title: 'Liquid Expo',
      theme: theme,
      initialRoute: RouteManager.initialRoute,
      onGenerateRoute: _routeManager.onGenerateRoute,
      navigatorKey: _routeManager.navigtor,
      styleSheet: {
        "link": LStyleBlock(
          style: LSpanStyle(
            recognizerHandler: (args) {
              final href = args.get('href');
              return TapGestureRecognizer()
                ..onTap = () => href != null ? launch(href) : null;
            },
            style: TextStyle(
              color: Colors.blue[800],
            ),
          ),
        ),
      },
      navigatorObservers: [_routeManager.observer],
    );
  }
}
