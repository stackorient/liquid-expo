import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import 'package:liquid_website/base/pages/docs/code_highlight.dart';

class GridSystem extends StatelessWidget {
  final String _title = "Grid System";
  final String _subtitle =
      "Build Responsive Apps with Liquid's Simple Yet Powerful Grid System.";

  final _code1 = """
LRow(
  columns: [
    LColumn.child(
      child: getContainer("1/3 column"),
    ),
    LColumn.child(
      child: getContainer("1/3 column"),
    ),
    LColumn.child(
      child: getContainer("1/3 column"),
    ),
  ],
),
  """;
  final _code2 = """
LRow(
  columns: [
    LColumn.child(
      md: 2,
      lg: 4,
      xl: 6,
      child: getContainer("6/12 (xl) 4/12(lg) 2/12(md) column"),
    ),
    LColumn.child(
      child: getContainer("3/12 (xl) 4/12(lg) 5/12(md) column"),
    ),
    LColumn.child(
      child: getContainer("3/12 (xl) 4/12(lg) 5/12(md) column"),
    ),
  ],
);
  """;
  final _code3 = """
LRow(
  axis: LRowAxis(
      lg: Axis.vertical), // Display Content in vertical axis
  columns: [
    LColumn.child(
      md: 3,
      lg: 6,
      xl: 8,
      child: getContainer("3/12(MD) 6/12(LG) 8/12(XL)"),
    ),
    LColumn.child(
      visibility: LBoxVisibility.belowLG(false),
      child: getContainer("Hide this below LG breakpoint"),
    ),
    LColumn.child(
      child: getContainer("auto column"),
    ),
  ],
);
  """;
  final _code4 = """
LRow(
  margin: EdgeInsets.zero,
  gutter: 40.0,
  columns: [
    LColumn.child(
      child: getContainer("1/3 column"),
    ),
    LColumn.child(
      child: getContainer("1/3 column"),
    ),
    LColumn.child(
      child: getContainer("1/3 column"),
    ),
  ],
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
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text(
            _subtitle,
            style: mq.isSM || mq.isXS
                ? _theme.typographyTheme.p
                : _theme.typographyTheme.lead,
          ),
        ),
        LColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LText(
              "\l.h5{The Layout}\n"
              "Liquid grid system uses a series of \l.bold{LRow}s and"
              " \l.bold{LColumn} to layout and align there contents.\n"
              "\l.bold{NOTE: Liquid Colums are by default use equal width.}\n",
            ),
            LRow(
              columns: [
                LColumn.child(
                  child: getContainer("1/3 column"),
                ),
                LColumn.child(
                  child: getContainer("1/3 column"),
                ),
                LColumn.child(
                  child: getContainer("1/3 column"),
                ),
              ],
            ),
            codeText(context, _code1),
          ],
        ),
        LColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LText(
              "\l.h5{Use Breakpoint}\n"
              "Use \l.bold{LColumn} to define breakpoint.\n",
            ),
            LRow(
              columns: [
                LColumn.child(
                  md: 2,
                  lg: 4,
                  xl: 6,
                  child: getContainer("6/12 (xl) 4/12(lg) 2/12(md) column"),
                ),
                LColumn.child(
                  child: getContainer("3/12 (xl) 4/12(lg) 5/12(md) column"),
                ),
                LColumn.child(
                  child: getContainer("3/12 (xl) 4/12(lg) 5/12(md) column"),
                ),
              ],
            ),
            codeText(context, _code2),
          ],
        ),
        LColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LText(
              "\n\l.h5{Breakpoint, Axis and Visibility}\n"
              "You can change \l.bold{row's axis} and  \l.bold{column's visibility} all based on \l.bold{breakpoint}.\n"
              "NOTE: Liquid Grid by default changes its row axis from horizontal to vertical "
              "in \l.bold{XS} breakpoint.\n",
            ),
            LRow(
              axis: LRowAxis(
                  lg: Axis.vertical), // Display Content in vertical axis
              columns: [
                LColumn.child(
                  md: 3,
                  lg: 6,
                  xl: 8,
                  child: getContainer("3/12(MD) 6/12(LG) 8/12(XL)"),
                ),
                LColumn.child(
                  visibility: LBoxVisibility.belowLG(false),
                  child: getContainer("Hide this below LG breakpoint"),
                ),
                LColumn.child(
                  child: getContainer("auto column"),
                ),
              ],
            ),
            codeText(context, _code3),
          ],
        ),
        LColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LText(
              "\n\l.h5{Gutters}\n"
              "Gutters are the space between columns\n",
            ),
            LRow(
              margin: EdgeInsets.zero,
              gutter: 40.0,
              columns: [
                LColumn.child(
                  child: getContainer("1/3 column"),
                ),
                LColumn.child(
                  child: getContainer("1/3 column"),
                ),
                LColumn.child(
                  child: getContainer("1/3 column"),
                ),
              ],
            ),
            codeText(context, _code4),
          ],
        ),
      ],
    );
  }

  Widget getContainer(String content) => Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(5.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        width: double.infinity,
        child: LText(
          content,
          textAlign: TextAlign.center,
        ),
      );
}
