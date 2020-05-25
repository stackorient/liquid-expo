import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class ScrollSpy extends StatefulWidget {
  final bool variableHeight;

  const ScrollSpy({Key key, this.variableHeight = false}) : super(key: key);

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
    _controller = LScrollSpyController(
        activeCheckOffset: widget.variableHeight ? 30.0 : 150.0)
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
                      itemExtent: widget.variableHeight ? null : 270.0,
                      itemExtentBuilder: widget.variableHeight
                          ? (index, id) => 120.0 * (index + 1)
                          : null,
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
                      itemExtent: 270.0,
                      itemExtentBuilder: null, // need to be null when using itemExtent
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

  final _linearcode2 = """

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
                      itemExtentBuilder: (index, id) => 120.0 * (index + 1),
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
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: LText(
            " \l.h4.bold{With equal child height}\n"
            "Provide \l.bold{ItemExtent} and \l.bold{ItemExtentBuilder} equal to null. ",
          ),
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn(lg: 6, xl: 6, children: [
              ScrollSpy(
                variableHeight: false,
              ),
            ]),
            LColumn.child(
              child: LBox(
                  height: LBoxDimension.all(400.0),
                  child: codeText(context, _linearcode)),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: LText(
            " \l.h4.bold{With different child height}\n"
            "Use \l.bold{ItemExtentBuilder} to generate height based on item index or item id. ",
          ),
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn(lg: 6, xl: 6, children: [
              ScrollSpy(
                variableHeight: true,
              ),
            ]),
            LColumn.child(
              child: LBox(
                  height: LBoxDimension.all(400.0),
                  child: codeText(context, _linearcode2)),
            )
          ],
        ),
      ],
    );
  }
}
