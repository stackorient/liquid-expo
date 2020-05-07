import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            buildDrawerItems(),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerItems() {
    return LListGroup(
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
        ]);
  }
}
