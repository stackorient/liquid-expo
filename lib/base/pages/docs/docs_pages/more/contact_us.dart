import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:liquid/liquid.dart';
import 'package:url_launcher/url_launcher.dart';

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
        LText('\l.h4.bold{StackOrient}\n'),
        LRow(
          columns: [
            LColumn.child(
                child: IconButton(
                    icon: Icon(FontAwesome.linkedin_square),
                    onPressed: () => launch(
                        'https://www.linkedin.com/company/stackorient/?viewAsMember=true')))
          ],
        ),
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
