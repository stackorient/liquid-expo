import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';

import '../../../core/injector/injector.dart';
import '../../../core/routing/route_manager.dart';
import '../../../core/routing/routes.dart';
import '../../nav/navbar.dart';
import 'widgets/home_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final typography = LiquidTheme.of(context).typographyTheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: NavBar(),
      ),
      drawer: HomeDrawer(),
      body: ListView(
        children: <Widget>[
          LAnimatedBox(
            margin: LBoxEdgeInsets(
              xl: EdgeInsets.only(left: 160.0, right: 160.0, top: 100.0),
              lg: EdgeInsets.only(left: 60.0, right: 60.0, top: 80.0),
              md: EdgeInsets.only(left: 30.0, right: 30.0, top: 60.0),
              sm: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
              xs: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            ),
            child: LRow(
              gutter: 40.0,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              axis: LRowAxis.belowLG(Axis.vertical),
              columns: <LColumn>[
                LColumn(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    LAnimatedBox(
                      margin: LBoxEdgeInsets.all(
                        const EdgeInsets.only(bottom: 35.0),
                      ),
                      child: Image.asset(
                        mq.isSM || mq.isXS
                            ? "assets/logos/logo-vertical.png"
                            : "assets/logos/logo-horizontal.png",
                        height: 180.0,
                      ),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 490.0,
                      ),
                      child: LText(
                        (mq.isXS || mq.isSM || mq.isMD
                                ? "\l.h1{Build fast, responsive, cross platform apps with Liquid.}\n\n"
                                : "\l.display4{Build fast, responsive, cross platform apps with Liquid.}\n\n") +
                            "\l.lead{Liquid is an open source UI toolkit for developing cross platform apps using Flutter."
                                " Quickly create a apps for Andorid, IOS, Web or Desktop with our"
                                " powerful grid system, powerful text processor, extensive prebuilt components and"
                                " a lot utilities.}",
                        textAlign: mq.isXS || mq.isSM || mq.isMD
                            ? TextAlign.center
                            : TextAlign.left,
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: 490.0,
                      ),
                      alignment: mq.isXS || mq.isSM || mq.isMD
                          ? Alignment.center
                          : Alignment.centerLeft,
                      padding: const EdgeInsets.only(top: 20.0),
                      child: LOutlineButton.text(
                        text: "Get Started",
                        size: LElementSize.large,
                        onPressed: () {
                          injector<RouteManager>()
                              .navigtor
                              .currentState
                              .pushReplacementNamed(docsRoute);
                        },
                      ),
                    ),
                  ],
                ),
                LColumn.child(
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
