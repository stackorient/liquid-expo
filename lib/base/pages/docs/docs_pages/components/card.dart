import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class CardPage extends StatelessWidget {
  final _title = "LCard";
  final _subtitle = " A card is a flexible and extensible content container."
      "It includes options for header (LCardHeader), footer (LCardFooter) and a body (LCardBody).";

  final _code = """
LCard(
  elevation: 5.0,
  header: LCardHeader(title: "Card Header"),
  footer: LCardFooter(
    actions: <Widget>[Text('Footer')],
  ),
  color: Colors.white,
  image: LCardImage(
    image: NetworkImage(
      'https://source.unsplash.com/daily/',
    ),
    fit: BoxFit.cover,
  ),
  body: LCardBody(
    title: "Card Title",
    subTitle: "This is a subtitle for card.",
  ),
);
  """;

  final _headCode = """
LCard(
  header: LCardHeader(title: 'Header'),
  footer: LCardFooter(
    actions: <Widget>[Text('Footer')],
  ),
  body: LCardBody(
    title: 'Card Title',
    child: LFlatButton.text(
      text: 'Welcome',
      type: LElementType.success,
    ),
  ),
)  
  """;

  final _imageCode = """
LCard(
  image: LCardImage(
    image: NetworkImage(
      'https://source.unsplash.com/random/',
    ),
  ),
  body: LCardBody(
    title: 'Card Tiitle',
  ),
);
  """;

  final _colorCode = """
LCard(
  elevation: 10.0,
  color: Colors.amber,
  header: LCardHeader(title: 'Header'),
  footer: LCardFooter(
    actions: <Widget>[Text('Footer')],
  ),
  body: LCardBody(
    title: 'Change color of the card.',
    child: LFlatButton.text(
      text: 'Border',
      type: LElementType.success,
      onPressed: () {},
    ),
  ),
);
  """;

  final _borderCode = """
LCard(
  border: Border.all(color: Colors.pink),
  header: LCardHeader(title: 'Header'),
  footer: LCardFooter(
    actions: <Widget>[Text('Footer')],
  ),
  body: LCardBody(
    title: 'Add border to the card.',
    child: LFlatButton.text(
      text: 'Border',
      type: LElementType.success,
      onPressed: () {},
    ),
  ),
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
          gutter: 20.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LCard(
                elevation: 5.0,
                header: LCardHeader(title: "Card Header"),
                footer: LCardFooter(
                  actions: <Widget>[Text('Footer')],
                ),
                color: Colors.white,
                image: LCardImage(
                  image: NetworkImage(
                    'https://source.unsplash.com/daily/',
                  ),
                  fit: BoxFit.cover,
                ),
                body: LCardBody(
                  title: "Card Title",
                  subTitle: "This is a subtitle for card.",
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _code),
            )
          ],
        ),
        LText(
          "\n\l.h4{Content types}\n"
          "Cards support a wide variety of content, including \l.bold{images},"
          " \l.bold{text}, \l.bold{list groups}, \l.bold{links}, and more.\n"
          "Holds various fields to modify cards accordingly like header, footer, and border etc.\n",
        ),
        LText(
          "\l.h4{Body}\n"
          "The building block and content area to the card use \l.bold{LCardBody} to define Card body.\n",
        ),
        LColumn.child(
          crossAxisAlignment: CrossAxisAlignment.start,
          child: LCard(
            body: LCardBody(
              title: 'Title to the card body',
              subTitle:
                  'Created by \l.link(href=https://twitter.com/heypnd){@heypnd} and \l.link(href=https://twitter.com/heyrjs){@heyrjs}',
              child: LFlatButton.text(
                text: 'Welcome',
                type: LElementType.success,
              ),
            ),
          ),
        ),
        LText(
          "\n\l.h4{Header and Footer}\n"
          "Add header and Footer elements to the card.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LColumn.child(
                child: LCard(
                  header: LCardHeader(title: 'Header'),
                  footer: LCardFooter(
                    actions: <Widget>[Text('Footer')],
                  ),
                  body: LCardBody(
                    title: 'Card Title',
                    child: LFlatButton.text(
                      text: 'Welcome',
                      type: LElementType.success,
                    ),
                  ),
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _headCode),
            )
          ],
        ),
        LText(
          "\l.h4{Card Image}\n"
          "Add image to the card.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LColumn.child(
                child: LCard(
                  image: LCardImage(
                    image: NetworkImage(
                      'https://source.unsplash.com/daily/',
                    ),
                    fit: BoxFit.cover,
                  ),
                  body: LCardBody(
                    title: 'Card Title',
                  ),
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _imageCode),
            )
          ],
        ),
        LText(
          "\n\l.h4{Card Border}\n"
          "Add border to the card.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LColumn.child(
                child: LCard(
                  border: Border.all(color: Colors.pink),
                  header: LCardHeader(title: 'Header'),
                  footer: LCardFooter(
                    actions: <Widget>[Text('Footer')],
                  ),
                  body: LCardBody(
                    title: 'Add border to the card.',
                    child: LFlatButton.text(
                      text: 'Border',
                      type: LElementType.success,
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _borderCode),
            )
          ],
        ),
        LText(
          "\l.h4{Background}\n"
          "Change background color card.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LCard(
                elevation: 10.0,
                color: Colors.amber,
                header: LCardHeader(title: 'Header'),
                footer: LCardFooter(
                  actions: <Widget>[Text('Footer')],
                ),
                body: LCardBody(
                  title: 'Change color of the card.',
                  child: LFlatButton.text(
                    text: 'Border',
                    type: LElementType.success,
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _colorCode),
            )
          ],
        ),
      ],
    );
  }
}
