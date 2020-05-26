import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

import '../../base/base.dart';
import '../core.dart';
import '../routing/routing.dart';

final GetIt injector = GetIt.I;

Future<void> setupInjector() async {
  // final GlobalKey<NavigatorState> _navigatorKey = ;
  // final RouteManager _routeManager = RouteManager(navKey: _navigatorKey);

  injector.registerLazySingleton<GlobalKey<NavigatorState>>(
      () => GlobalKey<NavigatorState>());

  injector.registerLazySingleton<RouteManager>(
    () => RouteManager(navKey: injector()),
  );

  injector.registerFactory<DocsBloc>(
    () => DocsBloc(),
  );
}
