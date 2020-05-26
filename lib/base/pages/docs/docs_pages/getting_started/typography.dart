import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid/liquid.dart';

import '../../bloc/docs_bloc.dart';
import '../../code_highlight.dart';
import '../env.dart';

class TypographyPage extends StatelessWidget {
  final _title = "Typography";
  final _subtitle = "Documentation and example for Liquid typography, including"
      " other elements like headings, displays, links etc.";

  final _linearcode = """
LText("Hello \l.bold.italic.underline{World}");
  """;

  final _headingcode = """
LiquidTheme.of(context).typographyTheme.h1;

LiquidTheme.of(context).typographyTheme.h2;

LiquidTheme.of(context).typographyTheme.h3;

LiquidTheme.of(context).typographyTheme.h4;

LiquidTheme.of(context).typographyTheme.h5;

LiquidTheme.of(context).typographyTheme.h6;
  """;

  final _displaycode = """
LiquidTheme.of(context).typographyTheme.display1;

LiquidTheme.of(context).typographyTheme.display2;

LiquidTheme.of(context).typographyTheme.display3;

LiquidTheme.of(context).typographyTheme.display4;
  """;

  final _inlinecode = """
LText("\\l.p{Liquid the most advance flutter UI kit.}\\n");

LText("\\l.small{Liquid the most advance flutter UI kit.}\\n");

LText("\\l.lead{Liquid the most advance flutter UI kit.}\\n");

LText("\\l.quote{Liquid the most advance flutter UI kit.}\\n");

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
        LText("\l.bullet.h5.bold{Headings}\n"),
        LRow(
          mainAxisAlignment: MainAxisAlignment.center,
          axis: LRowAxis.all(Axis.vertical),
          columns: [
            LColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LText("\l.h1{h1 heading}\n"),
                LText("\l.h2{h2 heading}\n"),
                LText("\l.h3{h3 heading}\n"),
                LText("\l.h4{h4 heading}\n"),
                LText("\l.h5{h5 heading}\n"),
                LText("\l.h6{h6 heading}\n"),
              ],
            ),
            LColumn.child(
              child: codeText(context, _headingcode),
            )
          ],
        ),
        LText("\l.bullet.h5.bold{Displays}\n"),
        LRow(
          axis: LRowAxis.all(Axis.vertical),
          columns: [
            LColumn(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LText("\l.display1{display 1}\n"),
                LText("\l.display2{display 2}\n"),
                LText("\l.display3{display 3}\n"),
                LText("\l.display4{display 4}\n"),
              ],
            ),
            LColumn.child(
              child: codeText(context, _displaycode),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: LText("\l.bullet.h5.bold{Inline text elements}\n"),
        ),
        LRow(
          crossAxisAlignment: CrossAxisAlignment.start,
          axis: LRowAxis.all(Axis.vertical),
          columns: [
            LColumn(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LText("\l.p{Liquid the most advance flutter UI kit.}\n"),
                LText("\l.small{Liquid the most advance flutter UI kit.}\n"),
                LText("\l.lead{Liquid the most advance flutter UI kit.}\n"),
                LText("\l.quote{Liquid the most advance flutter UI kit.}\n"),
              ],
            ),
            LColumn.child(
              child: codeText(context, _inlinecode),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: LText(
            "\l.h4.bold{LText}\n"
            "The \l.bold{LText} widget displays text that uses multiple different styles.",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: LText(
            '\l.h5{Example}\n'
            "The below example will create a text with \l.bold{bold}, "
            "\l.italic{italic} and \l.underline{underline} style applied to \l.bold{World}.\n\n"
            "To know more about \l.bold{LText} or use typography and other features like"
            " \l.bold{inline stylesheet} or \l.bold{link} or \l.bold{capitalize} or other"
            " default style classes do look into \l.color(hex=#0000ff).ltext{LText documentation}. ",
            inlineStyleSheet: {
              "ltext": LStyleBlock(
                style: LSpanStyle(
                  recognizerHandler: (args) => TapGestureRecognizer()
                    ..onTap = () => BlocProvider.of<DocsBloc>(context).add(
                          LoadDocFor(ltext_documentation, "Getting Started"),
                        ),
                ),
              ),
            },
          ),
        ),
        LRow(
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              md: 3,
              lg: 3,
              xl: 3,
              mainAxisAlignment: MainAxisAlignment.center,
              child: LText("Hello \l.bold.italic.underline{World}"),
            ),
            LColumn.child(
              child: codeText(
                context,
                _linearcode,
              ),
            )
          ],
        ),
      ],
    );
  }
}
