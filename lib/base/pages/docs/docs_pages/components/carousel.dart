import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class CarouselPage extends StatelessWidget {
  final _title = "LCarousel";
  final _subtitle =
      "A carousel is a list of cards that can be shuffled to display"
      " different content. Ideally, each card contains a different item that the user "
      "can browse from left and right. Carousel is an effective way of displaying"
      " images or content cards. They can add visual interest and reduce clutter.";

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
        "https://source.unsplash.com/random/?golden,bridge",
        fit: BoxFit.cover,
      ),
      caption: LCarouselCaption(
        titleText: "First Slide Title",
        subTitleText: "with some subtitle",
        actions: <Widget>[
          LFlatButton.text(
            text: "A Button",
            onPressed: () {},
            margin: const EdgeInsets.only(top: 10.0),
            type: LElementType.warning,
            size: LElementSize.small,
          ),
        ],
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
 );
  """;

  final _withControl = """
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
);
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
);
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
        "https://source.unsplash.com/daily/?mountain",
        fit: BoxFit.cover,
      ),
      caption: LCarouselCaption(
        titleText: "First Slide",
        subTitleText:
            "By \l.link.color(hex=#ADD8E6).underline(href=https://twitter.com/heypnd){@heypnd}"
            " and \l.link.color(hex=#ADD8E6).underline(href=https://twitter.com/heypnd){@heyrjs}.",
        actions: <Widget>[
          LFlatButton.text(
            type: LElementType.primary,
            text: "Button",
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
        subTitleText:
            "By \l.link.color(hex=#ADD8E6).underline(href=https://twitter.com/heypnd){@heypnd}"
            " and \l.link.color(hex=#ADD8E6).underline(href=https://twitter.com/heypnd){@heyrjs}.",
        actions: <Widget>[
          LFlatButton.text(
            type: LElementType.success,
            text: "Button",
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
            text: "Button",
            onPressed: () {},
            margin: const EdgeInsets.only(top: 10.0),
            size: LElementSize.small,
          ),
        ],
      ),
    ),
  ],
);
  """;

  final _borderCode = """
LCarousel(
  autoScroll: true,
  showIndicator: true,
  enableIndicatorTapControl: true,
  withControls: true,
  canScroll: false,
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
        SizedBox(height: 35.0),
        Text(
          "Example",
          style: _theme.typographyTheme.h4,
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              child: AspectRatio(
                aspectRatio: 16 / 9,
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
                        "https://source.unsplash.com/random/?golden,bridge",
                        fit: BoxFit.cover,
                      ),
                      caption: LCarouselCaption(
                        titleText: "First Slide Title",
                        subTitleText: "with some subtitle",
                        actions: <Widget>[
                          LFlatButton.text(
                            text: "A Button",
                            onPressed: () {},
                            margin: const EdgeInsets.only(top: 10.0),
                            type: LElementType.warning,
                            size: LElementSize.small,
                          ),
                        ],
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
              child: codeText(context, _code),
            ),
          ],
        ),
        LText(
          "\l.h4{With Controls}\n"
          "Add controls to the carousel.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 6,
              child: AspectRatio(
                aspectRatio: 16 / 9,
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
              child: codeText(context, _withControl),
            )
          ],
        ),
        LText(
          "\l.h4{With Slide Indicator}\n"
          "Add slide indicator to the carousel.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 6,
              child: AspectRatio(
                aspectRatio: 16 / 9,
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
              child: codeText(context, _imageCode),
            )
          ],
        ),
        LText(
          "\l.h4{With Caption}\n"
          "Add an overlay caption to the carousel items.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 6,
              child: AspectRatio(
                aspectRatio: 16 / 9,
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
                        subTitleText:
                            "By \l.link.color(hex=#ADD8E6).underline(href=https://twitter.com/heypnd){@heypnd}"
                            " and \l.link.color(hex=#ADD8E6).underline(href=https://twitter.com/heypnd){@heyrjs}.",
                        actions: <Widget>[
                          LFlatButton.text(
                            type: LElementType.primary,
                            text: "Button",
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
                        subTitleText:
                            "By \l.link.color(hex=#ADD8E6).underline(href=https://twitter.com/heypnd){@heypnd}"
                            " and \l.link.color(hex=#ADD8E6).underline(href=https://twitter.com/heypnd){@heyrjs}.",
                        actions: <Widget>[
                          LFlatButton.text(
                            type: LElementType.success,
                            text: "Button",
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
                            text: "Button",
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
              child: codeText(context, _colorCode),
            )
          ],
        ),
        LText(
          "\l.h4{Disable Scrolling}\n"
          "Disable scrolling of the carousel.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 6,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: LCarousel(
                  autoScroll: true,
                  showIndicator: true,
                  enableIndicatorTapControl: true,
                  withControls: true,
                  canScroll: false,
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
              child: codeText(context, _borderCode),
            )
          ],
        ),
      ],
    );
  }
}
