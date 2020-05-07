import 'package:flutter/material.dart';

import 'env.dart';
import 'getting_started/getting_started_pages.dart';

Widget getPage(String pageKey) {
  switch (pageKey) {
    case intro_page:
      return Introduction();
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
