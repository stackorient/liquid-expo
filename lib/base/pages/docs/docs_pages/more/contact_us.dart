import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:liquid_ui/liquid_ui.dart';
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
        Row(
          children: <Widget>[
            LFlatButton.text(
              size: LElementSize.medium,
              text: 'StackOrient',
              fillColor: Colors.blue,
              onPressed: () => launch('https://stackorient.com/'),
            ),
            LIconButton(
              splashThickness: 5.0,
              icon: Icon(FontAwesome.linkedin_square, color: Colors.blue),
              onPressed: () => launch(
                  'https://www.linkedin.com/company/stackorient/?viewAsMember=true'),
            ),
            LIconButton(
              splashThickness: 5.0,
              icon: Icon(FontAwesome.instagram, color: Colors.pink),
              onPressed: () =>
                  launch('https://www.instagram.com/stackorient.inc/?hl=en'),
            ),
          ],
        ),
        LText(
            '\n\n\l.quote.italic{Regarding any query} \l.link(href=mailto:support@stackorient.com){mail} us.\n\n\n\n'),
        LText('\l.h4.bold{Contact the Team}\n\n'),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LText('\l.bullet.lead.italic{Pulkit Nanda }\n'),
            LIconButton(
              splashThickness: 5.0,
              icon: Icon(FontAwesome.linkedin_square, color: Colors.blue),
              onPressed: () =>
                  launch('https://www.linkedin.com/in/pulkit-nanda/'),
            ),
            LIconButton(
              splashThickness: 5.0,
              icon: Icon(FontAwesome.instagram, color: Colors.pink),
              onPressed: () =>
                  launch('https://www.instagram.com/pulkit.nanda/?hl=en'),
            ),
            LIconButton(
              splashThickness: 5.0,
              icon: Icon(FontAwesome.twitter, color: Colors.blue),
              onPressed: () => launch('https://twitter.com/heypnd'),
            ),
            LIconButton(
              splashThickness: 5.0,
              icon: Icon(FontAwesome.github),
              onPressed: () => launch('https://github.com/pulkitnanda49'),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            LText('\l.bullet.lead.italic{Raj Singh }\n'),
            LIconButton(
              splashThickness: 5.0,
              icon: Icon(FontAwesome.linkedin_square, color: Colors.blue),
              onPressed: () => launch('https://www.linkedin.com/in/raj457036/'),
            ),
            LIconButton(
              splashThickness: 5.0,
              icon: Icon(FontAwesome.instagram, color: Colors.pink),
              onPressed: () =>
                  launch('https://www.instagram.com/hey_raj_here/?hl=en'),
            ),
            LIconButton(
              splashThickness: 5.0,
              icon: Icon(FontAwesome.twitter, color: Colors.blue),
              onPressed: () => launch('https://twitter.com/heyrjs'),
            ),
            LIconButton(
              splashThickness: 5.0,
              icon: Icon(FontAwesome.github),
              onPressed: () => launch('https://github.com/raj457036'),
            ),
          ],
        ),
      ],
    );
  }
}
