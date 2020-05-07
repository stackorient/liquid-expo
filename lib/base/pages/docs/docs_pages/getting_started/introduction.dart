import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-light.dart';
import 'package:liquid/liquid.dart';

class Introduction extends StatelessWidget {
  final String _title = "Introduction";
  final String _subtitle = "Get started with Liquid, the world’s"
      " most advance flutter UI kit for building responsive,"
      " beautiful, cross-platform applications.";

  @override
  Widget build(BuildContext context) {
    final _theme = LiquidTheme.of(context);
    final mq = MediaQuery.of(context);

    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: mq.isSM || mq.isXS ? 15.0 : 35.0,
        vertical: 16.0,
      ),
      children: <Widget>[
        Text(
          _title,
          style: mq.isSM || mq.isXS
              ? _theme.typographyTheme.h2
              : _theme.typographyTheme.display4,
        ),
        Text(
          _subtitle,
          style: mq.isSM || mq.isXS
              ? _theme.typographyTheme.p
              : _theme.typographyTheme.lead,
        ),
        SizedBox(height: 35.0),
        Text(
          "Quick Start",
          style: _theme.typographyTheme.h4,
        ),
        HighlightView(
          '''
main() {
  print("Hello, World!");
}
          ''',
          language: 'dart',
          theme: atomOneLightTheme,
          padding: EdgeInsets.all(12),
          textStyle: _theme.typographyTheme.p,
        ),
      ],
    );
  }
}
