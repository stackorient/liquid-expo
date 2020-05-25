import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';
import 'package:flutter_highlight/themes/atom-one-light.dart';
import 'package:liquid/liquid.dart';

Widget codeText(BuildContext context, String code,
    {String lang = 'dart', double fontSize, bool scrollable = true}) {
  final _mq = MediaQuery.of(context);

  final _codeContent = HighlightView(
    code,
    language: lang,
    theme: atomOneDarkTheme,
    padding: EdgeInsets.all(12),
    textStyle: TextStyle(
      fontFamily: 'Roboto Mono',
      fontSize: fontSize ?? (_mq.isXS || _mq.isSM ? 12.0 : 14.0),
    ),
  );

  final _scrollable = Container(
    constraints: BoxConstraints(minWidth: double.infinity),
    padding: const EdgeInsets.symmetric(vertical: 15.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: scrollable
          ? SingleChildScrollView(child: _codeContent)
          : _codeContent,
    ),
  );

  return Stack(
    children: <Widget>[
      _scrollable ?? _codeContent,
      Positioned(
        right: 0.0,
        top: 13.0,
        child: Tooltip(
          message: "Copy to Clipboard",
          child: LRaisedButton.icon(
            icon: Icon(Icons.content_copy),
            label: Text("Copy"),
            size: LElementSize.small,
            pushAction: LRaisedButtonPushAction.pushDown,
            onPressed: () async {
              await Clipboard.setData(ClipboardData(text: code));
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text("Copied to clipboard"),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
          ),
        ),
      ),
    ],
  );
}
