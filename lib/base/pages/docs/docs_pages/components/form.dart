import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class FormPage extends StatelessWidget {
  final _title = "LForm";
  final _subtitle =
      "An expansion panel. It has a `title`, `leading`, `subtitle`, `caption`  and a `collapseChild` and can be either"
      " expanded or collapsed. The body of the panel is only visible when it is"
      " expanded.";

  final _linearcode = """

  LExpansionPanel(
    caption: LBadge.icon(
      icon: Icon(Icons.new_releases),
      label: Text("Latest"),
      type: LElementType.warning,
      size: LElementSize.small,
    ),
    leading: CircleAvatar(
      backgroundColor: Colors.black45,
    ),
    title: Text("Liquid for flutter"),
    subtitle: Text("Get the latest information"),
    collapseChild: Center(
      child: LFlatButton.text(text: "This was collapsed."),
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
        SizedBox(height: 35.0),
        LRow(
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn(lg: 4, xl: 4, children: [
              LExpansionPanel(
                background: _theme.colors.success.lighten(0.1),
                caption: LBadge.icon(
                  icon: Icon(Icons.new_releases),
                  label: Text("Latest"),
                  type: LElementType.warning,
                  size: LElementSize.small,
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.black45,
                ),
                title: Text("Liquid for flutter"),
                subtitle: Text("Get the latest information"),
                collapseChild: Center(
                  child: LFlatButton.text(text: "This was collapsed."),
                ),
              ),
              SizedBox(height: 50.0),
              LExpansionPanel(
                background: _theme.colors.info.lighten(0.1),
                caption: LBadge.icon(
                  icon: Icon(Icons.new_releases),
                  label: Text("Latest"),
                  type: LElementType.warning,
                  size: LElementSize.small,
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.black45,
                ),
                title: Text("Liquid for flutter"),
                subtitle: Text("Get the latest information"),
                collapseChild: Center(
                  child: LFlatButton.text(text: "This was collapsed."),
                ),
              ),
            ]),
            LColumn.child(
              child: codeText(context, _linearcode),
            )
          ],
        ),
      ],
    );
  }
}
