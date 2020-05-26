import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import 'package:liquid_website/base/pages/docs/code_highlight.dart';

class LayoutOverview extends StatelessWidget {
  final String _title = "Overview";
  final String _subtitle =
      "Performant components, a powerful grid system, flexible themeing,"
      " and responsive utilities.";

  final _lboxDescription =
      "LBox is the most common layout component in liquid. "
      "They provide option like \l.bold{padding, margin, height, width, "
      "decoration, alignment, visibility} to their enclosing child based on breakpoints.";

  final _lboxCode = """
Container(
  height: 400.0,
  width: double.infinity,
  decoration: BoxDecoration(color: Colors.black38),
  child: LBox(
    visibility: const LBoxVisibility(
      md: false,
    ),
    alignment: LBoxAlignment.belowMD(
      Alignment.center,
      Alignment.bottomRight, //default
    ),
    child: Image.network("https://source.unsplash.com/random/320x180/?mountains"),
  ),
),
  """;
  final _lanimatedboxCode = """
Container(
  height: 400.0,
  width: double.infinity,
  decoration: BoxDecoration(color: Colors.black38),
  child: LAnimatedBox(
    alignment: LBoxAlignment(
      xs: Alignment.topLeft,
      sm: Alignment.bottomRight,
      md: Alignment.bottomLeft,
      lg: Alignment.topLeft,
      xl: Alignment.bottomRight,
    ),
    child: Image.network(
      "https://source.unsplash.com/random/320x180/?mountains",
    ),
  ),
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
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
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
        LText(_lboxDescription),
        LText(
          "\n\l.h5{Liquid has 5 breakpoint definations}\n"
          "\l.bullet.h6{xs < 576px}\n"
          "\l.bullet.h6{sm >= 576px}\n"
          "\l.bullet.h6{md >= 768px}\n"
          "\l.bullet.h6{lg >= 992px}\n"
          "\l.bullet.h6{xl >= 1200px}\n",
        ),
        LText(
          "\l.h5{Example: Change screen size to see LBox in action.}\n"
          "In Below example, The image will not render on \l.bold{MD} breakpoint,\n"
          "also image \l.bold{alignment} will be center in \l.bold{XS and SM} breakpoint.\n"
          "\l.bold{NOTE: You can use LAnimatedBox, which will animate any property change in LBox}\n",
        ),
        LRow(
          axis: LRowAxis.belowXL(Axis.vertical),
          columns: [
            LColumn.child(
              child: Container(
                height: 400.0,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black38),
                child: LBox(
                  visibility: const LBoxVisibility(
                    md: false,
                  ),
                  alignment: LBoxAlignment.belowMD(
                    Alignment.topLeft,
                    Alignment.bottomRight, //default
                  ),
                  child: Image.network(
                    "https://source.unsplash.com/random/320x180/?mountains",
                  ),
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _lboxCode),
            ),
          ],
        ),
        LText("\n\l.h5{LAnimatedBox}\n"
            "An Animated version of \l.bold{LBox} that animates its child whenever a property change.\n"),
        LRow(
          axis: LRowAxis.belowXL(Axis.vertical),
          columns: [
            LColumn.child(
              child: Container(
                height: 400.0,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black38),
                child: LAnimatedBox(
                  alignment: LBoxAlignment(
                    xs: Alignment.center,
                    sm: Alignment.topLeft,
                    md: Alignment.bottomRight,
                    lg: Alignment.topLeft,
                    xl: Alignment.bottomRight,
                  ),
                  child: Image.network(
                    "https://source.unsplash.com/random/320x180/?mountains",
                  ),
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _lanimatedboxCode),
            ),
          ],
        ),
      ],
    );
  }
}
