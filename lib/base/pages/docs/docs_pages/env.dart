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
  }
};
