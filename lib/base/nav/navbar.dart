import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:liquid/liquid.dart';

import '../../core/core.dart';

class NavBar extends StatelessWidget {
  final GlobalKey<LDropdownState> _dropdown = GlobalKey<LDropdownState>();

  _openDropDown() {
    _dropdown.currentState.toggleDropdown();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = LiquidTheme.of(context);
    final _currentRoute = injector<RouteManager>().currentRoute;
    return LBox(
      margin: LBoxEdgeInsets.aboveMD(
        EdgeInsets.symmetric(horizontal: 70.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildMenuBtn(),
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
            onPressed: () {},
          ),
          SizedBox(width: 10.0),
          LFlatButton.text(
            text: "Pub",
            type: LElementType.light,
            onPressed: () {},
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
          onPressed: () {},
        ),
        LIconButton(
          icon: Icon(FontAwesome.linkedin),
          color: color,
          iconSize: 18,
          onPressed: () {},
        ),
        LIconButton(
          icon: Icon(FontAwesome.youtube_play),
          color: color,
          iconSize: 18,
          onPressed: () {},
        ),
        LIconButton(
          icon: Icon(FontAwesome.instagram),
          color: color,
          iconSize: 18,
          onPressed: () {},
        ),
      ],
    );
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
            onPressed: () {
              injector<RouteManager>()
                  .navigtor
                  .currentState
                  .pushReplacementNamed(homeRoute);
            },
          ),
          LOutlineButton.text(
            text: "Documentation",
            textStyle: TextStyle(color: Colors.white).weight(
                currentRoute == docsRoute
                    ? FontWeight.w700
                    : FontWeight.normal),
            onPressed: () {
              injector<RouteManager>()
                  .navigtor
                  .currentState
                  .pushReplacementNamed(docsRoute);
            },
          ),
          LOutlineButton.text(
            text: "Examples",
            textStyle: TextStyle(color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Padding buildLiquidText(LiquidThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Text(
        "Liquid",
        style: theme.typographyTheme.h5.family('Poppins'),
      ),
    );
  }

  Image buildLogo() => Image.asset(
        "assets/logos/logo_big_border.png",
        height: 42.0,
      );

  LBox buildMenuBtn() {
    return LBox(
      visibility: LBoxVisibility.aboveSM(false),
      margin: LBoxEdgeInsets.belowMD(EdgeInsets.only(right: 10.0)),
      child: LIconButton(
        icon: Icon(Icons.menu),
        color: Colors.white,
        onPressed: () {},
      ),
    );
  }
}
