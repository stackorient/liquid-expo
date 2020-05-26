import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class BadgePage extends StatelessWidget {
  final _title = "LBadge";
  final _subtitle =
      "Creates a badge. Documentation and examples for badges, our small count and labeling component.";

  final _code = """
LBadge(
  child: Text("Badge")
),
  """;

  final _textBadge = """
LBadge.text(
  'Latest Update',
  type: LElementType.success,
  shape: LElementShape.pill,
  size: LElementSize.medium,
),
  """;

  final _iconBadgeCode = """
LBadge.icon(
  shape: LElementShape.pill,
  size: LElementSize.medium,
  type: LElementType.warning,
  icon: Icon(
    Icons.star,
    size: 15.0,
  ),
  label: Text('VIP'),
);
  """;

  final _buttonCode = """
LRaisedButton.icon(
  icon: Text("Inbox"),
  label: LBadge.text(
    "23",
    type: LElementType.light,
    size: LElementSize.small,
  ),
  onPressed: () {},
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
        Text(
          "Example",
          style: _theme.typographyTheme.h4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Create Badge of different types, shapes and sizes.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LRow(
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LBadge(child: Text("Badge")),
            ),
            LColumn.child(
              child: codeText(context, _code),
            )
          ],
        ),
        LText(
          "\l.h4{Types}\n"
          "Create Badge of variable type.\n",
        ),
        LColumn.child(
          crossAxisAlignment: CrossAxisAlignment.start,
          child: Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: <Widget>[
              LBadge(
                type: LElementType.primary,
                child: Text('primary'),
              ),
              LBadge(
                type: LElementType.secondary,
                child: Text('secondary'),
              ),
              LBadge(
                type: LElementType.success,
                child: Text('success'),
              ),
              LBadge(
                type: LElementType.danger,
                child: Text('danger'),
              ),
              LBadge(
                type: LElementType.dark,
                child: Text('dark'),
              ),
              LBadge(
                type: LElementType.info,
                child: Text('info'),
              ),
              LBadge(
                type: LElementType.light,
                child: Text('light'),
              ),
            ],
          ),
        ),
        LText(
          "\n\l.h4{Shapes}\n"
          "Create Badge of variable shapes.\n",
        ),
        LColumn.child(
          crossAxisAlignment: CrossAxisAlignment.start,
          child: Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: <Widget>[
              LBadge(
                shape: LElementShape.standard,
                type: LElementType.primary,
                child: Text('standard'),
              ),
              LBadge(
                shape: LElementShape.pill,
                type: LElementType.secondary,
                child: Text('  pill  '),
              ),
            ],
          ),
        ),
        LText(
          "\n\l.h4{Sizes}\n"
          "Create Badges of variable sizes.\n",
        ),
        LColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            LBadge(
              margin: const EdgeInsets.only(bottom: 8.0),
              type: LElementType.info,
              size: LElementSize.large,
              child: Text('large'),
            ),
            LBadge(
              margin: const EdgeInsets.only(bottom: 8.0),
              type: LElementType.info,
              size: LElementSize.medium,
              child: Text('medium'),
            ),
            LBadge(
              margin: const EdgeInsets.only(bottom: 8.0),
              type: LElementType.info,
              size: LElementSize.normal,
              child: Text('normal'),
            ),
            LBadge(
              margin: const EdgeInsets.only(bottom: 8.0),
              type: LElementType.info,
              size: LElementSize.small,
              child: Text('small'),
            ),
          ],
        ),
        LText(
          "\n\l.h4{Text Badge}\n"
          "Create Badge with text as its only child.\n",
        ),
        LRow(
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LBadge.text(
                'Latest Update',
                type: LElementType.success,
                shape: LElementShape.pill,
                size: LElementSize.medium,
              ),
            ),
            LColumn.child(
              child: codeText(context, _textBadge),
            )
          ],
        ),
        LText(
          "\n\l.h4{Badge with an Icon and a Label}\n"
          "Create Badge with icon and a label.\n",
        ),
        LRow(
          gutter: 10.0,
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LBadge.icon(
                shape: LElementShape.pill,
                size: LElementSize.medium,
                type: LElementType.warning,
                icon: Icon(
                  Icons.star,
                  size: 15.0,
                ),
                label: Text('VIP'),
              ),
            ),
            LColumn.child(
              child: codeText(context, _iconBadgeCode),
            )
          ],
        ),
        LText("\n\l.h4{Button with badge}\n"
            "Add badge to your button for providing more information\n"),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: Center(
                child: LRaisedButton.icon(
                  icon: Text("Inbox"),
                  label: LBadge.text(
                    "23",
                    type: LElementType.light,
                    size: LElementSize.small,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _buttonCode),
            )
          ],
        ),
      ],
    );
  }
}
