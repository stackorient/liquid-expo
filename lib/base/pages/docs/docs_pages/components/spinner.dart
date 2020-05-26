import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';
import '../../code_highlight.dart';

class SpinnerPage extends StatelessWidget {
  final _title = "Spinners";
  final _subtitle =
      "Indicate the loading state of a component or page with Liquid spinners.";

  final _lspinner = """

  LSpinner(
    diameter: 30.0,
    thickness: 4.0,
    cap: StrokeCap.square,
  ),
  """;

  final _lspinner2 = """

  LSpinner(
    diameter: 50.0,
    thickness: 6.0,
    cap: StrokeCap.round,
    color: _theme.colors.primary,
  ),

  """;

  final _growspinner = """

 LGrowSpinner(
   diameter: 50.0,
  ),

  """;

  final _growspinner2 = """

LGrowSpinner(
   color: _theme.colors.success,
   diameter: 30.0,
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
          "\l.h4{LSpinner}\n",
        ),
        LText(
          "Liquid [LSpinner] can be used to show the loading state in your projects"
          " Use [LSpinner] for lightweight loading indicator.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LSpinner(
                diameter: 30.0,
                thickness: 4.0,
                cap: StrokeCap.square,
              ),
            ),
            LColumn.child(
              child: codeText(context, _lspinner),
            )
          ],
        ),
        LText(
          "\l.h4{Variations}\n"
          "Allows to change bar color, width, diameter etc.",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LSpinner(
                diameter: 50.0,
                thickness: 6.0,
                cap: StrokeCap.round,
                color: _theme.colors.primary,
              ),
            ),
            LColumn.child(
              child: codeText(context, _lspinner2),
            )
          ],
        ),
        LText(
          "\n\l.h4{LGrowSpinner}\n"
          "Repeatedly growing spinner."
          " If you want a fancy border spinner, switch to the grow spinner."
          " While it doesn’t technically spin, it does repeatedly grow!",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LGrowSpinner(
                diameter: 50.0,
              ),
            ),
            LColumn.child(
              child: codeText(context, _growspinner),
            )
          ],
        ),
        LText(
          "\n\l.h4{Variations}\n"
          "Allows to change colors and diameter accordingly.",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LGrowSpinner(
                color: _theme.colors.success,
                diameter: 30.0,
              ),
            ),
            LColumn.child(
              child: codeText(context, _growspinner2),
            )
          ],
        ),
      ],
    );
  }
}
