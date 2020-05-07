import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';

import '../../../base.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = LiquidTheme.of(context);
    return LBox(
        decoration: LBoxDecoration.belowMD(
          BoxDecoration(
            color: Colors.white,
          ),
        ),
        child: ListView(
          children: <Widget>[
            buildDrawerItems(),
          ],
        ));
  }

  LBox buildDrawerItems() {
    return LBox(
        child: LListGroup(
            backgroundColor: Colors.white,
            borderColor: Colors.white,
            flush: true,
            children: [
          LListItem(
            title: Text(
              'Home',
            ),
          ),
          LListItem(
            title: Text(
              'Documentation',
            ),
          ),
          LListItem(
            title: Text(
              'Example',
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
