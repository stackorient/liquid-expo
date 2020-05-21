import 'package:flutter/material.dart';
import 'package:liquid_website/base/pages/docs/docs_pages/components/badge.dart';
import 'package:liquid_website/base/pages/docs/docs_pages/components/breadcrumb.dart';
import 'package:liquid_website/base/pages/docs/docs_pages/components/button_group.dart';
import 'package:liquid_website/base/pages/docs/docs_pages/components/buttons.dart';
import 'package:liquid_website/base/pages/docs/docs_pages/components/carousel.dart';
import 'package:liquid_website/base/pages/docs/docs_pages/components/header_tag.dart';

import 'components/card.dart';
import 'components/components.dart';
import 'components/list_group.dart';
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

    case component_badge:
      return BadgePage();

    case component_breadCrumb:
      return BreadCrumbPage();

    case component_button:
      return ButtonPage();

    case component_button_group:
      return ButtonGroup();

    case component_card:
      return CardPage();

    case component_carousel:
      return CarouselPage();

    case component_header_tag:
      return HeaderTagPage();

    case component_list_group:
      return ListGroupPage();
    default:
      return Center(
        child: Text("Not Found"),
      );
  }
}
