import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';

class AboutUsPage extends StatelessWidget {
  final _title = "About Us";
  final _subtitle =
      "Know more about the team that created Liquid and will be maintaining it further."
      " And what make them initiate it and how to get involved with it.";

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
            'Liquid is maintained and developed by \l.link(href=https://twitter.com/heyrjs){@heyrjs} and \l.link(href=https://twitter.com/heypnd){@heypnd} on GitHub. We at \l.quote.bold{StackOrient Technologies} are actively looking to grow our team and would love to hear from you if '
            'you\'re exited to develop something cool or are passionate to bring innovations.\n\n'),
        LText('Liquid is one of the most advanced flutter UI kit for building '
            'responsive, beautiful, cross-platform applications. '
            'It was created at StackOrient by \l.link(href=https://twitter.com/heypnd){@heypnd}'
            ' and \l.link(href=https://twitter.com/heyrjs){@heyrjs}.\n'
            'The inspiration of liquid came from the fact that flutter is'
            ' cross-platform but still when we create an app in flutter it'
            ' takes a lot of time to manage the alignment and position of '
            'widgets on different screen sizes. Liquid solves this and many'
            ' countless problems like styling text, web-supported components,'
            ' powerful form support along with necessary utilities.\n'),
        LText('\l.h4.bold{Get Involved}\n'),
        LText(
            'Get involved with Liquid development team by opening an issue or submitting a \l.link(href=https://github.com/stackorient){pull request}.'),
      ],
    );
  }
}
