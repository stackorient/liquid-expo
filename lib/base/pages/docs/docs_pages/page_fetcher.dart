import 'package:flutter/material.dart';

import 'components/components.dart';
import 'env.dart';
import 'getting_started/getting_started_pages.dart';
import 'layout/layout_pages.dart';
import 'more/about_us.dart';
import 'more/contact_us.dart';

Widget getPage(String pageKey) {
  switch (pageKey) {
    case intro_page:
      return Introduction();

    case getting_started_page:
      return GettingStarted();

    case typography:
      return TypographyPage();

    case ltext_documentation:
      return LTextPage();

    case theming_page:
      return ThemingSection();

    case layout_overview:
      return LayoutOverview();

    case layout_grid:
      return GridSystem();

    case layout_utils:
      return LayoutUtility();

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

    case component_progress_indicator:
      return ProgressPage();

    case component_spinner:
      return SpinnerPage();

    case component_model:
      return ModelPage();

    case component_scroll_spy:
      return ScrollSpyPage();

    case component_collapse:
      return CollapsePage();

    case component_Expansion_panel:
      return ExpansionPage();

    case component_form:
      return FormPage();

    case component_dropdown:
      return DropdownPage();

    case aboutUs_page:
      return AboutUsPage();

    case contactUs_page:
      return ContactUsPage();

    default:
      return Center(
        child: Text("Not Found"),
      );
  }
}
