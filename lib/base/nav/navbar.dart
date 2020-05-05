import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:liquid/liquid.dart';

class NavBar extends StatelessWidget {
  final GlobalKey<LDropdownState> _dropdown = GlobalKey<LDropdownState>();

  _openDropDown() {
    _dropdown.currentState.toggleDropdown();
  }

  @override
  Widget build(BuildContext context) {
    return LBox(
      margin: LBoxEdgeInsets.aboveMD(
        EdgeInsets.symmetric(horizontal: 70.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildMenuBtn(),
          buildLogo(),
          buildLiquidText(),
          buildNavMenu(),
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
        shape: RoundedRectangleBorder(side: BorderSide.none),
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
          SizedBox(width: 50.0),
          LFlatButton.text(
            text: "SPONSOR",
            type: ButtonType.warning,
            onPressed: () {},
          ),
          SizedBox(width: 15.0),
          LFlatButton.text(
            text: "Download",
            type: ButtonType.light,
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

  LBox buildNavMenu() {
    return LBox(
      visibility: LBoxVisibility(sm: false, xs: false),
      padding: LBoxEdgeInsets.all(
        EdgeInsets.only(left: 25.0),
      ),
      child: LButtonGroup(
        radius: 0.0,
        children: [
          LOutlineButton.text(
            text: "Home",
            textStyle: TextStyle(color: Colors.white),
            onPressed: () {},
          ),
          LOutlineButton.text(
            text: "Documentation",
            textStyle: TextStyle(color: Colors.white),
            onPressed: () {},
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

  Padding buildLiquidText() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Text(
        "Liquid",
        style: LiquidTypographyTheme().h5.family('Poppins'),
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
