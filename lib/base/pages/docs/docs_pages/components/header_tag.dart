import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class HeaderTagPage extends StatelessWidget {
  final _title = "LHeaderTag";
  final _subtitle =
      "Documentation and examples for tags, our small labeling component.";

  final _code = """

LHeaderTag(
   child: Text('Header Tag'),
   tagColor: LiquidColors().primary,
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
          "Example",
          style: _theme.typographyTheme.h4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Creates Tags of variable color and sizes.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LHeaderTag(
                child: Text('Header Tag'),
                tagColor: LiquidColors().primary,
              ),
            ),
            LColumn.child(
              child: codeText(context, _code),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "Sizes",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Create Tags of variable sizes.",
            style: _theme.typographyTheme.p,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: LColumn.child(
            crossAxisAlignment: CrossAxisAlignment.start,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10.0,
              runSpacing: 10.0,
              children: <Widget>[
                LHeaderTag(
                  child: Text('New Tag'),
                  tagColor: LiquidColors().primary,
                ),
                LHeaderTag(
                  child: Text('New Tag'),
                  tagColor: LiquidColors().primary,
                  tagWidth: 5.0,
                  tagHeight: 30.0,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
          child: Text(
            "Colors",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Create tags of variable colors.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LHeaderTag(
                child: Text('primary'),
                tagColor: LiquidColors().primary,
                tagWidth: 5.0,
                tagHeight: 30.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LHeaderTag(
                child: Text('secondary'),
                tagColor: LiquidColors().secondary,
                tagWidth: 5.0,
                tagHeight: 30.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LHeaderTag(
                child: Text('danger'),
                tagColor: LiquidColors().danger,
                tagWidth: 5.0,
                tagHeight: 30.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LHeaderTag(
                child: Text('success'),
                tagColor: LiquidColors().success,
                tagWidth: 5.0,
                tagHeight: 30.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LHeaderTag(
                child: Text('dark'),
                tagColor: LiquidColors().dark,
                tagWidth: 5.0,
                tagHeight: 30.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LHeaderTag(
                child: Text('info'),
                tagColor: LiquidColors().info,
                tagWidth: 5.0,
                tagHeight: 30.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LHeaderTag(
                child: Text('light'),
                tagColor: LiquidColors().light,
                tagWidth: 5.0,
                tagHeight: 30.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
