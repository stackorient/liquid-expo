import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class ButtonGroup extends StatelessWidget {
  final _title = "LButtonGroup";
  final _subtitle =
      "Group a series of buttons together on a single line with the button group.";

  final _code = """
LButtonGroup(
  children: [
    LFlatButton.text(
      text: 'Left',
      type: LElementType.dark,
      onPressed: () {},
    ),
    LFlatButton.text(
      text: 'Middle',
      type: LElementType.dark,
      onPressed: () {},
    ),
    LFlatButton.text(
      text: 'Right',
      type: LElementType.dark,
      onPressed: () {},
    ),
  ],
);
  """;

  final _headCode = """
LButtonGroup(
  direction: Axis.vertical,
  children: [
    LFlatButton.text(
      text: 'Left',
      type: LElementType.dark,
      onPressed: () {},
    ),
    LFlatButton.text(
      text: 'Middle',
      type: LElementType.dark,
      onPressed: () {},
    ),
    LFlatButton.text(
      text: 'Right',
      type: LElementType.dark,
      onPressed: () {},
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
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LButtonGroup(
                children: [
                  LFlatButton.text(
                    text: 'Left',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                  LFlatButton.text(
                    text: 'Middle',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                  LFlatButton.text(
                    text: 'Right',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _code),
            )
          ],
        ),
        LText(
          "\n\l.h4{Sizes}\n"
          "Instead of applying sizing to every button try adding to the group.\n",
        ),
        LColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LButtonGroup(
                size: LElementSize.large,
                children: [
                  LFlatButton.text(
                    text: 'Left',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                  LFlatButton.text(
                    text: 'Middle',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                  LFlatButton.text(
                    text: 'Right',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LButtonGroup(
                size: LElementSize.medium,
                children: [
                  LFlatButton.text(
                    text: 'Left',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                  LFlatButton.text(
                    text: 'Middle',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                  LFlatButton.text(
                    text: 'Right',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LButtonGroup(
                size: LElementSize.normal,
                children: [
                  LFlatButton.text(
                    text: 'Left',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                  LFlatButton.text(
                    text: 'Middle',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                  LFlatButton.text(
                    text: 'Right',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LButtonGroup(
                size: LElementSize.small,
                children: [
                  LFlatButton.text(
                    text: 'Left',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                  LFlatButton.text(
                    text: 'Middle',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                  LFlatButton.text(
                    text: 'Right',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
        LText(
          "\n\l.h4{Vertical variation}\n"
          "Change button group axis to vertical direction.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LButtonGroup(
                direction: Axis.vertical,
                children: [
                  LFlatButton.text(
                    text: 'Left',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                  LFlatButton.text(
                    text: 'Middle',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                  LFlatButton.text(
                    text: 'Right',
                    type: LElementType.dark,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _headCode),
            )
          ],
        ),
      ],
    );
  }
}
