import 'package:flutter/material.dart';

import 'routes.dart';

class RouteManager {
  final GlobalKey<NavigatorState> _navKey;
  final NavigatorObserver _observer = NavigatorObserver();

  static const String initialRoute = homeRoute;

  NavigatorObserver get observer => _observer;
  GlobalKey<NavigatorState> get navigtor => _navKey;

  RouteManager({@required GlobalKey<NavigatorState> navKey})
      : assert(navKey != null),
        _navKey = navKey;

  Route onGenerateRoute(RouteSettings settings) {}
}
