import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class AlertPage extends StatelessWidget {
  final _title = "LAlert";
  final _subtitle =
      "Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.";

  final _code = """

LAlert(
   type: LElementType.primary,
   text: ' LElementType.primary',
 ),
  
  """;

  final _headCode = """

 LAlert(
   type: LElementType.success,
   heading: LAlertHeading(
     style: _theme.typographyTheme.h6.withColor(Colors.white),
     text: "Welcome to LAlert",
   ),
   text:
       "Aww yeah, you successfully read this important alert message." 
       "Created by @heypnd and @heyrjs,",
 ),
  
  """;

  final _closeCode = """

 LAlert(
   type: LElementType.success,
   heading: LAlertHeading(
     style: _theme.typographyTheme.h6.withColor(Colors.white),
     text: "Welcome to LAlert",
     onClose: (){},
   ),
   text:
       "Aww yeah, you successfully read this important alert message." 
       "Created by @heypnd and @heyrjs,",
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
            "Create an Alert box of different types and sizes.",
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
            "Create Alert box of variable types.",
            style: _theme.typographyTheme.p,
          ),
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
            "Create Alert box of variable sizes.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LAlert(
                type: LElementType.info,
                size: LElementSize.large,
                text: ' LElementSize.large',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LAlert(
                size: LElementSize.medium,
                type: LElementType.info,
                text: ' LElementSize.medium',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LAlert(
                size: LElementSize.normal,
                type: LElementType.info,
                text: ' LElementSize.normal',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LAlert(
                size: LElementSize.small,
                type: LElementType.info,
                text: 'LElementSize.small',
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "With heading",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Allows you to include heading in LAlert by using heading tag and also provides access to customize it accordingly.",
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
              child: LAlert(
                type: LElementType.success,
                heading: LAlertHeading(
                  style: _theme.typographyTheme.h6.withColor(Colors.white),
                  text: "Welcome to LAlert with heading",
                ),
                text:
                    "Aww yeah, you successfully read this important alert message. Created by @heypnd and @heyrjs,",
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
            "With dispose",
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
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LAlert(
                type: LElementType.danger,
                heading: LAlertHeading(
                  style: _theme.typographyTheme.h6.withColor(Colors.white),
                  text: "Welcome to disposable LAlert",
                  onClose: () {},
                ),
                text:
                    "Aww yeah, you successfully read this important alert message. Created by @heypnd and @heyrjs,",
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
