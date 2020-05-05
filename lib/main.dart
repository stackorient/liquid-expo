import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
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
      home: AppEntry(),
      initialRoute: RouteManager.initialRoute,
      onGenerateRoute: _routeManager.onGenerateRoute,
      navigatorKey: _routeManager.navigtor,
      navigatorObservers: [_routeManager.observer],
    );
  }
}

class AppEntry extends StatefulWidget {
  @override
  _AppEntryState createState() => _AppEntryState();
}

class _AppEntryState extends State<AppEntry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0062E7),
        title: NavBar(),
      ),
      body: HomePage(),
    );
  }
}
