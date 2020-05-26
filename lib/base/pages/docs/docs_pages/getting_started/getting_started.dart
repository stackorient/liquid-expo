import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';

import '../../code_highlight.dart';

class GettingStarted extends StatelessWidget {
  final String _title = "Getting Started";
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
        SizedBox(height: 20.0),
        LText(
          "\l.h4{Features}\n"
          "Liquid comes with a powerful grid system, extensive array of prebuilt"
          " components, utilities and raw components to extend from.",
        ),
        LRow(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          columns: [
            LColumn.child(
              child: LAlert(
                heading: LAlertHeading(
                  text: "Powerful Grid System",
                ),
                text: "Use our powerful grid engine to build layouts of all"
                    "shapes and sizes. Liquid comes with 12 column system with five default responsive tiers.",
              ),
            ),
            LColumn.child(
              child: LAlert(
                type: LElementType.success,
                heading: LAlertHeading(
                  text: "Extensive Prebuilt Components",
                ),
                text: "Liquid Components are build from the ground up"
                    "to work perfectly on Web, IOS, Android and Desktop."
                    " incluing Forms, Collapse, ScrollSpy and others.",
              ),
            ),
            LColumn.child(
              child: LAlert(
                type: LElementType.warning,
                heading: LAlertHeading(
                  text: "Powerful Text Processor & Utilities",
                ),
                text: "Liquid also comes with a powerful text processor"
                    " & utility methods, thanks to the dart's extension methods.",
              ),
            ),
          ],
        ),
        LText(
          "\l.h5{Quick Start}\n"
          "Starting with liquid is simple and quick\n"
          "\l.h5{Step 1. Add liquid to pubspec.yaml}",
        ),
        codeText(
          context,
          _step1,
          lang: 'yaml',
        ),
        LText(
          "\l.h5{Step 2. Wrap your Top Widget with LiquidApp}\n",
        ),
        codeText(
          context,
          _step2,
        ),
        LText(
          "\l.bold{LiquidApp} will provides\n"
          "   \l.bullet{LiquidTheme}\n"
          "   \l.bullet{LiquidStateManager}\n"
          "   \l.bullet{Liquid Style Class Provider}\n"
          "\l.bold{NOTE} : LiquidApp wraps MaterialApp internally. \l.bold.underline{LiquidCupertinoApp} will be available in next major update.",
        ),
      ],
    );
  }
}
