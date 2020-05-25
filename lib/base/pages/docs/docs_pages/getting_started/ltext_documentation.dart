import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';

import '../../code_highlight.dart';

class LTextPage extends StatelessWidget {
  final _title = "LText";
  final _subtitle =
      "The [LText] widget displays text that uses multiple different styles.\n"
      "The text to display is described using a series of styleClass, and each of"
      "which has an associated style [LStyleBlock] that is used for parsing of associated style.";

  final _linearcode = """
  LText(
    "Hello \\l.bold.italic.underline{World}"
  )
  """;
  final _headingcode = """

 LText(
  "Hello, \\l.green{@heyrjs} and \\l.blue{@heypnd}",
  
  inlineStyleSheet: <String, LStyleBlock>{
    "green": LStyleBlock(
      style: LSpanStyle(
        style: TextStyle(color: Colors.green),
      ),
    ),
    "blue": LStyleBlock(
      style: LSpanStyle(
        style: TextStyle(color: Colors.blue),
      ),
    )
  },
)

  """;
  final _displaycode = """
LText( 
  "Contact the creators," 
  "\\l.link(href=https://twitter.com/heypnd){@heypnd}" 
  "and \\l.link(href=https://twitter.com/heyrjs){@heyrjs}."
),

//....
LiquidApp(
  //...
  styleSheet: {
     "link": LStyleBlock(
       style: LSpanStyle(
         recognizerHandler: (args) {
           final href = args.get('href');
           return TapGestureRecognizer()
             ..onTap = () => href != null ? launch(href) : null;
         },
         style: TextStyle(
           color: Colors.blue[800],
         ),
       ),
     ),
   },
  );
  """;

  final _inlinecode = """
LText(
  "\\l.h5.bold.color(hex=#e846d2){StackOrient}\\n"
  "\\l.bullet.h6.bold{Services}\\n"
  "   \\l.bullet{App development}\\n"
  "   \\l.bullet{Web development}\\n"
  "   \\l.bullet{Flutter development}\\n"
  "   \\l.bullet{Backend Services}\\n"
  "   \\l.bullet{UI & UX Design}\\n"
  "\\l.quote.italic{Contact Us}"
  " \\l.h6.link(href=https://stackorient.com){here}"
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
        LRow(
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 6,
              xl: 6,
              mainAxisAlignment: MainAxisAlignment.center,
              child: LText("Hello \l.bold.italic.underline{World}"),
            ),
            LColumn.child(
              child: codeText(context, _linearcode),
            )
          ],
        ),
        LText('\n\n\l.h4.bold{LText String Structure}\n'),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset('assets/images/ltextexp.png'),
        ),
        LText(
          "\l.h4.bold{With inlineStyleSheet}\n"
          "Inline Style Sheet helps to define a \l.bold{StyleSheet} which is only available "
          "to \l.bold{LText} in which it is defined.",
        ),
        LRow(
          crossAxisAlignment: CrossAxisAlignment.center,
          gutter: 10.0,
          columns: [
            LColumn(
              lg: 6,
              xl: 6,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LText(
                  "Hello, \l.green{@heyrjs} and \l.blue{@heypnd}",
                  inlineStyleSheet: <String, LStyleBlock>{
                    "green": LStyleBlock(
                      style: LSpanStyle(
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    "blue": LStyleBlock(
                      style: LSpanStyle(
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  },
                )
              ],
            ),
            LColumn.child(
              child: codeText(context, _headingcode,
                  scrollable: mq.isXS || mq.isSM || mq.isMD),
            )
          ],
        ),
        LText("\l.h4.bold{Global StyleSheet}\n"
            "To define global styleSheet use \l.bold{LiquidApp}'s "
            "\l.bold.underline{styleSheet} parameter.\n\n"),
        LText(
            "\l.bullet.h5.bold{Example: How to define a Link styleSheet globally.}\n"),
        LRow(
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn(
              lg: 6,
              xl: 6,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LText(
                    "Contact the creators, \l.link(href=https://twitter.com/heypnd){@heypnd} "
                    "and \l.link(href=https://twitter.com/heyrjs){@heyrjs}.\n"),
              ],
            ),
            LColumn.child(
              child: codeText(context, _displaycode,
                  scrollable: mq.isXS || mq.isSM || mq.isMD),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: LText("\l.bullet.h5.bold{Default Style Classes}\n"),
        ),
        LText("   \l.bullet.bold{bold}\n"
            "   \l.bullet.bold{italic}\n"
            "   \l.bullet.bold{underline}\n"
            "   \l.bullet.bold{strikethrough}\n"
            "   \l.bullet.bold{overline}\n"
            "   \l.bullet.bold{capitalize}\n"
            "   \l.bullet.bold{uppercase}\n"
            "   \l.bullet.bold{lowercase}\n"
            "   \l.bullet.bold{trim}\n"
            "   \l.bullet.bold{trim-left}\n"
            "   \l.bullet.bold{trim-right}\n"
            "   \l.bullet.bold{color(hex=hex color code)}\n"
            "   \l.bullet.bold{highlight(hex=hex_color)}\n"
            "   \l.bullet.bold{capitalize}\n"
            "   \l.bullet.bold{h1}\n"
            "   \l.bullet.bold{h2}\n"
            "   \l.bullet.bold{h3}\n"
            "   \l.bullet.bold{h4}\n"
            "   \l.bullet.bold{h5}\n"
            "   \l.bullet.bold{h6}\n"
            "   \l.bullet.bold{small}\n"
            "   \l.bullet.bold{p}\n"
            "   \l.bullet.bold{display1}\n"
            "   \l.bullet.bold{display2}\n"
            "   \l.bullet.bold{display3}\n"
            "   \l.bullet.bold{display4}\n"
            "   \l.bullet.bold{lead}\n"
            "   \l.bullet.bold{blockquote}\n"
            "   \l.bullet.bold{bullet}"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: LText(
            "\l.h4.bold{Example}\n"
            "A complex example to build an unordered list using \l.bold{LText}\n",
          ),
        ),
        LRow(
          gutter: 10.0,
          columns: [
            LColumn(
              lg: 6,
              xl: 6,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LText("\l.h5.bold.color(hex=#e846d2){StackOrient}\n"
                    "\l.bullet.h6.bold{Services}\n"
                    "   \l.bullet{App development}\n"
                    "   \l.bullet{Web development}\n"
                    "   \l.bullet{Flutter development}\n"
                    "   \l.bullet{Backend Services}\n"
                    "   \l.bullet{UI & UX Design}\n"
                    "\l.quote.italic{Contact Us} \l.h6.link(href=https://stackorient.com){here}\n"),
              ],
            ),
            LColumn.child(
              child: codeText(context, _inlinecode,
                  scrollable: mq.isXS || mq.isSM || mq.isMD),
            )
          ],
        ),
      ],
    );
  }
}
