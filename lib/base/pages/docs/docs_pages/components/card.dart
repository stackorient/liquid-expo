import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class CardPage extends StatelessWidget {
  final _title = "LCard";
  final _subtitle = " A card is a flexible and extensible content container."
      "It includes options for header [LCardHeader] and footer [LCardFooter], [LCardBody],"
      "contextual background colors, and powerful display options.";

  final _code = """

LCard(
   elevation: 5.0,
   header: LCardHeader(title: "title"),
   footer: LCardFooter(
     actions: <Widget>[Text('Footer')],
   ),
   color: Colors.white,
   image: LCardImage(
     image: NetworkImage(
       'https://source.unsplash.com/random/',
     ),
   ),
   body: LCardBody(
     subTitle:
         "hi how are you? @heyrjs and @heypnd ",
     title: "Hello",
     child: LOutlineButton.text(
       text: "welcome",
       type:  LElementType.success,
     ),
   ),
 ),
  
  """;

  final _headCode = """

 LCard(
   header: LCardHeader(title: 'Header'),
   footer: LCardFooter(
     actions: <Widget>[Text('Footer')],
   ),
   body: LCardBody(
     title: 'Title to the card body',
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
     title: 'Title to the card body',
   ),
 )

  """;

  final _colorCode = """

 LCard(
   color: Colors.amber,
   border: Border.all(color: Colors.redAccent),
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

  """;

  final _borderCode = """

LCard(
   border: Border.all(color: Colors.redAccent),
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
 )

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
        LRow(
          gutter: 20.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LCard(
                elevation: 5.0,
                header: LCardHeader(title: "title"),
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
                  subTitle: "hi how are you? @heyrjs and @heypnd ",
                  title: "Hello",
                  child: LOutlineButton.text(
                    text: "welcome",
                    type: LElementType.success,
                    onPressed: () {},
                  ),
                ),
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
            "Content types",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Cards support a wide variety of content, including images, text, list groups, links, and more. Holds various fields to modify cards accordingly like header, footer, and border etc.",
            style: _theme.typographyTheme.p,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Text(
            "Body",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text(
            "The building block and content area to the card.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LColumn.child(
            child: LCard(
          body: LCardBody(
            title: 'Title to the card body',
            child: LFlatButton.text(
              text: 'Welcome',
              type: LElementType.success,
            ),
          ),
        )),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "Header and Footer",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            "Add header and Footer elements to the card.",
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
              child: LColumn.child(
                child: LCard(
                  header: LCardHeader(title: 'Header'),
                  footer: LCardFooter(
                    actions: <Widget>[Text('Footer')],
                  ),
                  body: LCardBody(
                    title: 'Title to the card body',
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
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "Card Image",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            "Add image to the card.",
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
              child: LColumn.child(
                child: LCard(
                  image: LCardImage(
                    image: NetworkImage(
                      'https://source.unsplash.com/daily/',
                    ),
                    fit: BoxFit.cover,
                  ),
                  body: LCardBody(
                    title: 'Title to the card body',
                  ),
                ),
              ),
            ),
            LColumn.child(
              child: codeText(context, _imageCode),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "Card Border",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            "Add border to the card.",
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
              child: LColumn.child(
                child: LCard(
                  border: Border.all(color: Colors.redAccent),
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
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "Colors",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            "Allows to customize.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LRow(
          gutter: 20.0,
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
