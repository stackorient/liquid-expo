import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';

import '../../code_highlight.dart';

class LayoutUtility extends StatelessWidget {
  final String _title = "Layout Utility";
  final String _subtitle =
      "Liquid also comes with some layout utility for getting active breakpoint.";

  final _code1 = """
final mq = MediaQuery.of(context);

Container(
  decoration: BoxDecoration(
    color: Colors.grey[300],
    borderRadius: BorderRadius.circular(5.0),
  ),
  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
  width: double.infinity,
  child: LText(
    "\\l.h6{Active Status}\\n"
    "\\l.h6{XL:} \\l.h6.bold.uppercase{\${mq.isXL}}\\n"
    "\\l.h6{LG:} \\l.h6.bold.uppercase{\${mq.isLG}}\\n"
    "\\l.h6{MD:} \\l.h6.bold.uppercase{\${mq.isMD}}\\n"
    "\\l.h6{SM:} \\l.h6.bold.uppercase{\${mq.isSM}}\\n"
    "\\l.h6{XS:} \\l.h6.bold.uppercase{\${mq.isXS}}\\n"
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
        LColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LText(
              "\l.h5{Active Breakpoint Status}\n"
              "You can access currently active breakpoint using \l.bold{MediaQueryData}\n",
            ),
            LText(
              "\l.bullet.bold{.isXS}\n"
              "\l.bullet.bold{.isSM}\n"
              "\l.bullet.bold{.isMD}\n"
              "\l.bullet.bold{.isLG}\n"
              "\l.bullet.bold{.isXL}\n"
              "Or use \l.bold{.activeBreakpoint} to get active \l.bold{LBreakPoint}.\n",
            ),
            LRow(
              crossAxisAlignment: CrossAxisAlignment.center,
              axis: LRowAxis.all(Axis.vertical),
              columns: [
                LColumn.child(
                  child: getContainer(mq),
                ),
                LColumn.child(
                  child: codeText(context, _code1),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget getContainer(MediaQueryData mq) => Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(5.0),
        ),
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        child: LText("\l.h6{Active Status}\n"
            "\l.h6{XL:} \l.h6.bold.uppercase{${mq.isXL}}\n"
            "\l.h6{LG:} \l.h6.bold.uppercase{${mq.isLG}}\n"
            "\l.h6{MD:} \l.h6.bold.uppercase{${mq.isMD}}\n"
            "\l.h6{SM:} \l.h6.bold.uppercase{${mq.isSM}}\n"
            "\l.h6{XS:} \l.h6.bold.uppercase{${mq.isXS}}"),
      );
}
