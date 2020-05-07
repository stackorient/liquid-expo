import 'package:flutter/material.dart';

import 'env.dart';

Widget getPage(String pageKey) {
  switch (pageKey) {
    case intro_page:
      return Center(
        child: Text("Intro page"),
      );
    case theming_page:
      return Center(
        child: Text("Themeing page"),
      );
    default:
      return Center(
        child: Text("Not Found"),
      );
  }
}
