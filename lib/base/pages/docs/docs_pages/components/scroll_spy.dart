import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class ScrollSpy extends StatefulWidget {
  @override
  _ScrollSpyState createState() => _ScrollSpyState();
}

class _ScrollSpyState extends State<ScrollSpy> {
  LScrollSpyController _controller;
  List<String> ids = ["0", "1", "2", "3", "4", "5"];
  String activeId;

  @override
  void initState() {
    super.initState();
    _controller = LScrollSpyController(activeCheckOffset: 150.0)
      ..addListener(
        () {
          setState(() {
            activeId = _controller.activeID;
          });
        },
      );

    activeId = _controller.activeID ?? ids.first;
  }

  @override
  Widget build(BuildContext context) {
    return LCard(
      width: 450.0,
      body: LCardBody(
        child: LRow(
          useMediaQuery: false,
          axis: LRowAxis(xs: Axis.horizontal),
          columns: [
            LColumn(
              xs: 3,
              children: [
                for (final id in ids)
                  LFlatButton.text(
                    text: (int.parse(id) + 1).toString(),
                    type: activeId == id
                        ? LElementType.warning
                        : LElementType.primary,
                    onPressed: () => _controller.scrollTo(id),
                  )
              ],
            ),
            LColumn(
              children: [
                Container(
                  height: 270.0,
                  child: LScrollSpy(
                      controller: _controller,
                      uniqueIdList: ids,
                      itemBuilder: (context, index) => Container(
                            color: Colors.blue[(index + 2) * 100],
                            alignment: Alignment.center,
                            child: LText(" \l.h1{ ${index + 1} }"),
                          ),
                      itemExtentBuilder: (index, id) => 270.0,
                      itemCount: ids.length),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ScrollSpyPage extends StatelessWidget {
  final _title = "LScrollSpy";
  final _subtitle = "LScrollSpy can help in tracking certain elements and"
      " which element the user's screen is currently centered on.";

  final _linearcode = """

class ScrollSpy extends StatefulWidget {
  @override
  _ScrollSpyState createState() => _ScrollSpyState();
}

class _ScrollSpyState extends State<ScrollSpy> {
  LScrollSpyController _controller;
  List<String> ids = ["0", "1", "2", "3", "4", "5"];
  String activeId;

  @override
  void initState() {
    super.initState();
    _controller = LScrollSpyController(activeCheckOffset: 150.0)
      ..addListener(
        () {
          setState(() {
            activeId = _controller.activeID;
          });
        },
      );

    activeId = _controller.activeID ?? ids.first;
  }

  @override
  Widget build(BuildContext context) {
    return LCard(
      width: 450.0,
      body: LCardBody(
        child: LRow(
          useMediaQuery: false,
          axis: LRowAxis(xs: Axis.horizontal),
          columns: [
            LColumn(
              xs: 3,
              children: [
                for (final id in ids)
                  LFlatButton.text(
                    text: (int.parse(id) + 1).toString(),
                    type: activeId == id
                        ? LElementType.warning
                        : LElementType.primary,
                    onPressed: () => _controller.scrollTo(id),
                  )
              ],
            ),
            LColumn(
              children: [
                Container(
                  height: 270.0,
                  child: LScrollSpy(
                      controller: _controller,
                      uniqueIdList: ids,
                      itemBuilder: (context, index) => Container(
                            color: Colors.blue[(index + 2) * 100],
                            alignment: Alignment.center,
                            child: LText(" \l.h1{ ${"index" + "1"} }"),
                          ),
                      itemExtentBuilder: (index, id) => 270.0,
                      itemCount: ids.length),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Below is a static modal example (meaning its position and display have been overridden). Included are the modal header, modal body (required for padding), and modal footer (optional). We ask that you include modal headers with dismiss actions whenever possible, or provide another explicit dismiss action.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LBox(
          height: LBoxDimension.all(450.0),
          child: LRow(
            gutter: 10.0,
            crossAxisAlignment: CrossAxisAlignment.center,
            columns: [
              LColumn.child(
                lg: 6,
                xl: 6,
                child: ScrollSpy(),
              ),
              LColumn.child(
                child: codeText(context, _linearcode),
              )
            ],
          ),
        ),
      ],
    );
  }
}
