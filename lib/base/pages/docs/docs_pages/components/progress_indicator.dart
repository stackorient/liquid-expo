import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';
import '../../code_highlight.dart';

class ProgressPage extends StatelessWidget {
  final _title = "Progress Indicators";
  final _subtitle =
      "Documentation and examples for using Liquid's custom progress bars featuring support for stacked bars, animated backgrounds, and text labels.";

  final _progindicator = """

  LProgressIndicator(
    progress: 0.2,
    barChild: Text(
      "20%",
      style: LiquidTheme.of(context)
          .typographyTheme
          .small
          .withColor(Colors.white),
    ),
  ),
  """;

  final _progindicator2 = """

  LProgressIndicator(
    progress: 0.45,
    barColor: Colors.blue,
    radius: 20.0,
    background: Colors.green[200],
    barChild: Text(
      "45%",
      style: LiquidTheme.of(context)
          .typographyTheme
          .small
          .withColor(Colors.white),
    ),
  ),

  """;

  final _circleindicator = """

 LCircularProgressIndicator(
     progress: 0.6,
     diameter: 40.0,
     thickness: 6.0,
     barColor: LiquidTheme.of(context).colors.success,
     child: Text(
       "60%",
       style: LiquidTheme.of(context).typographyTheme.small,
     ),
   ),

  """;

  final _circleindicator2 = """

 LColumn.child(
  lg: 4,
  xl: 4,
  child: LCircularProgressIndicator(
    progress: 0.7,
    diameter: 70.0,
    thickness: 6.0,
    cap: StrokeCap.round,
    barColor: LiquidTheme.of(context).colors.danger,
    child: Text(
      "70%",
      style: LiquidTheme.of(context).typographyTheme.small,
    ),
  ),

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
          "\l.h4{LProgressIndicator}\n"
          "Displays Linear progress indicator [LProgressIndicator].\n\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LProgressIndicator(
                progress: 0.2,
                barChild: Text(
                  "20%",
                  style: LiquidTheme.of(context)
                      .typographyTheme
                      .small
                      .withColor(Colors.white),
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _progindicator),
            )
          ],
        ),
        LText(
          "\n\l.h4{Variations}\n"
          "Allows to change background and bar colors or width, border radius etc.\n\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LProgressIndicator(
                progress: 0.45,
                barColor: Colors.blue,
                radius: 20.0,
                background: Colors.green[200],
                barChild: Text(
                  "45%",
                  style: LiquidTheme.of(context)
                      .typographyTheme
                      .small
                      .withColor(Colors.white),
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _progindicator2),
            )
          ],
        ),
        LText("\n\l.h4{LCircularProgressIndicator}\n"
            "Displays Circular progress indicator [LCircularProgressIndicator].\n\n"),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LCircularProgressIndicator(
                progress: 0.6,
                diameter: 40.0,
                thickness: 6.0,
                barColor: LiquidTheme.of(context).colors.success,
                child: Text(
                  "60%",
                  style: LiquidTheme.of(context).typographyTheme.small,
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _circleindicator),
            )
          ],
        ),
        LText(
          "\n\l.h4{Variations}\n"
          "Allows to change background and bar colors or thickness, diameter etc.\n\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LCircularProgressIndicator(
                progress: 0.7,
                diameter: 70.0,
                thickness: 6.0,
                cap: StrokeCap.round,
                barColor: LiquidTheme.of(context).colors.danger,
                child: Text(
                  "70%",
                  style: LiquidTheme.of(context).typographyTheme.small,
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _circleindicator2),
            )
          ],
        ),
      ],
    );
  }
}
