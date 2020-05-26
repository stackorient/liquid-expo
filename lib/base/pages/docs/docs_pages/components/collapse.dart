import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class CollapsePage extends StatelessWidget {
  final _title = "LCollapse";
  final _subtitle = "A widget that can toggle the visibility of content/child"
      " and can be controlled programmatically";

  final _linercode2 = """
final GlobalKey<LCollapseState> _collapseKey = GlobalKey<LCollapseState>();
//...
LCollapse(
  key: _collapseKey,
  // duration: Duration(seconds: 10),
  child: Center(
      child: LText("Hey I am \l.uppercase.bold{visible} now...")),
  background: Colors.green[100],
),
//...
LFlatButton.text(
  text: "Toggle Collapse",
  onPressed: () {
    if (_collapseKey.currentState.isCollapsed)
      _collapseKey.currentState.open();
    else
      _collapseKey.currentState.close();
  }
);
  """;

  final GlobalKey<LCollapseState> _collapseKey = GlobalKey<LCollapseState>();

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
        LText("\l.h5{Example}"),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn(
              lg: 4,
              xl: 4,
              children: [
                LCollapse(
                  key: _collapseKey,
                  child: Center(
                      child:
                          LText("Hey I am \l.uppercase.bold{visible} now...")),
                  background: Colors.green[100],
                ),
                LFlatButton.text(
                    text: "Toggle Collapse",
                    onPressed: () {
                      if (_collapseKey.currentState.isCollapsed)
                        _collapseKey.currentState.open();
                      else
                        _collapseKey.currentState.close();
                    }),
              ],
            ),
            LColumn.child(
              child: codeText(context, _linercode2),
            )
          ],
        ),
      ],
    );
  }
}
