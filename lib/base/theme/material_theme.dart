import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const MaterialColor _black = MaterialColor(
  __blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(__blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int __blackPrimaryValue = 0xFF000000;

final ThemeData theme = ThemeData(
  primarySwatch: _black,
  appBarTheme: AppBarTheme(
    color: Color(0xff0062E7),
  ),
  scaffoldBackgroundColor: Colors.white,
  textSelectionColor: Colors.black38,
  pageTransitionsTheme: PageTransitionsTheme(builders: {
    TargetPlatform.android: kIsWeb
        ? CupertinoPageTransitionsBuilder()
        : ZoomPageTransitionsBuilder(),
    TargetPlatform.windows: CupertinoPageTransitionsBuilder(),
    TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
);
