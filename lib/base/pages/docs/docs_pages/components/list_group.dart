import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class ListGroupPage extends StatelessWidget {
  final _title = "LListGroup";
  final _subtitle =
      "List groups are a flexible and powerful component for displaying a series of content."
      " Modify and extend them to support just about any content within.";

  final _listgrpexm = """

 LListGroup(
  direction: Axis.vertical,
  selectedTextColor: Colors.white,
  selectedBackgroundColor: Colors.blue[700],
  disabledBackgroundColor: Colors.grey[300],
  dense: true,
  children: [
    LListItem(
      title: Text("Item 1"),
      selected: true,
    ),
    LListItem(
      title: Text("Item 1"),
      trailing: LBadge.text("45"),
      onTap: () {},
    ),
    LListItem(
      title: Text("Item 2"),
    ),
  ],
),
  """;

  final _listitemexmp = """

  LListItem(
    title: Text("Item 1"),
    trailing: LBadge.text("45"),
    onTap: () {},
  ),
  LListItem(
    title: Text("Item 2"),
    leading: Icon(Icons.access_alarm),
    subtitle: Text("Sub-title"),
    onTap: () {},
  ),

  """;

  final _listitemexmp2 = """

 LListItem(
    selected: true,
    selectedBackgroundColor: Colors.amber,
    title: Text("Item 1"),
    trailing: LBadge.text("45"),
    onTap: () {},
  ),
  LListItem(
    selected: false,
    disabledBackgroundColor: Colors.grey[100],
    enabled: false,
    dense: true,
    title: Text("Item 2"),
    leading: Icon(Icons.access_alarm),
    subtitle: Text("Sub-title"),
    onTap: () {},
  ),

  """;

  final _listgrpexmp2 = """

 LListGroup(
   direction: Axis.horizontal,
   selectedTextColor: Colors.white,
   selectedBackgroundColor: Colors.blue[700],
   disabledBackgroundColor: Colors.grey[300],
   dense: true,
   children: [
     LListItem(
       title: Text("Item 1"),
       selected: true,
     ),
     LListItem(
       title: Text("Item 1"),
       trailing: LBadge.text("45"),
       onTap: () {},
     ),
     LListItem(
       title: Text("Item 2"),
     ),
   ],
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
        SizedBox(height: 20.0),
        LText(
          "\l.h4{Example}\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LListGroup(
                direction: Axis.vertical,
                selectedTextColor: Colors.white,
                selectedBackgroundColor: Colors.blue[700],
                disabledBackgroundColor: Colors.grey[300],
                dense: true,
                children: [
                  LListItem(
                    title: Text("Item 1"),
                    selected: true,
                  ),
                  LListItem(
                    title: Text("Item 1"),
                    trailing: LBadge.text("45"),
                    onTap: () {},
                  ),
                  LListItem(
                    title: Text("Item 2"),
                  ),
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _listgrpexm),
            )
          ],
        ),
        LText(
          "\n\l.h4{Contents}\n"
          "To know about LListItem, active and disabled items.\n\n"
          "\l.bullet.h5{LListItem}\n"
          "Add child to the LListGroup. And allows to add title and other widgets at trailing and leading positions.\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: Wrap(
                children: [
                  LListItem(
                    title: Text("Item 1"),
                    trailing: LBadge.text("45"),
                    onTap: () {},
                  ),
                  LListItem(
                    title: Text("Item 2"),
                    leading: Icon(Icons.access_alarm),
                    subtitle: Text("Sub-title"),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _listitemexmp),
            )
          ],
        ),
        LText(
          "\n\l.bullet.h5{Active and Disabled Items}\n"
          "Allows to set or change the listitem accordingly there active or disabled state.\n\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: Wrap(
                children: [
                  LListItem(
                    selected: true,
                    selectedBackgroundColor: Colors.amber,
                    title: Text("Item 1"),
                    trailing: LBadge.text("45"),
                    onTap: () {},
                  ),
                  LListItem(
                    selected: false,
                    disabledBackgroundColor: Colors.grey[100],
                    enabled: false,
                    dense: true,
                    title: Text("Item 2"),
                    leading: Icon(Icons.access_alarm),
                    subtitle: Text("Sub-title"),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _listitemexmp2),
            )
          ],
        ),
        LText(
          "\n\l.bullet.h5{Flush}\n"
          "Removes the side border of listItems in listGroup except the seperator side between two adjacent list items.\n\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LListGroup(
                flush: true,
                direction: Axis.vertical,
                selectedTextColor: Colors.white,
                selectedBackgroundColor: Colors.blue[700],
                disabledBackgroundColor: Colors.grey[300],
                dense: true,
                children: [
                  LListItem(
                    title: Text("Item 1"),
                    selected: true,
                  ),
                  LListItem(
                    title: Text("Item 1"),
                    trailing: LBadge.text("45"),
                    onTap: () {},
                  ),
                  LListItem(
                    title: Text("Item 2"),
                  ),
                  LListItem(
                    title: Text("Item 3"),
                  ),
                  LListItem(
                    title: Text("Item 4"),
                  ),
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _listgrpexm),
            )
          ],
        ),
        LText(
          "\n\l.bullet.h5{Horizontal variation}\n"
          "Alligns List group in a horizontal direction.\n\n",
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn.child(
              lg: 4,
              xl: 4,
              child: LListGroup(
                direction: Axis.horizontal,
                selectedTextColor: Colors.white,
                selectedBackgroundColor: Colors.blue[700],
                disabledBackgroundColor: Colors.grey[300],
                dense: true,
                children: [
                  LListItem(
                    title: Text("Item 1"),
                    selected: true,
                  ),
                  LListItem(
                    title: Text("Item 2"),
                    trailing: LBadge.text("45"),
                    onTap: () {},
                  ),
                  LListItem(
                    title: Text("Item 3"),
                  ),
                ],
              ),
            ),
            LColumn.child(
              child: codeText(context, _listgrpexmp2),
            )
          ],
        ),
      ],
    );
  }
}
