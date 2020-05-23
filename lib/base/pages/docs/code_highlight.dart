import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';
import 'package:flutter_highlight/themes/atom-one-light.dart';
import 'package:liquid/liquid.dart';

Widget codeText(BuildContext context, String code, {String lang = 'dart'}) {
  final _mq = MediaQuery.of(context);
  final _themeModeOn = _mq.platformBrightness == Brightness.dark;
  return Stack(
    children: <Widget>[
      SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(minWidth: double.infinity),
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: HighlightView(
              code,
              language: lang,
              theme: _themeModeOn ? atomOneDarkTheme : atomOneLightTheme,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(
                fontFamily: 'Roboto Mono',
                fontSize: _mq.isSM || _mq.isXS ? 12.8 : 14.0,
              ),
            ),
          ),
        ),
      ),
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
