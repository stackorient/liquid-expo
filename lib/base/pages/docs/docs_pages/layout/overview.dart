import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';

class LayoutOverview extends StatelessWidget {
  final String _title = "Overview";
  final String _subtitle =
      "Performant components, a powerful grid system, flexible themeing,"
      " and responsive utilities.";

  final _lboxDescription =
      "LBox are the most common layout component in liquid. "
      "They provide option like padding, margin, height, width, "
      "decoration, alignment, visibility to their enclosing child based on breakpoints."
      "\n\nAvailable Breakpoints\n\n# xs < 576px\n# sm >= 576px\n# md >= 768px\n# lg >= 992px\n# xl >= 1200px";
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
        Padding(
          padding: const EdgeInsets.only(bottom: 35.0),
          child: Text(
            _subtitle,
            style: mq.isSM || mq.isXS
                ? _theme.typographyTheme.p
                : _theme.typographyTheme.lead,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "LBox",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Text(_lboxDescription),
        SizedBox(height: 20.0),
        Text(
          "Step 1. Add liquid to pubspec.yaml",
          style: _theme.typographyTheme.h6,
        ),
      ],
    );
  }
}
