import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:liquid/liquid.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: buildDrawerItems(context),
      ),
    );
  }

  Widget buildDrawerItems(context) {
    final theme = LiquidTheme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        LListGroup(
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
            ]),
        Spacer(),
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
  }
}
