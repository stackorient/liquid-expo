import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class SpinnerPage extends StatelessWidget {
  final _title = "Spinners";
  final _subtitle =
      "Indicate the loading state of a component or page with Liquid spinners.";

  final _linearcode = """

  LSpinner(
    diameter: 30.0,
    thickness: 4.0,
    cap: StrokeCap.square,
  ),
  """;

  final _linercode2 = """

  LSpinner(
    diameter: 50.0,
    thickness: 6.0,
    cap: StrokeCap.round,
    color: _theme.colors.primary,
  ),

  """;

  final _circlecode1 = """

 LGrowSpinner(
   diameter: 50.0,
  ),

  """;

  final _circlecode2 = """

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
        SizedBox(height: 35.0),
        Text(
          "LSpinner",
          style: _theme.typographyTheme.h4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Liquid [LSpinner] can be used to show the loading state in your projects"
            " Use [LSpinner] for lightweight loading indicator.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LRow(
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
              child: codeText(context, _linearcode),
            )
          ],
        ),
        Text(
          "Variations",
          style: _theme.typographyTheme.h4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Allows to change bar color, width, diameter etc.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LRow(
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
              child: codeText(context, _linercode2),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "LGrowSpinner",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Repeatedly growing spinner."
            " If you want a fancy border spinner, switch to the grow spinner."
            " While it doesn’t technically spin, it does repeatedly grow!",
            style: _theme.typographyTheme.p,
          ),
        ),
        LRow(
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
              child: codeText(context, _circlecode1),
            )
          ],
        ),
        Text(
          "Variations",
          style: _theme.typographyTheme.h4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Allows to change colors and diameter accordingly.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LRow(
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
              child: codeText(context, _circlecode2),
            )
          ],
        ),
      ],
    );
  }
}
