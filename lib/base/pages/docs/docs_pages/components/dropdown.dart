import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import '../../code_highlight.dart';

class Dropdown1 extends StatelessWidget {
  final bool scrollToClose;
  final bool scrollable;
  final DropdownPosition position;
  final Color backdrop;
  final LElementType type;
  final String text;
  final GlobalKey<LDropdownState> _dropdown = GlobalKey<LDropdownState>();

  Dropdown1(
      {Key key,
      this.scrollToClose = false,
      this.scrollable = true,
      this.position = DropdownPosition.center,
      this.backdrop = Colors.black26,
      this.type = LElementType.primary,
      this.text = 'Dropdown'})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LDropdown(
      key: _dropdown,
      scrollToClose: scrollToClose,
      scrollable: scrollable,
      backdrop: backdrop,
      position: position,
      elevation: 10.0,
      trigger: LFlatButton.icon(
        icon: LText(text),
        type: type,
        label: Icon(Icons.keyboard_arrow_down),
        onPressed: () {
          _dropdown.currentState.toggleDropdown();
        },
      ),
      itemBuilder: (context) => [
        LDropdownItem.header(text: "Option 1"),
        LDropdownItem(
          text: "First Item",
          onTap: () {},
        ),
        LDropdownItem(
          text: "Second Item",
          onTap: () {
            print("pressed");
          },
          onLongPress: () {
            print("long pressed");
          },
        ),
        LDropdownItem(
          text: "Third Item",
          onTap: () {},
        ),
        LDropdownItem.divider(
          thickness: 2,
        ),
        LDropdownItem.header(text: "Options"),
        LDropdownItem.withChild(
            child: Row(
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            LIconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: () {},
            ),
            LIconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: () {},
            ),
            LIconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: () {},
            ),
          ],
        )),
      ],
    );
  }
}

class Dropdown2 extends StatelessWidget {
  final bool scrollToClose;
  final bool scrollable;
  final DropdownPosition position;
  final Color backdrop;
  final LElementType type;
  final String text;
  final GlobalKey<LDropdownState> _dropdown = GlobalKey<LDropdownState>();

  Dropdown2(
      {Key key,
      this.scrollToClose = false,
      this.scrollable = true,
      this.position = DropdownPosition.center,
      this.backdrop = Colors.black26,
      this.type = LElementType.primary,
      this.text = 'Dropdown'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LDropdown(
      key: _dropdown,
      scrollToClose: scrollToClose,
      scrollable: scrollable,
      backdrop: backdrop,
      position: position,
      elevation: 10.0,
      trigger: LFlatButton.icon(
        icon: LText(text),
        label: Icon(Icons.keyboard_arrow_down),
        onPressed: () {
          _dropdown.currentState.toggleDropdown();
        },
        type: type,
      ),
      itemBuilder: (context) => [
        LDropdownItem.header(text: "Option 1"),
        LDropdownItem(
          text: "Created by",
          onTap: () {},
        ),
        LDropdownItem(
          text: "\l.link(href=https://twitter.com/heyrjs){@heyrjs}",
          onTap: () {
            print("pressed");
          },
          onLongPress: () {
            print("\l.link(href=https://twitter.com/heypnd){@heypnd}");
          },
        ),
        LDropdownItem(
          text: "Third Item",
          onTap: () {},
        ),
        LDropdownItem.divider(
          thickness: 2,
        ),
        LDropdownItem.header(text: "Options"),
        LDropdownItem.withChild(
          child: Row(
            // mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              LFlatButton.icon(icon: Icon(Icons.star), label: Text('Flat')),
              LFlatButton.icon(icon: Icon(Icons.star), label: Text('Flat')),
              LFlatButton.icon(icon: Icon(Icons.star), label: Text('Flat')),
            ],
          ),
        ),
      ],
    );
  }
}

class DropdownPage extends StatelessWidget {
  final _title = "LDropdown";
  final _subtitle =
      "Dropdowns are toggleable, contextual overlays for displaying lists of links and more.";

  final _linearcode = """

  final GlobalKey<LDropdownState> _dropdown = GlobalKey<LDropdownState>();

  ....

  LDropdown(
   key: _dropdown,
   scrollable: false,
   elevation: 10.0,
   trigger: LFlatButton.text(
     text: "Dropdown",
     onPressed: () {
       _dropdown.currentState.toggleDropdown();
     },
     type: LElementType.warning,
   ),
   itemBuilder: (context) => [
     LDropdownItem.header(text: "Option 1"),
     LDropdownItem(
       text: "First Item",
       onTap: () {},
     ),
     LDropdownItem(
       text: "Second Item",
       onTap: () {
         print("pressed");
       },
       onLongPress: () {
         print("long pressed");
       },
     ),
     LDropdownItem(
       text: "Third Item",
       onTap: () {},
     ),
     LDropdownItem.divider(
       thickness: 2,
     ),
     LDropdownItem.header(text: "Options"),
     LDropdownItem.withChild(
         child: Row(
       // mainAxisSize: MainAxisSize.min,
       children: <Widget>[
         LIconButton(
           icon: Icon(Icons.ac_unit),
           onPressed: () {},
         ),
         LIconButton(
           icon: Icon(Icons.ac_unit),
           onPressed: () {},
         ),
         LIconButton(
           icon: Icon(Icons.ac_unit),
           onPressed: () {},
         ),
       ],
     )),
   ],
 ),


  """;
  final _scrolltoclosecode = """

  final GlobalKey<LDropdownState> _dropdown = GlobalKey<LDropdownState>();

  ....

  LDropdown(
   key: _dropdown,
   scrollToClose: true,
   elevation: 10.0,
   trigger: LFlatButton.text(
     text: "Dropdown",
     onPressed: () {
       _dropdown.currentState.toggleDropdown();
     },
     type: LElementType.warning,
   ),
   itemBuilder: (context) => [
     LDropdownItem.header(text: "Option 1"),
     LDropdownItem(
       text: "First Item",
       onTap: () {},
     ),
     LDropdownItem(
       text: "Second Item",
       onTap: () {
         print("pressed");
       },
       onLongPress: () {
         print("long pressed");
       },
     ),
     LDropdownItem(
       text: "Third Item",
       onTap: () {},
     ),
     LDropdownItem.divider(
       thickness: 2,
     ),
     LDropdownItem.header(text: "Options"),
     LDropdownItem.withChild(
         child: Row(
       // mainAxisSize: MainAxisSize.min,
       children: <Widget>[
         LIconButton(
           icon: Icon(Icons.ac_unit),
           onPressed: () {},
         ),
         LIconButton(
           icon: Icon(Icons.ac_unit),
           onPressed: () {},
         ),
         LIconButton(
           icon: Icon(Icons.ac_unit),
           onPressed: () {},
         ),
       ],
     )),
   ],
 ),


  """;
  final _scrollablecode = """

  final GlobalKey<LDropdownState> _dropdown = GlobalKey<LDropdownState>();

  ....

  LDropdown(
   key: _dropdown,
   scrollToClose: false,
   scrollable: true,
   

   elevation: 10.0,
   trigger: LFlatButton.text(
     text: "Dropdown",
     onPressed: () {
       _dropdown.currentState.toggleDropdown();
     },
     type: LElementType.warning,
   ),
   itemBuilder: (context) => [
     LDropdownItem.header(text: "Option 1"),
     LDropdownItem(
       text: "First Item",
       onTap: () {},
     ),
     LDropdownItem(
       text: "Second Item",
       onTap: () {
         print("pressed");
       },
       onLongPress: () {
         print("long pressed");
       },
     ),
     LDropdownItem(
       text: "Third Item",
       onTap: () {},
     ),
     LDropdownItem.divider(
       thickness: 2,
     ),
     LDropdownItem.header(text: "Options"),
     LDropdownItem.withChild(
         child: Row(
       // mainAxisSize: MainAxisSize.min,
       children: <Widget>[
         LIconButton(
           icon: Icon(Icons.ac_unit),
           onPressed: () {},
         ),
         LIconButton(
           icon: Icon(Icons.ac_unit),
           onPressed: () {},
         ),
         LIconButton(
           icon: Icon(Icons.ac_unit),
           onPressed: () {},
         ),
       ],
     )),
   ],
 ),


  """;
  final _backdropcode = """

  final GlobalKey<LDropdownState> _dropdown = GlobalKey<LDropdownState>();

  ....

  LDropdown(
   key: _dropdown,
   scrollToClose: false,
   scrollable: false,//@required
   backdrop: _theme.colors.info.lighten(0.1),

   elevation: 10.0,
   trigger: LFlatButton.text(
     text: "Dropdown",
     onPressed: () {
       _dropdown.currentState.toggleDropdown();
     },
     type: LElementType.warning,
   ),
   itemBuilder: (context) => [
     LDropdownItem.header(text: "Option 1"),
     LDropdownItem(
       text: "First Item",
       onTap: () {},
     ),
     LDropdownItem(
       text: "Second Item",
       onTap: () {
         print("pressed");
       },
       onLongPress: () {
         print("long pressed");
       },
     ),
     LDropdownItem(
       text: "Third Item",
       onTap: () {},
     ),
     LDropdownItem.divider(
       thickness: 2,
     ),
     LDropdownItem.header(text: "Options"),
     LDropdownItem.withChild(
         child: Row(
       // mainAxisSize: MainAxisSize.min,
       children: <Widget>[
         LIconButton(
           icon: Icon(Icons.ac_unit),
           onPressed: () {},
         ),
         LIconButton(
           icon: Icon(Icons.ac_unit),
           onPressed: () {},
         ),
         LIconButton(
           icon: Icon(Icons.ac_unit),
           onPressed: () {},
         ),
       ],
     )),
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
        SizedBox(height: 35.0),
        LBox(
          height: LBoxDimension.all(450.0),
          child: LRow(
            axis: LRowAxis.belowLG(Axis.vertical),
            gutter: 10.0,
            crossAxisAlignment: CrossAxisAlignment.center,
            columns: [
              LColumn(lg: 4, xl: 4, children: [
                Dropdown1(scrollable: false),
              ]),
              LColumn.child(
                child: codeText(context, _linearcode),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: LText(
            " \l.h4.bold{With Scroll to close}\n"
            "Whether [LDropdown] should close when a trigger changes its position",
          ),
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn(lg: 4, xl: 4, children: [
              Dropdown1(
                scrollToClose: true,
              ),
            ]),
            LColumn.child(
              child: LBox(
                  height: LBoxDimension.all(400.0),
                  child: codeText(context, _scrolltoclosecode)),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: LText(
            " \l.h4.bold{With scrollable}\n"
            " If your trigger is in a [Scrollable] like [ListView], [SingleChildScrollView], etc."
            " and `scrollable` is `true` then [LDropdown] will follow trigger on scroll",
          ),
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn(lg: 4, xl: 4, children: [
              Dropdown2(
                scrollable: true,
              ),
            ]),
            LColumn.child(
              child: LBox(
                  height: LBoxDimension.all(400.0),
                  child: codeText(context, _scrollablecode)),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: LText(
            " \l.h4.bold{With position}\n",
          ),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          children: [
            LRow(
              columns: [
                LColumn.child(
                    child: Dropdown1(
                  text: 'center',
                  scrollToClose: false,
                  scrollable: false,
                  position: DropdownPosition.center,
                )),
                LColumn.child(
                    child: Dropdown1(
                  text: 'left',
                  scrollToClose: false,
                  scrollable: false,
                  type: LElementType.success,
                  position: DropdownPosition.left,
                )),
                LColumn.child(
                    child: Dropdown1(
                  text: 'Right',
                  scrollToClose: false,
                  scrollable: false,
                  type: LElementType.danger,
                  position: DropdownPosition.right,
                )),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: LText(
            "\l.h4.bold{With backdrop}\n"
            "When \l.bold{scrollable} is \lbold{false}, the dropdown will show a backdrop"
            " which on tap event, dismisses the active dropdown"
            " default is Black with opacity 26%",
          ),
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          gutter: 10.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          columns: [
            LColumn(lg: 4, xl: 4, children: [
              Dropdown2(
                scrollToClose: false,
                scrollable: false,
                backdrop: _theme.colors.danger.withOpacity(0.2),
              ),
            ]),
            LColumn.child(
              child: LBox(
                  height: LBoxDimension.all(400.0),
                  child: codeText(context, _backdropcode)),
            ),
          ],
        ),
      ],
    );
  }
}
