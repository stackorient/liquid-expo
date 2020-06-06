import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';

import '../../nav/navbar.dart';
import '../home/widgets/home_drawer.dart';

class ExamplesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: NavBar(),
      ),
      drawer: HomeDrawer(),
      body: Center(
        child: LText(
          "\nCome here again soon to see all the beautiful examples.\n"
          "\nSubscribe us on \l.link(href=https://www.youtube.com/channel/UCDQxuqnVSnR5Z1shJs9108g){YouTube}"
          " to get latest tutorials.\n"
          "Also Follow \l.bold{#MadeWithLiquid}",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
