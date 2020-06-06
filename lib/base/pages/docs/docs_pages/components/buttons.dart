import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';
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
);

LFlatButton(
  type: LElementType.secondary,
  child: Text('Flat'),
  onPressed: () {},
);

LOutlineButton(
  type: LElementType.secondary,
  child: Text('Outline'),
  onPressed: () {},
);

LIconButton(
  icon: Icon(Icons.ac_unit),
  onPressed: () {},
);
  """;

  final _headCode = """
LRaisedButton.text(
  text: 'Raised',
  onPressed: () {},
  type: LElementType.primary,
);

LFlatButton.text(
  type: LElementType.secondary,
  text: 'Flat',
  onPressed: () {},
);

LOutlineButton.text(
  type: LElementType.secondary,
  text: 'Outline',
  onPressed: () {},
);  
  """;

  final _closeCode = """
LRaisedButton.icon(
  icon: Icon(Icons.ac_unit),
  label: Text('Raised'),
  onPressed: () {},
  type: LElementType.primary,
);

LFlatButton.icon(
  type: LElementType.secondary,
  icon: Icon(Icons.flight),
  label: Text('Flat'),
  onPressed: () {},
);

LOutlineButton.icon(
  type: LElementType.secondary,
  icon: Icon(Icons.outlined_flag),
  label: Text('Outline'),
  onPressed: () {},
);
  """;

  final _raisedButton = """
LRaisedButton(
  type: LElementType.success,
  child: Text('Elevate On Push'),
  onPressed: () {},
  pushAction: LRaisedButtonPushAction.elevate,
);

LRaisedButton(
  type: LElementType.danger,
  child: Text('Drop On Push'),
  onPressed: () {},
  pushAction: LRaisedButtonPushAction.pushDown,
);

LRaisedButton.icon(
  icon: Icon(Icons.check),
  type: LElementType.success,
  label: Text("Done"),
  onPressed: () {},
);
  """;
  final _outlineButton = """
LOutlineButton.text(
  text: 'Standard',
  type: LElementType.success,
  onPressed: () {},
);

LOutlineButton.text(
  text: 'Pill',
  type: LElementType.danger,
  shape: LElementShape.pill,
  onPressed: () {},
);

LOutlineButton.icon(
  icon: Icon(Icons.check),
  type: LElementType.success,
  label: Text("Done"),
  onPressed: () {},
);
  """;
  final _flatButton = """
 LFlatButton.text(
  text: 'Standard',
  type: LElementType.success,
  onPressed: () {},
);

LFlatButton.text(
  text: 'Pill',
  type: LElementType.danger,
  shape: LElementShape.pill,
  onPressed: () {},
);

LFlatButton.icon(
  icon: Icon(Icons.check),
  type: LElementType.success,
  label: Text("Done"),
  onPressed: () {},
);
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
);

LIconButton(
  icon: Icon(
    Icons.adb,
    color: Colors.red,
  ),
  splashThickness: 40.0,
  radius: 40.0,
  onPressed: () {},
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
              child: Wrap(
                alignment: WrapAlignment.center,
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
        LText(
          "\n\l.h4{Only Text}\n"
          "Create button allowing text as its only child.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: Wrap(
                alignment: WrapAlignment.center,
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
        LText(
          "\n\l.h4{Button With an Icon and a Label}\n"
          "Create button allowing icon as its only child.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: Wrap(
                alignment: WrapAlignment.center,
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
        LText(
          "\n\l.h4{Shapes}\n"
          "Create Buttons of variable shapes.\n",
        ),
        LColumn.child(
          crossAxisAlignment: CrossAxisAlignment.start,
          child: Wrap(
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
        LText(
          "\n\l.h4{Sizes}\n"
          "Create Buttons of variable sizes.\n",
        ),
        LColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            LOutlineButton.text(
              text: 'large',
              size: LElementSize.large,
              type: LElementType.primary,
              onPressed: () {},
            ),
            LOutlineButton.text(
              size: LElementSize.medium,
              text: 'medium',
              type: LElementType.primary,
              onPressed: () {},
            ),
            LOutlineButton.text(
              size: LElementSize.normal,
              text: 'normal',
              type: LElementType.primary,
              onPressed: () {},
            ),
            LOutlineButton.text(
              size: LElementSize.small,
              text: 'small',
              type: LElementType.primary,
              onPressed: () {},
            ),
          ],
        ),
        LText(
          "\n\l.h4{Raised Button}\n"
          "Button with elevation.\n",
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
                alignment: WrapAlignment.center,
                children: <Widget>[
                  LRaisedButton(
                    type: LElementType.success,
                    child: Text('Elevate On Push'),
                    onPressed: () {},
                    pushAction: LRaisedButtonPushAction.elevate,
                  ),
                  LRaisedButton(
                    type: LElementType.danger,
                    child: Text('Drop On Push'),
                    onPressed: () {},
                    pushAction: LRaisedButtonPushAction.pushDown,
                  ),
                  LRaisedButton.icon(
                    icon: Icon(Icons.check),
                    type: LElementType.success,
                    label: Text("Done"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _raisedButton),
            )
          ],
        ),
        LText(
          "\n\l.h4{Outline Buttons}\n"
          "A button with an outline.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: Wrap(
                alignment: WrapAlignment.center,
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
                  LOutlineButton.icon(
                    icon: Icon(Icons.check),
                    type: LElementType.success,
                    label: Text("Done"),
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
        LText(
          "\n\l.h4{Flat Buttons}\n"
          "A button without an elevation.\n",
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
                alignment: WrapAlignment.center,
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
                  LFlatButton.icon(
                    icon: Icon(Icons.check),
                    type: LElementType.success,
                    label: Text("Done"),
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
        LText(
          "\n\l.h4{Icon Buttons}\n"
          "A button with an icon.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
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
