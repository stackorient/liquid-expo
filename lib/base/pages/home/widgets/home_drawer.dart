import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';

import '../../../base.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = LiquidTheme.of(context);
    return LBox(
        child: ListView(
      children: <Widget>[
        buildDrawerItems(),
      ],
    ));
  }

  LBox buildDrawerItems() {
    return LBox(
        child: LListGroup(backgroundColor: Colors.white, children: [
      LListItem(
        title: Text(
          'Home',
        ),
      ),
      LListItem(
        title: Text(
          'Home',
        ),
      ),
    ]));
  }
}
