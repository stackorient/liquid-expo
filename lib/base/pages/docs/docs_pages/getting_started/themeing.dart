import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';

import '../../code_highlight.dart';

class ThemingSection extends StatelessWidget {
  final String _title = "Liquid Theming";
  final String _subtitle =
      "Change the look and feel of liquid components using \l.bold{LiquidTheme}";

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
          "Features",
          style: _theme.typographyTheme.h4,
        ),
        Text(
          "Liquid comes with a powerful grid system, extensive array of prebuilt"
          " components, utilities and raw components to extend from.",
          style: _theme.typographyTheme.p,
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
      ],
    );
  }
}
