import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class CarouselPage extends StatelessWidget {
  final _title = "LCarousel";
  final _subtitle = "A slideshow component for cycling through elements—images"
      " or slides of text—like a carousel."
      "Carousels don’t automatically normalize slide dimensions."
      "As such, you may need to use additional utilities or custom styles to appropriately size content."
      "While carousels support previous/next controls and indicators, they’re not explicitly required."
      "Add and customize as you see fit.";

  final _code = """
 LCarousel(
   withCaption: true,
   autoScroll: true,
   withControls: true,
   canScroll: true,
   showIndicator: true,
   enableIndicatorTapControl: true,
   items: [
     LCarouselItem(
       child: Image.network(
         "https://source.unsplash.com/random/?mountain",
         fit: BoxFit.cover,
       ),
       caption: LCarouselCaption(
         titleText: "First Slide",
         subTitleText: "By @heypnd and @heyrjs",
         actions: <Widget>[
           LFlatButton.text(
             text: "Accept",
             onPressed: () {},
             margin: const EdgeInsets.only(top: 10.0),
             size: LElementSize.small,
           ),
         ],
       ),
     ),
     LCarouselItem(
       child: Image.network(
         "https://source.unsplash.com/random/?mountain,sunset",
         fit: BoxFit.cover,
       ),
     ),
     LCarouselItem(
       child: Image.network(
         "https://source.unsplash.com/random/?sunrise",
         fit: BoxFit.cover,
       ),
     ),
   ],
 ),
  
  """;

  final _headCode = """

  LCarousel(
   withControls: true,
   canScroll: true,
   items: [
     LCarouselItem(
       child: Image.network(
         "https://source.unsplash.com/random/?mountain,sunset",
         fit: BoxFit.cover,
       ),
     ),
     LCarouselItem(
       child: Image.network(
         "https://source.unsplash.com/random/?mountain,sunset",
         fit: BoxFit.cover,
       ),
     ),
     LCarouselItem(
       child: Image.network(
         "https://source.unsplash.com/random/?sunrise",
         fit: BoxFit.cover,
       ),
     ),
   ],
 ),
  
  """;

  final _imageCode = """

LCarousel(
   showIndicator: true,
   enableIndicatorTapControl: true,
   withControls: true,
   canScroll: true,
   items: [
     LCarouselItem(
       child: Image.network(
         "https://source.unsplash.com/random/?mountain,sunset",
         fit: BoxFit.cover,
       ),
     ),
     LCarouselItem(
       child: Image.network(
         "https://source.unsplash.com/random/?mountain,sunset",
         fit: BoxFit.cover,
       ),
     ),
     LCarouselItem(
       child: Image.network(
         "https://source.unsplash.com/random/?sunrise",
         fit: BoxFit.cover,
       ),
     ),
   ],
 ),

  """;

  final _colorCode = """

 LCarousel(
     withCaption: true,
     showIndicator: true,
     enableIndicatorTapControl: true,
     withControls: true,
     canScroll: true,
     items: [
       LCarouselItem(
         child: Image.network(
           "https://source.unsplash.com/random/?mountain",
           fit: BoxFit.cover,
         ),
         caption: LCarouselCaption(
           titleText: "First Slide",
           subTitleText: "By @heypnd and @heyrjs",
           actions: <Widget>[
             LFlatButton.text(
               type: LElementType.primary,
               text: "Accept",
               onPressed: () {},
               margin: const EdgeInsets.only(top: 10.0),
               size: LElementSize.small,
             ),
           ],
         ),
       ),
       LCarouselItem(
         child: Image.network(
           "https://source.unsplash.com/random/?mountain",
           fit: BoxFit.cover,
         ),
         caption: LCarouselCaption(
           titleText: "Second Slide",
           subTitleText: "By @heypnd and @heyrjs",
           actions: <Widget>[
             LFlatButton.text(
               type: LElementType.success,
               text: "Accept",
               onPressed: () {},
               margin: const EdgeInsets.only(top: 10.0),
               size: LElementSize.small,
             ),
           ],
         ),
       ),
       LCarouselItem(
         child: Image.network(
           "https://source.unsplash.com/random/?mountain",
           fit: BoxFit.cover,
         ),
         caption: LCarouselCaption(
           titleText: "Third Slide",
           subTitleText: "By @heypnd and @heyrjs",
           actions: <Widget>[
             LFlatButton.text(
               type: LElementType.danger,
               text: "Accept",
               onPressed: () {},
               margin: const EdgeInsets.only(top: 10.0),
               size: LElementSize.small,
             ),
           ],
         ),
       ),
     ],
   ),

  """;

  final _borderCode = """

LCarousel(
  autoScroll:true,
   showIndicator: true,
   enableIndicatorTapControl: true,
   withControls: true,
   canScroll: true,
   items: [
     LCarouselItem(
       child: Image.network(
         "https://source.unsplash.com/random/?mountain,sunset",
         fit: BoxFit.cover,
       ),
     ),
     LCarouselItem(
       child: Image.network(
         "https://source.unsplash.com/random/?mountain,sunset",
         fit: BoxFit.cover,
       ),
     ),
     LCarouselItem(
       child: Image.network(
         "https://source.unsplash.com/random/?sunrise",
         fit: BoxFit.cover,
       ),
     ),
   ],
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
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          mainAxisAlignment: MainAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 6,
              child: LBox(
                height: LBoxDimension.all(250.0),
                child: LCarousel(
                  withCaption: true,
                  autoScroll: true,
                  withControls: true,
                  canScroll: true,
                  showIndicator: true,
                  enableIndicatorTapControl: true,
                  items: [
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/random/?mountain",
                        fit: BoxFit.cover,
                      ),
                      caption: LCarouselCaption(
                        titleText: "First Slide",
                        subTitleText: "By @heypnd and @heyrjs",
                        actions: <Widget>[
                          LFlatButton.text(
                            text: "Accept",
                            onPressed: () {},
                            margin: const EdgeInsets.only(top: 10.0),
                            size: LElementSize.small,
                          ),
                        ],
                      ),
                    ),
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/random/?mountain,sunset",
                        fit: BoxFit.cover,
                      ),
                    ),
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/random/?sunrise",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            LColumn.child(
              child: LBox(
                  height: LBoxDimension.all(250.0),
                  child: codeText(context, _code)),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "With Controls",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            "To add controls to the carousel.",
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
              xl: 6,
              child: LBox(
                height: LBoxDimension.all(250.0),
                child: LCarousel(
                  withControls: true,
                  canScroll: true,
                  items: [
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/daily/?mountain",
                        fit: BoxFit.cover,
                      ),
                    ),
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/daily/?sunset",
                        fit: BoxFit.cover,
                      ),
                    ),
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/daily/?sunrise",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            LColumn.child(
              child: LBox(
                  height: LBoxDimension.all(250.0),
                  child: codeText(context, _headCode)),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "With Slide Indicator",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            "To add slider to the carousel and add click on to the slider.",
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
              xl: 6,
              child: LBox(
                height: LBoxDimension.all(250.0),
                child: LCarousel(
                  showIndicator: true,
                  enableIndicatorTapControl: true,
                  withControls: true,
                  canScroll: true,
                  items: [
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/random/?mountain",
                        fit: BoxFit.cover,
                      ),
                    ),
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/random/?sunset",
                        fit: BoxFit.cover,
                      ),
                    ),
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/random/?sunrise",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            LColumn.child(
              child: LBox(
                  height: LBoxDimension.all(250.0),
                  child: codeText(context, _imageCode)),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "With Caption",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            "To add overlay captions to the carousel items.",
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
              xl: 6,
              child: LBox(
                height: LBoxDimension.all(250.0),
                child: LCarousel(
                  withCaption: true,
                  showIndicator: true,
                  enableIndicatorTapControl: true,
                  withControls: true,
                  canScroll: true,
                  items: [
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/daily/?mountain",
                        fit: BoxFit.cover,
                      ),
                      caption: LCarouselCaption(
                        titleText: "First Slide",
                        subTitleText: "By @heypnd and @heyrjs",
                        actions: <Widget>[
                          LFlatButton.text(
                            type: LElementType.primary,
                            text: "Accept",
                            onPressed: () {},
                            margin: const EdgeInsets.only(top: 10.0),
                            size: LElementSize.small,
                          ),
                        ],
                      ),
                    ),
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/daily/?mountain",
                        fit: BoxFit.cover,
                      ),
                      caption: LCarouselCaption(
                        titleText: "Second Slide",
                        subTitleText: "By @heypnd and @heyrjs",
                        actions: <Widget>[
                          LFlatButton.text(
                            type: LElementType.success,
                            text: "Accept",
                            onPressed: () {},
                            margin: const EdgeInsets.only(top: 10.0),
                            size: LElementSize.small,
                          ),
                        ],
                      ),
                    ),
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/daily/?mountain",
                        fit: BoxFit.cover,
                      ),
                      caption: LCarouselCaption(
                        titleText: "Third Slide",
                        subTitleText:
                            "By \l.link.color(hex=#ADD8E6).underline(href=https://twitter.com/heypnd){@heypnd}"
                            " and \l.link.color(hex=#ADD8E6).underline(href=https://twitter.com/heypnd){@heyrjs}.",
                        actions: <Widget>[
                          LFlatButton.text(
                            type: LElementType.danger,
                            text: "Accept",
                            onPressed: () {},
                            margin: const EdgeInsets.only(top: 10.0),
                            size: LElementSize.small,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            LColumn.child(
              child: LBox(
                  height: LBoxDimension.all(250.0),
                  child: codeText(context, _colorCode)),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "Enable Scrolling",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            "To enable scrolling of the carousel items.",
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
              xl: 6,
              child: LBox(
                height: LBoxDimension.all(250.0),
                child: LCarousel(
                  autoScroll: true,
                  showIndicator: true,
                  enableIndicatorTapControl: true,
                  withControls: true,
                  canScroll: true,
                  items: [
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/random/?mountain",
                        fit: BoxFit.cover,
                      ),
                    ),
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/random/?sunset",
                        fit: BoxFit.cover,
                      ),
                    ),
                    LCarouselItem(
                      child: Image.network(
                        "https://source.unsplash.com/random/?sunrise",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            LColumn.child(
              child: LBox(
                  height: LBoxDimension.all(250.0),
                  child: codeText(context, _borderCode)),
            )
          ],
        ),
      ],
    );
  }
}
