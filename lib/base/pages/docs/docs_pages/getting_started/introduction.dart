import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';

import '../../code_highlight.dart';

class Introduction extends StatelessWidget {
  final String _title = "Introduction";
  final String _subtitle = "Get started with Liquid, the world’s"
      " most advance flutter UI kit for building responsive,"
      " beautiful, cross-platform applications.";

  final String _step1 = """
// pubspec.yaml

dependencies:
  flutter:
    sdk: flutter
    
  liquid: <latest-version>   
          """;
  final String _step2 = """
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LiquidApp(
      title: 'My New Liquid App',
      theme: ThemeData(),
      liquidTheme: LiquidThemeData(),
      liquidTheme
      home: MyHomePage(),
    );
  }
} 
          """;

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
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            _title,
            style: mq.isSM || mq.isXS
                ? _theme.typographyTheme.h2
                : _theme.typographyTheme.display4,
          ),
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
        Text(
          "Starting with liquid is simple and quick",
          style: _theme.typographyTheme.p,
        ),
        SizedBox(height: 20.0),
        Text(
          "Step 1. Add liquid to pubspec.yaml",
          style: _theme.typographyTheme.h6,
        ),
        codeText(
          context,
          _step1,
          lang: 'yaml',
        ),
        Text(
          "Step 2. Wrap your Top Widget with LiquidApp",
          style: _theme.typographyTheme.h6,
        ),
        codeText(
          context,
          _step2,
        ),
        Text(
          "LiquidApp will provide LiquidTheme, LiquidStateManager to Buttons, Models, ScrollSpy, DropDown and Other Liquid Components.\n"
          "Note : LiquidApp wraps MaterialApp internally",
          style: _theme.typographyTheme.p.copyWith(height: 1.5),
        ),
        SizedBox(height: 12.0),
      ],
    );
  }
}
