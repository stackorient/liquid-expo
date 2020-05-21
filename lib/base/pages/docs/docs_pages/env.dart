const intro_page = 'p0s0';
const theming_page = 'p0s1';
const layout_overview = 'p1s0';
const layout_grid = 'p1s1';
const layout_utils = 'p1s2';
const component_alert = 'p2s0';
const component_badge = 'p2s1';
const component_breadCrumb = 'p2s2';
const component_button = 'p2s3';
const component_button_group = 'p2s4';
const component_card = 'p2s5';
const component_carousel = 'p2s6';
const component_header_tag = 'p2s7';
const component_list_group = 'p2s8';
const component_progress_indicator = 'p2s9';

final Map<String, Map<String, String>> docsMenus = {
  "Getting Started": {
    "Introduction": intro_page,
    "Theming": theming_page,
  },
  "Layout": {
    "Overview": layout_overview,
    "Grid": layout_grid,
    "Utilities for layout": layout_utils,
  },
  "Components": {
    "LAlert": component_alert,
    "LBadge": component_badge,
    "LBreadCrumb": component_breadCrumb,
    "LButton types": component_button,
    "LButtonGroup": component_button_group,
    "LCard": component_card,
    "LCarousel": component_carousel,
    "LHeaderTag": component_header_tag,
    "LListGroup": component_list_group,
    "Progress": component_progress_indicator,
  }
};
