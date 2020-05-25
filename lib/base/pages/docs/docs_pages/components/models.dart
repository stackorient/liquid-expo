import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class ModelPage extends StatelessWidget {
  final _title = "LModel";
  final _subtitle = " A utility function for displaying [LModel] on"
      "the screen.";

  final _linearcode = """

void _showModel(BuildContext context) {
  showLModel(
    context,
    positionTween: Tween(
      begin: Offset(0.0, -10.0),
      end: Offset.zero,
    ),
    barrierDismissable: true,
    builder: (context) {
      return LModel(
        positon: MainAxisAlignment.start,
        header: LModelHeader(
          title: "LModel",
          onClose: () async {
            print("Model Closed");
            print("Terms Accepted: false");
          },
        ),
        body: LModelBody(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: LText(
              "Created by \l.color(hex=#0000EE){@heypnd} and \l.color(hex=#0000EE){@heyrjs}",
            ),
          ),
        ),
        footer: LModelFooter(
          actions: <Widget>[
            LFlatButton.text(
              text: "Accept",
              onPressed: () async {
                final _ = await LiquidStateManager.of(context)
                    .popModel<bool>(true);
                print("Terms Accepted");
              },
              type: LElementType.primary,
            ),
          ],
        ),
      );
    },
  );
}
....

LFlatButton.text(
  text: "Accept Terms",
  onPressed: () => _showModel(context),
),

 
  """;

  final _modalExmpl = """

  LModel(
     positon: MainAxisAlignment.start,
     header: LModelHeader(
       title: "LModel",
       onClose: () async {
         print("Model Closed");
         print("Terms Accepted: false");
       },
     ),
     body: LModelBody(
       child: Padding(
         padding: const EdgeInsets.only(bottom: 16.0),
         child: LText(
           "Created by \l.color(hex=#0000EE){@heypnd} and \l.color(hex=#0000EE){@heyrjs}",
         ),
       ),
     ),
     footer: LModelFooter(
       actions: <Widget>[
         LFlatButton.text(
           text: "Accept",
           onPressed: () async {
             final _ = await LiquidStateManager.of(context)
                 .popModel<bool>(true);
             print("Terms Accepted: ");
           },
           type: LElementType.primary,
         ),
       ],
     ),
   ),

  """;

  final _positionTweenCode = """

// From Top
positionTween: Tween(
  begin: Offset(0.0, -10.0),
  end: Offset.zero,
),

alignment: Alignment.topCenter

 //From Bottom
positionTween: Tween(
   begin: Offset(0.0, 10.0),
   end: Offset.zero,
 ),

 alignment: Alignment.bottomCenter

 //From Left
 positionTween: Tween(
   begin: Offset(-10.0, 0.0),
   end: Offset.zero,
 ),

 alignment: Alignment.centerLeft

 //From Right
 positionTween: Tween(
   begin: Offset(10.0, 0.0),
   end: Offset.zero,
 ),

 alignment: Alignment.centerRight

  """;

  void _showModel(
      BuildContext context, Offset offset, AlignmentGeometry alignment) {
    showLModel(
      context,
      positionTween: Tween(
        begin: offset,
        end: Offset.zero,
      ),
      barrierDismissable: true,
      builder: (context) {
        return LModel(
          positon: alignment,
          header: LModelHeader(
            title: "LModel",
            onClose: () async {
              print("Model Closed");
              print("Terms Accepted: false");
            },
          ),
          body: LModelBody(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: LText(
                "Created by \l.color(hex=#0000EE){@heypnd} and \l.color(hex=#0000EE){@heyrjs}",
              ),
            ),
          ),
          footer: LModelFooter(
            actions: <Widget>[
              LFlatButton.text(
                text: "Accept",
                onPressed: () async {
                  final _ =
                      await LiquidStateManager.of(context).popModel<bool>(true);
                  print("Terms Accepted: $_");
                },
                type: LElementType.primary,
              ),
            ],
          ),
        );
      },
    );
  }

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
          "Modal Components",
          style: _theme.typographyTheme.h4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Below is a static modal example (meaning its position and display have been overridden). Included are the modal header, modal body (required for padding), and modal footer (optional). We ask that you include modal headers with dismiss actions whenever possible, or provide another explicit dismiss action.",
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
              xl: 4,
              child: LModel(
                header: LModelHeader(
                  title: "LModel",
                  onClose: () async {
                    print("Model Closed");
                    print("Terms Accepted: false");
                  },
                ),
                body: LModelBody(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: LText(
                      "Created by \l.color(hex=#0000EE){@heypnd} and \l.color(hex=#0000EE){@heyrjs}",
                    ),
                  ),
                ),
                footer: LModelFooter(
                  actions: <Widget>[
                    LFlatButton.text(
                      text: "Accept",
                      onPressed: () {},
                      type: LElementType.primary,
                    ),
                  ],
                ),
              ),
            ),
            LColumn.child(
              child: LBox(
                  height: LBoxDimension.all(400.0),
                  child: codeText(context, _modalExmpl)),
            )
          ],
        ),
        Text(
          "Live Demo",
          style: _theme.typographyTheme.h4,
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LFlatButton.text(
                text: "Live Demo",
                onPressed: () => _showModel(
                    context, Offset(0.0, -10.0), Alignment.topCenter),
              ),
            ),
            LColumn.child(
              child: LBox(
                  height: LBoxDimension.all(400.0),
                  child: codeText(context, _linearcode)),
            )
          ],
        ),
        Text(
          "Flow in animations",
          style: _theme.typographyTheme.h4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "To change offset for model flow animations.",
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
              xl: 4,
              child: Wrap(
                children: [
                  LFlatButton.text(
                    text: "From Top",
                    onPressed: () => _showModel(
                        context, Offset(0.0, -10.0), Alignment.topCenter),
                  ),
                  LFlatButton.text(
                    text: "From Bottom",
                    onPressed: () => _showModel(
                        context, Offset(0.0, 10.0), Alignment.bottomCenter),
                  ),
                  LFlatButton.text(
                    text: "From Left",
                    onPressed: () => _showModel(
                        context, Offset(-10.0, 0.0), Alignment.centerLeft),
                  ),
                  LFlatButton.text(
                    text: "From Right",
                    onPressed: () => _showModel(
                        context, Offset(10.0, 0.0), Alignment.centerRight),
                  ),
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _positionTweenCode),
            )
          ],
        ),
      ],
    );
  }
}
