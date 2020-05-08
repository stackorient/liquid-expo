import 'package:flutter/material.dart';

import 'components/components.dart';
import 'env.dart';
import 'getting_started/getting_started_pages.dart';
import 'layout/overview.dart';

Widget getPage(String pageKey) {
  switch (pageKey) {
    case intro_page:
      return Introduction();
    case theming_page:
      return Center(
        child: Text("Themeing page"),
      );

    case layout_overview:
      return LayoutOverview();

    case component_alert:
      return AlertPage();
    default:
      return Center(
        child: Text("Not Found"),
      );
  }
}
