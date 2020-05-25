import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../base/base.dart';
import '../../base/pages/docs/docs_pages/env.dart';
import '../injector/injector.dart';
import 'routes.dart';

class RouteManager extends ChangeNotifier {
  final GlobalKey<NavigatorState> _navKey;
  final NavigatorObserver _observer = NavigatorObserver();

  String _currentRoute = homeRoute;

  static const String initialRoute = homeRoute;

  NavigatorObserver get observer => _observer;
  GlobalKey<NavigatorState> get navigtor => _navKey;

  String get currentRoute => _currentRoute;

  RouteManager({@required GlobalKey<NavigatorState> navKey})
      : assert(navKey != null),
        _navKey = navKey;

  Route onGenerateRoute(RouteSettings settings) {
    notifyListeners();
    return _generateRoute(settings.name, settings);
  }

  Route _generateRoute(String routeName, RouteSettings settings) {
    final Map<String, dynamic> args = settings.arguments;

    switch (routeName) {
      case homeRoute:
        _currentRoute = homeRoute;
        return _getRoute(HomePage(), settings);
      case docsRoute:
        _currentRoute = docsRoute;
        return _getRoute(
            BlocProvider<DocsBloc>(
              create: (context) => injector<DocsBloc>()
                ..add(LoadDocFor(intro_page, "Getting Started")),
              child: DocsPage(),
            ),
            settings);
      default:
        _currentRoute = null;
        return _getRoute(NotFoundPage(), settings);
    }
  }

  MaterialPageRoute _getRoute(Widget page, RouteSettings settings) =>
      MaterialPageRoute(
        builder: (context) => page,
        settings: settings,
      );
}
