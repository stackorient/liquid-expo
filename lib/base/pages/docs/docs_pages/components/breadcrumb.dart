import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';
import '../../code_highlight.dart';

class BreadCrumbPage extends StatelessWidget {
  final _title = "LBreadCrumbs";
  final _subtitle =
      "Indicate the current page’s location within a navigational hierarchy that automatically adds separators.";

  final _code = """
LBreadCrumbs(
  items: [
    LBreadCrumbItem(
      'page 1',
      onTap: () {},
    ),
    LBreadCrumbItem(
      'page 2',
      onTap: () {},
    ),
    LBreadCrumbItem(
      'page 3',
      activeColor: _theme.colors.success,
      active: true,
    )
  ],
);
  """;

  final _sepCode = """
LBreadCrumbs(
  seperator: Icon(
    Icons.arrow_forward,
    size: 12,
  ),
  items: [
    LBreadCrumbItem(
      'one',
      onTap: () {},
    ),
    LBreadCrumbItem(
      'two',
      onTap: () {},
    ),
    LBreadCrumbItem(
      'three',
      active: true,
    )
  ],
); 
  """;
  final _spacingCode = """
LBreadCrumbs(
  spacing: 20.0,
  items: [
    LBreadCrumbItem(
      'text1',
      onTap: () {},
    ),
    LBreadCrumbItem(
      'text2',
      // active: true,
      onTap: () {},
    ),
    LBreadCrumbItem(
      'text3',
      active: true,
      onTap: () {},
    )
  ],
); 
  """;

  @override
  Widget build(BuildContext context) {
    final _theme = LiquidTheme.of(context);
    final mq = MediaQuery.of(context);
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: mq.isSM || mq.isXS ? 15.0 : 35.0,
        vertical: 16.0,
      ),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            _title,
            style: mq.isSM || mq.isXS
                ? _theme.typographyTheme.h2
                : _theme.typographyTheme.display4,
          ),
        ),
        Text(
          _subtitle,
          style: mq.isSM || mq.isXS
              ? _theme.typographyTheme.p
              : _theme.typographyTheme.lead,
        ),
        SizedBox(height: 20.0),
        LText("\l.h4{Example}"),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LBreadCrumbs(
                items: [
                  LBreadCrumbItem(
                    'page 1',
                    onTap: () {},
                  ),
                  LBreadCrumbItem(
                    'page 2',
                    onTap: () {},
                  ),
                  LBreadCrumbItem(
                    'page 3',
                    activeColor: _theme.colors.success,
                    active: true,
                    onTap: () {},
                  )
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _code),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "Changing the seperator",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Changes the seperators between the items.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LRow(
          gutter: 10.0,
          axis: LRowAxis.belowLG(Axis.vertical),
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LBreadCrumbs(
                seperator: Icon(
                  Icons.arrow_forward,
                  size: 12,
                ),
                items: [
                  LBreadCrumbItem(
                    'one',
                    onTap: () {},
                  ),
                  LBreadCrumbItem(
                    'two',
                    onTap: () {},
                  ),
                  LBreadCrumbItem(
                    'three',
                    active: true,
                  )
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _sepCode),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "With spacing",
            style: _theme.typographyTheme.h4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            "Allows you to change the space between breadCrumb items accordingly.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LBreadCrumbs(
                spacing: 20.0,
                items: [
                  LBreadCrumbItem(
                    'text1',
                    onTap: () {},
                  ),
                  LBreadCrumbItem(
                    'text2',
                    // active: true,
                    onTap: () {},
                  ),
                  LBreadCrumbItem(
                    'text3',
                    active: true,
                    onTap: () {},
                  )
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _spacingCode),
            )
          ],
        ),
      ],
    );
  }
}
