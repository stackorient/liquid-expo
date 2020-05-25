import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';

class ContactUsPage extends StatelessWidget {
  final _title = "Contact Us";
  final _subtitle = "Get in touch with us.";

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
        LText('\l.h4.bold{Team}\n'),
        LText(
            'Liquid is maintained and developed \l.link(href=https://twitter.com/heyrjs){@heyrjs} and \l.link(href=https://twitter.com/heypnd){@heypnd} on GitHub. We at \l.quote.bold{StackOrient Technologies} are actively looking to grow our team and would love to hear from you if '
            'you\'re exited to develop something cool or are passionate to bring innovations.\n\n'),
        LText(
            'Liquid is the most advance flutter UI kit for building responsive, beautiful, cross-platform applications. It was created at StackOrient by \l.link(href=https://twitter.com/heypnd){@heypnd} and \l.link(href=https://twitter.com/heyrjs){@heyrjs}. We have made this project to keep responsiveness as one of it'
            's main feature. Along it we make sure to cover all the problems that we have faced being the flutter developers are solved to much of it'
            's extent and also we have added some additional components to overcome or reduce the complication, difficulties and the time that is involved in building them.\n\n'),
        LText('\l.h4.bold{Get Involved}\n'),
        LText(
            'Get involved with Liquid development team by opening an issue or submitting a \l.link(href=https://github.com/stackorient){pull request}.'),
      ],
    );
  }
}
