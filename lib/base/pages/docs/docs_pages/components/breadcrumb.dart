import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class BreadCrumbPage extends StatelessWidget {
  final _title = "LBreadCrumb";
  final _subtitle =
      "Indicate the current page’s location within a navigational hierarchy that automatically adds separators.";

  final _code = """

LBreadCrumbs(
   items: [
     LBreadCrumbItem(
       'text1',
       activeColor: _theme.colors.primary,
       // active: true,
       onTap: () {},
     ),
     LBreadCrumbItem(
       'text2',
       activeColor: _theme.colors.primary,
       // active: true,
       onTap: () {},
     ),
     LBreadCrumbItem(
       'text3',
       activeColor: _theme.colors.primary,
       // active: true,
       onTap: () {},
     )
   ],
 ),
  
  """;

  final _headCode = """

 LBreadCrumbs(
   seperator: Icon(Icons.accessibility_new),
   items: [
     LBreadCrumbItem(
       'text1',
       activeColor: _theme.colors.primary,
       // active: true,
       onTap: () {},
     ),
     LBreadCrumbItem(
       'text2',
       activeColor: _theme.colors.primary,
       // active: true,
       onTap: () {},
     ),
     LBreadCrumbItem(
       'text3',
       activeColor: _theme.colors.primary,
       // active: true,
       onTap: () {},
     )
   ],
 ),
  
  """;

  final _closeCode = """

 LAlert(
   type: LElementType.success,
   heading: LAlertHeading(
     style: _theme.typographyTheme.h6.withColor(Colors.white),
     text: "Welcome to LAlert",
     onClose: (){},
   ),
   text:
       "Aww yeah, you successfully read this important alert message." 
       "Created by @heypnd and @heyrjs,",
 ),
  
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
        SizedBox(height: 35.0),
        Text(
          "Example",
          style: _theme.typographyTheme.h4,
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 5.0),
        //   child: Text(
        //     "Create an Alert box of different types and sizes.",
        //     style: _theme.typographyTheme.p,
        //   ),
        // ),
        LRow(
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LBreadCrumbs(
                items: [
                  LBreadCrumbItem(
                    'text1',
                    activeColor: _theme.colors.primary,
                    // active: true,
                    onTap: () {},
                  ),
                  LBreadCrumbItem(
                    'text2',
                    activeColor: _theme.colors.primary,
                    // active: true,
                    onTap: () {},
                  ),
                  LBreadCrumbItem(
                    'text3',
                    activeColor: _theme.colors.primary,
                    // active: true,
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
            "Changes the seperators between the LBreadCrumb items.",
            style: _theme.typographyTheme.p,
          ),
        ),
        LRow(
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LBreadCrumbs(
                seperator: Icon(Icons.accessibility_new),
                items: [
                  LBreadCrumbItem(
                    'text1',
                    activeColor: _theme.colors.primary,
                    // active: true,
                    onTap: () {},
                  ),
                  LBreadCrumbItem(
                    'text2',
                    activeColor: _theme.colors.primary,
                    // active: true,
                    onTap: () {},
                  ),
                  LBreadCrumbItem(
                    'text3',
                    activeColor: _theme.colors.primary,
                    // active: true,
                    onTap: () {},
                  )
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _headCode),
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
                    activeColor: _theme.colors.primary,
                    // active: true,
                    onTap: () {},
                  ),
                  LBreadCrumbItem(
                    'text2',
                    activeColor: _theme.colors.primary,
                    // active: true,
                    onTap: () {},
                  ),
                  LBreadCrumbItem(
                    'text3',
                    activeColor: _theme.colors.primary,
                    // active: true,
                    onTap: () {},
                  )
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _headCode),
            )
          ],
        ),
      ],
    );
  }
}
