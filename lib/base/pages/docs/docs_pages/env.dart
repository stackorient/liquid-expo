const intro_page = 'p0s0';
const theming_page = 'p0s1';
const layout_overview = 'p1s0';
const layout_grid = 'p1s1';
const layout_utils = 'p1s2';
const component_alert = 'p2s0';

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
    "Alert": component_alert,
    "Alert2": component_alert,
  }
};
