import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';
import '../../code_highlight.dart';

class AlertPage extends StatelessWidget {
  final _title = "LAlert";
  final _subtitle =
      "Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.";

  final _code = """
LAlert(
  type: LElementType.primary,
  text: 'Get started with LAlert',
),
  """;

  final _headCode = """
LAlert(
  type: LElementType.success,
  heading: LAlertHeading(
    text: "Alert with heading",
  ),
  child: LText(
    "Aww yeah, you successfully read this "
    "important alert message. Created by"
    " \l.link(href=https://twitter.com/heypnd){@heypnd} "
    "and \l.link(href=https://twitter.com/heyrjs){@heyrjs},",
  ),
),
  """;

  final _closeCode = """
LAlert(
  type: LElementType.info,
  heading: LAlertHeading(
    text: "Alert with a close button",
    onClose: (){},
  ),
  child: LText(
    "Aww yeah, you successfully read this "
    "important alert message. Created by"
    " \\l.link(href=https://twitter.com/heypnd){@heypnd} "
    "and \\l.link(href=https://twitter.com/heyrjs){@heyrjs},",
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
        SizedBox(height: 20.0),
        Text(
          "Example",
          style: _theme.typographyTheme.h4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Create an Alert box of different types and sizes.",
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
              child: LAlert(
                type: LElementType.primary,
                text: 'Get started with LAlert',
              ),
            ),
            LColumn.child(
              child: codeText(context, _code),
            )
          ],
        ),
        LText(
          "\l.h4{Types}\n"
          "Create Alert box of variable types.\n",
        ),
        LColumn.child(
          child: Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: <Widget>[
              LAlert(
                type: LElementType.primary,
                text: ' LElementType.primary',
              ),
              LAlert(
                type: LElementType.secondary,
                text: ' LElementType.secondary',
              ),
              LAlert(
                type: LElementType.success,
                text: ' LElementType.success',
              ),
              LAlert(
                type: LElementType.danger,
                text: ' LElementType.danger',
              ),
              LAlert(
                type: LElementType.dark,
                text: ' LElementType.dark',
              ),
              LAlert(
                type: LElementType.info,
                text: ' LElementType.info',
              ),
              LAlert(
                type: LElementType.light,
                text: ' LElementType.light',
              ),
            ],
          ),
        ),
        LText(
          "\n\l.h4{Sizes}\n"
          "Create Alert box of variable sizes.\n",
        ),
        LColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LAlert(
                type: LElementType.info,
                size: LElementSize.large,
                text: ' LElementSize.large',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LAlert(
                size: LElementSize.medium,
                type: LElementType.info,
                text: ' LElementSize.medium',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LAlert(
                size: LElementSize.normal,
                type: LElementType.info,
                text: ' LElementSize.normal',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LAlert(
                size: LElementSize.small,
                type: LElementType.info,
                text: 'LElementSize.small',
              ),
            ),
          ],
        ),
        LText(
          "\n\l.h4{With heading}\n"
          "Allows you to include heading in LAlert by using heading tag and "
          "also provides access to customize it accordingly.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LAlert(
                type: LElementType.success,
                heading: LAlertHeading(
                  style: _theme.typographyTheme.h6.withColor(Colors.white),
                  text: "Alert with heading",
                ),
                child: LText(
                  "Aww yeah, you successfully read this important alert message. Created by"
                  " \l.link(href=https://twitter.com/heypnd){@heypnd} and \l.link(href=https://twitter.com/heyrjs){@heyrjs},",
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _headCode),
            )
          ],
        ),
        LText(
          "\n\l.h4{With a Close Button}\n"
          "Add a close button to header\n"
          "\l.bold{NOTE: You have to remove alert manually}\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LAlert(
                type: LElementType.info,
                heading: LAlertHeading(
                  style: _theme.typographyTheme.h6.withColor(Colors.white),
                  text: "Alert with a close button",
                  onClose: () {},
                ),
                child: LText(
                  "Aww yeah, you successfully read this "
                  "important alert message. Created by"
                  " \l.link(href=https://twitter.com/heypnd){@heypnd} "
                  "and \l.link(href=https://twitter.com/heyrjs){@heyrjs},",
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _closeCode),
            )
          ],
        ),
      ],
    );
  }
}
