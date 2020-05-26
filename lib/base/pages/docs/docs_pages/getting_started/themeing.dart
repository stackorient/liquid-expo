import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';

import '../../code_highlight.dart';

class ThemingSection extends StatelessWidget {
  final String _title = "Liquid Theming";
  final String _subtitle =
      "\l.lead{Change the look and feel of liquid components.}\n";

  final _themeAppliedCode = """
child: LiquidTheme(
  theme: LiquidThemeData(
    colors: LiquidColors(
      primary: Colors.pink,
      secondary: Colors.blue[900],
      success: Colors.brown,
    ),
    alertTheme: LiquidAlertTheme(
      padding: const EdgeInsets.all(30.0),
    ),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: LFlatButton.text(
          text: "Primary",
          type: LElementType.primary,
          onPressed: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: LBadge.text(
          "Secondary badge",
          type: LElementType.secondary,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: LAlert(
          text: "Hello World",
          type: LElementType.success,
        ),
      ),
    ],
  ),
),
  """;

  final _nonthemeCode = """
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: LFlatButton.text(
        text: "Primary",
        type: LElementType.primary,
        onPressed: () {},
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: LBadge.text(
        "Secondary badge",
        type: LElementType.secondary,
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: LAlert(
        text: "Hello World",
        type: LElementType.success,
      ),
    ),
  ],
);
  
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
        LText(
          _subtitle,
        ),
        SizedBox(height: 20.0),
        LText(
          "\l.h4{Changing theme properties}\n"
          "With few lines of code you can change the whole look of your app.\n"
          "\l.h4.bullet{Default Theme}\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LFlatButton.text(
                      text: "Primary",
                      type: LElementType.primary,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LBadge.text(
                      "Secondary badge",
                      type: LElementType.secondary,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LAlert(
                      text: "Hello World",
                      type: LElementType.success,
                    ),
                  ),
                ],
              ),
            ),
            LColumn.child(child: codeText(context, _nonthemeCode))
          ],
        ),
        LText("\l.h4.bullet{Custom Theme}\n"
            "You can directly use \l.bold{LiquidTheme} for particular widget tree or use"
            "\l.bold{LiquidApp}'s liquidTheme to apply global theme.\n\n"
            "\l.bold{NOTE: LiquidTheme is only applied on Liquid Components by default.}\n"),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              child: LiquidTheme(
                theme: LiquidThemeData(
                  colors: LiquidColors(
                    primary: Colors.pink,
                    secondary: Colors.blue[900],
                    success: Colors.brown,
                  ),
                  alertTheme: LiquidAlertTheme(
                    padding: const EdgeInsets.all(30.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LFlatButton.text(
                        text: "Primary",
                        type: LElementType.primary,
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LBadge.text(
                        "Secondary badge",
                        type: LElementType.secondary,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LAlert(
                        text: "Hello World",
                        type: LElementType.success,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _themeAppliedCode),
            )
          ],
        )
      ],
    );
  }
}
