import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:liquid_ui/liquid_ui.dart';

import '../../core/core.dart';

class NavBar extends StatelessWidget {
  final GlobalKey<LDropdownState> _dropdown = GlobalKey<LDropdownState>();

  final FlareControls controls = FlareControls()
    ..onCompleted('flow')
    ..play('flow');

  void replay() => controls.play('flow');

  void startLoop() {
    controls.isActive.removeListener(replay);
    controls.isActive.addListener(replay);
  }

  _openDropDown() {
    _dropdown.currentState.toggleDropdown();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = LiquidTheme.of(context);
    final _currentRoute = injector<RouteManager>().currentRoute;
    startLoop();

    return LBox(
      margin: LBoxEdgeInsets.aboveMD(
        EdgeInsets.symmetric(horizontal: 70.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildMenuBtn(context),
          buildLogo(),
          buildLiquidText(_theme),
          buildNavMenu(_currentRoute, _theme),
          LBox(
            visibility: LBoxVisibility(xs: false, sm: false, xl: false),
            child: buildDropdown(),
          ),
          Spacer(),
          Row(
            children: <Widget>[
              LBox(
                  visibility: LBoxVisibility.belowXL(false),
                  child: buildSocialBtn(color: Colors.white)),
              buildActionBtn()
            ],
          )
        ],
      ),
    );
  }

  LDropdown buildDropdown() {
    return LDropdown(
      key: _dropdown,
      scrollToClose: false,
      scrollable: false,
      hideOnTopOffset: 0.0,
      trigger: LOutlineButton.icon(
        icon: Text("More"),
        label: Icon(Icons.keyboard_arrow_down),
        buttonShape: RoundedRectangleBorder(side: BorderSide.none),
        textStyle: TextStyle(color: Colors.white),
        onPressed: _openDropDown,
      ),
      items: [
        LDropdownItem.header(text: "Connect"),
        LDropdownItem.withChild(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: buildSocialBtn(),
        ),
      ],
    );
  }

  LBox buildActionBtn() {
    return LBox(
      visibility: LBoxVisibility(xs: false),
      child: Row(
        children: <Widget>[
          LFlatButton.text(
            text: "SPONSOR",
            type: LElementType.warning,
            onPressed: null,
          ),
          SizedBox(width: 10.0),
          LFlatButton.text(
            text: "Pub",
            type: LElementType.light,
            onPressed: () {
              launch("https://pub.dev/packages/liquid_ui");
            },
          ),
        ],
      ),
    );
  }

  Row buildSocialBtn({Color color}) {
    return Row(
      children: <Widget>[
        LIconButton(
          icon: Icon(FontAwesome.github),
          color: color,
          iconSize: 18,
          onPressed: () {
            launch("https://github.com/stackorient/Liquid");
          },
        ),
        LIconButton(
          icon: Icon(FontAwesome.linkedin),
          color: color,
          iconSize: 18,
          onPressed: () {
            launch("https://www.linkedin.com/groups/13861977/");
          },
        ),
        LIconButton(
          icon: Icon(FontAwesome.youtube_play),
          color: color,
          iconSize: 18,
          onPressed: () {
            launch("https://www.youtube.com/channel/UCDQxuqnVSnR5Z1shJs9108g");
          },
        ),
        LIconButton(
          icon: Icon(FontAwesome.instagram),
          color: color,
          iconSize: 18,
          onPressed: () {
            launch("https://www.instagram.com/stackorient.inc/");
          },
        ),
      ],
    );
  }

  void openPage(String routeName) {
    injector<RouteManager>()
        .navigtor
        .currentState
        .pushReplacementNamed(routeName);
  }

  LBox buildNavMenu(String currentRoute, LiquidThemeData theme) {
    return LBox(
      visibility: LBoxVisibility(sm: false, xs: false),
      padding: LBoxEdgeInsets.aboveMD(
        EdgeInsets.only(left: 25.0),
      ),
      child: LButtonGroup(
        radius: 0.0,
        children: [
          LOutlineButton.text(
            text: "Home",
            textStyle: TextStyle(color: Colors.white).weight(
                currentRoute == homeRoute
                    ? FontWeight.w700
                    : FontWeight.normal),
            onPressed: () => openPage(homeRoute),
          ),
          LOutlineButton.text(
            text: "Documentation",
            textStyle: TextStyle(color: Colors.white).weight(
                currentRoute == docsRoute
                    ? FontWeight.w700
                    : FontWeight.normal),
            onPressed: () => openPage(docsRoute),
          ),
          LOutlineButton.text(
            text: "Examples",
            textStyle: TextStyle(color: Colors.white).weight(
                currentRoute == exampleRoute
                    ? FontWeight.w700
                    : FontWeight.normal),
            onPressed: () => openPage(exampleRoute),
          ),
        ],
      ),
    );
  }

  Padding buildLiquidText(LiquidThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: GestureDetector(
        onTap: () => openPage(homeRoute),
        child: Text(
          "Liquid",
          style: theme.typographyTheme.h5
              .family('Poppins')
              .withColor(Colors.white),
        ),
      ),
    );
  }

  Widget buildLogo() => GestureDetector(
        onTap: () => openPage(homeRoute),
        child: Container(
          height: 42.0,
          width: 42.0,
          child: FlareActor(
            "assets/flare/liquid.flr",
            fit: BoxFit.contain,
            controller: controls,
          ),
        ),
      );

  LBox buildMenuBtn(BuildContext context) {
    return LBox(
      visibility: LBoxVisibility.aboveSM(false),
      margin: LBoxEdgeInsets.belowMD(EdgeInsets.only(right: 10.0)),
      child: LIconButton(
        icon: Icon(Icons.menu),
        color: Colors.white,
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    );
  }
}
