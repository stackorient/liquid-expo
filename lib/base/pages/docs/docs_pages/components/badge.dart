import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class BadgePage extends StatelessWidget {
  final _title = "LBadge";
  final _subtitle =
      "Creates a badge. Documentation and examples for badges, our small count and labeling component.";

  final _code = """

LBadge(
  
  child: Row(
       mainAxisSize: MainAxisSize.min,
       children: <Widget>[
       Icon(
          Icons.star,
          size: 15.0,
            ),
       SizedBox(
          width: 10.0,
        ),
       LText(
         "Badge",
        ),
      ],
    ),
  ),
  
  """;

  final _headCode = """

 LBadge.text(
    'text',
    type: LElementType.success,
    shape: LElementShape.pill,
    size: LElementSize.medium,
  ),
  
  """;

  final _closeCode = """

 LBadge.icon(
   shape: LElementShape.pill,
   size: LElementSize.medium,
   type: LElementType.success,
   icon: Icon(
     Icons.star,
     size: 15.0,
   ),
   label: LText('badge'),
 ),
  
  """;

  final _buttonCode = """

LRaisedButton(
   size: LElementSize.medium,
   type: LElementType.danger,
   child: Row(
     children: <Widget>[
       LText('Button'),
       Spacer(),
       LBadge.icon(
         type: LElementType.light,
         icon: Icon(Icons.ac_unit),
         label: Text(''),
       ),
     ],
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
        SizedBox(height: 35.0),
        Text(
          "Example",
          style: _theme.typographyTheme.h4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Creates Badge of different type, shapes and sizes.",
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
              child: LBadge(
                size: LElementSize.medium,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      size: 15.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    LText(
                      "Badge",
                    ),
                  ],
                ),
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
            "Types",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Create Badge of variable type.",
            style: _theme.typographyTheme.p,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: LColumn.child(
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "Shapes",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Create Badge of variable shapes.",
            style: _theme.typographyTheme.p,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: LColumn.child(
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
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
          child: Text(
            "Sizes",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Create Badges of variable sizes.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LBadge(
                type: LElementType.info,
                size: LElementSize.large,
                child: Text('large'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LBadge(
                type: LElementType.info,
                size: LElementSize.medium,
                child: Text('medium'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LBadge(
                type: LElementType.info,
                size: LElementSize.normal,
                child: Text('normal'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LBadge(
                type: LElementType.info,
                size: LElementSize.small,
                child: Text('small'),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "With text only",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Create Badge with text as its only child.",
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
              child: LBadge.text(
                'text',
                type: LElementType.success,
                shape: LElementShape.pill,
                size: LElementSize.medium,
              ),
            ),
            LColumn.child(
              child: codeText(context, _headCode),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "With icon and label",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Allows you to dispose LAlert by using 'onClose' function.",
            style: _theme.typographyTheme.p,
          ),
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
                type: LElementType.primary,
                icon: Icon(
                  Icons.star,
                  size: 15.0,
                ),
                label: Text('badge'),
              ),
            ),
            LColumn.child(
              child: codeText(context, _closeCode),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "Button with badge",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "To include badge with button [LButton]",
            style: _theme.typographyTheme.p,
          ),
        ),
        LRow(
          gutter: 10.0,
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: SizedBox(
                width: 150.0,
                child: LRaisedButton(
                  size: LElementSize.medium,
                  type: LElementType.danger,
                  child: Row(
                    children: <Widget>[
                      LText('Button'),
                      Spacer(),
                      LBadge(
                        type: LElementType.light,
                        child: Icon(Icons.ac_unit),
                      ),
                    ],
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
