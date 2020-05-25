import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class ButtonPage extends StatelessWidget {
  final _title = "Type of Buttons";
  final _subtitle =
      "Custom button styles for actions in forms, dialogs, and more with support for multiple sizes, states, and more.";

  final _code = """
 LRaisedButton(
    child: Text('Raised'),
    onPressed: () {},
    type: LElementType.primary,
  ),
  LFlatButton(
    type: LElementType.secondary,
    child: Text('Flat'),
    onPressed: () {},
  ),
  LOutlineButton(
    type: LElementType.secondary,
    child: Text('Outline'),
    onPressed: () {},
  ),
  LIconButton(
    icon: Icon(Icons.ac_unit),
    onPressed: () {},
  ),
  
  """;

  final _headCode = """

LRaisedButton.text(
     text: 'Raised',
     onPressed: () {},
     type: LElementType.primary,
   ),
   LFlatButton.text(
     type: LElementType.secondary,
     text: 'Flat',
     onPressed: () {},
   ),
   LOutlineButton.text(
     type: LElementType.secondary,
     text: 'Outline',
     onPressed: () {},
   ),
  
  """;

  final _closeCode = """

 LRaisedButton.icon(
    icon: Icon(Icons.ac_unit),
    label: Text('Raised'),
    onPressed: () {},
    type: LElementType.primary,
  ),
  LFlatButton.icon(
    type: LElementType.secondary,
    icon: Icon(Icons.flight),
    label: Text('Flat'),
    onPressed: () {},
  ),
  LOutlineButton.icon(
    type: LElementType.secondary,
    icon: Icon(Icons.outlined_flag),
    label: Text('Outline'),
    onPressed: () {},
  ),
  
  """;

  final _raisedButton = """

 LRaisedButton(
   type: LElementType.success,
   child: Text('Raised with elevation.'),
   onPressed: () {},
   pushAction: LRaisedButtonPushAction.elevate,
 ),
 LRaisedButton(
   type: LElementType.danger,
   child: Text('Raised with pushDown.'),
   onPressed: () {},
   pushAction: LRaisedButtonPushAction.pushDown,
 )

  """;
  final _outlineButton = """

LOutlineButton.text(
   text: 'Standard',
   type: LElementType.success,
   onPressed: () {},
 ),
 LOutlineButton.text(
   text: 'Pill',
   type: LElementType.danger,
   shape: LElementShape.pill,
   onPressed: () {},
 ),

  """;
  final _flatButton = """

 LFlatButton.text(
    text: 'Standard',
    type: LElementType.success,
    onPressed: () {},
  ),
  LFlatButton.text(
    text: 'Pill',
    type: LElementType.danger,
    shape: LElementShape.pill,
    onPressed: () {},
  ),

  """;
  final _iconButton = """

  LIconButton(
    icon: Icon(
      Icons.adb,
      color: Colors.green,
    ),
    fillColor: Colors.greenAccent[100],
    radius: 5.0,
    onPressed: () {},
  ),
  LIconButton(
    icon: Icon(
      Icons.adb,
      color: Colors.red,
    ),
    splashThickness: 40.0,
    radius: 40.0,
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
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: Wrap(
                children: <Widget>[
                  LRaisedButton(
                    child: Text('Raised'),
                    onPressed: () {},
                    type: LElementType.primary,
                  ),
                  LFlatButton(
                    type: LElementType.secondary,
                    child: Text('Flat'),
                    onPressed: () {},
                  ),
                  LOutlineButton(
                    type: LElementType.secondary,
                    child: Text('Outline'),
                    onPressed: () {},
                  ),
                  LIconButton(
                    icon: Icon(Icons.ac_unit),
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "With text",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Create button allowing text as its only child.",
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
              child: Wrap(
                children: <Widget>[
                  LRaisedButton.text(
                    text: 'Raised',
                    onPressed: () {},
                    type: LElementType.primary,
                  ),
                  LFlatButton.text(
                    type: LElementType.secondary,
                    text: 'Flat',
                    onPressed: () {},
                  ),
                  LOutlineButton.text(
                    type: LElementType.secondary,
                    text: 'Outline',
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "With icon",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Create button allowing icon as its only child.",
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
              child: Wrap(
                children: <Widget>[
                  LRaisedButton.icon(
                    icon: Icon(Icons.ac_unit),
                    label: Text('Raised'),
                    onPressed: () {},
                    type: LElementType.primary,
                  ),
                  LFlatButton.icon(
                    type: LElementType.secondary,
                    icon: Icon(Icons.flight),
                    label: Text('Flat'),
                    onPressed: () {},
                  ),
                  LOutlineButton.icon(
                    type: LElementType.secondary,
                    icon: Icon(Icons.outlined_flag),
                    label: Text('Outline'),
                    onPressed: () {},
                  ),
                ],
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
            "Shapes",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Create Buttons of variable shapes.",
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
                LFlatButton.text(
                  text: 'Flat',
                  type: LElementType.success,
                  shape: LElementShape.standard,
                  onPressed: () {},
                ),
                LOutlineButton.text(
                  text: 'Outline',
                  shape: LElementShape.pill,
                  type: LElementType.danger,
                  onPressed: () {},
                )
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
            "Create Buttons of variable sizes.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: LOutlineButton.text(
                  text: 'large',
                  size: LElementSize.large,
                  type: LElementType.primary,
                  onPressed: () {},
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: LOutlineButton.text(
                  size: LElementSize.medium,
                  text: 'medium',
                  type: LElementType.primary,
                  onPressed: () {},
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: LOutlineButton.text(
                  size: LElementSize.normal,
                  text: 'normal',
                  type: LElementType.primary,
                  onPressed: () {},
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: LOutlineButton.text(
                  size: LElementSize.small,
                  text: 'small',
                  type: LElementType.primary,
                  onPressed: () {},
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "LRaisedButton",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Button with elevation.",
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
              child: Wrap(
                children: <Widget>[
                  LRaisedButton(
                    type: LElementType.success,
                    child: Text('Raised with elevation.'),
                    onPressed: () {},
                    pushAction: LRaisedButtonPushAction.elevate,
                  ),
                  LRaisedButton(
                    type: LElementType.danger,
                    child: Text('Raised with pushDown.'),
                    onPressed: () {},
                    pushAction: LRaisedButtonPushAction.pushDown,
                  )
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _raisedButton, scrollable: false),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "LOutlineButton",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Button with outline.",
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
              child: Wrap(
                children: <Widget>[
                  LOutlineButton.text(
                    text: 'Standard',
                    type: LElementType.success,
                    onPressed: () {},
                  ),
                  LOutlineButton.text(
                    text: 'Pill',
                    type: LElementType.danger,
                    shape: LElementShape.pill,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _outlineButton),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "LFlatButton",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Button without elevation.",
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
              child: Wrap(
                children: <Widget>[
                  LFlatButton.text(
                    text: 'Standard',
                    type: LElementType.success,
                    onPressed: () {},
                  ),
                  LFlatButton.text(
                    text: 'Pill',
                    type: LElementType.danger,
                    shape: LElementShape.pill,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _flatButton),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "LIconButton",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Button with icon. Allows to change the radius of the button. ",
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
              child: Wrap(
                children: <Widget>[
                  LIconButton(
                    icon: Icon(
                      Icons.adb,
                      color: Colors.green,
                    ),
                    fillColor: Colors.greenAccent[100],
                    radius: 5.0,
                    onPressed: () {},
                  ),
                  LIconButton(
                    icon: Icon(
                      Icons.adb,
                      color: Colors.red,
                    ),
                    splashThickness: 40.0,
                    radius: 40.0,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _iconButton),
            )
          ],
        ),
      ],
    );
  }
}
