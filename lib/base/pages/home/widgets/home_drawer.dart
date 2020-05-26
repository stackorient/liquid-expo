import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:liquid_ui/liquid_ui.dart';

import '../../../../core/injector/injector.dart';
import '../../../../core/routing/route_manager.dart';
import '../../../../core/routing/routes.dart';

class HomeDrawer extends StatelessWidget {
  final Widget docsMenu;

  const HomeDrawer({Key key, this.docsMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: buildDrawerItems(context),
      ),
    );
  }

  void openPage(String routeName) {
    injector<RouteManager>()
        .navigtor
        .currentState
        .pushReplacementNamed(routeName);
  }

  Widget buildDrawerItems(context) {
    final theme = LiquidTheme.of(context);
    final _currentRoute = injector<RouteManager>().currentRoute;

    final content = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.all(20.0),
          child: Image.asset(
            'assets/logos/only_text.png',
            scale: 1.9,
          ),
        ),
        LListGroup(backgroundColor: Colors.white, flush: true, children: [
          LListItem(
            title: Text(
              'Home',
            ),
            selected: _currentRoute == homeRoute,
            enabled: _currentRoute != homeRoute,
            onTap: () => openPage(homeRoute),
          ),
          LListItem(
            title: Text(
              'Documentation',
            ),
            selected: _currentRoute == docsRoute,
            enabled: _currentRoute != docsRoute,
            onTap: () => openPage(docsRoute),
          ),
          if (docsMenu != null)
            LListItem(
              contentPadding: EdgeInsets.zero,
              title: docsMenu,
              selected: _currentRoute == docsRoute,
              enabled: _currentRoute != docsRoute,
              onTap: () => openPage(docsRoute),
            ),
          LListItem(
            title: Text(
              'Example',
            ),
            // selected: _currentRoute == exampleRoute,
            // enabled: _currentRoute != exampleRoute,
          ),
        ]),
        if (docsMenu == null) Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LIconButton(
              iconSize: 22.0,
              icon: Icon(FontAwesome.github),
              onPressed: () {},
            ),
            LIconButton(
              iconSize: 22.0,
              icon: Icon(FontAwesome.linkedin),
              onPressed: () {},
            ),
            LIconButton(
              iconSize: 22.0,
              icon: Icon(FontAwesome.youtube_play),
              onPressed: () {},
            ),
            LIconButton(
              iconSize: 22.0,
              icon: Icon(FontAwesome.instagram),
              onPressed: () {},
            ),
          ],
        ),
        LListGroup(direction: Axis.horizontal, flush: true, children: [
          LListItem(
            title: Text(
              'Sponsor',
              style: theme.typographyTheme.h6.withColor(Colors.amber[700]),
              textAlign: TextAlign.center,
            ),
          ),
          LListItem(
            title: Text(
              'Pub',
              style: theme.typographyTheme.h6.withColor(Colors.blue[700]),
              textAlign: TextAlign.center,
            ),
          )
        ]),
      ],
    );

    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: docsMenu != null ? SingleChildScrollView(child: content) : content,
    );
  }
}
