import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/injector/injector.dart';
import '../../../core/routing/route_manager.dart';
import '../../../core/routing/routes.dart';
import '../../nav/navbar.dart';
import 'widgets/home_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
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
              xl: EdgeInsets.only(left: 80.0, right: 80.0, top: 80.0),
              lg: EdgeInsets.only(left: 60.0, right: 60.0, top: 80.0),
              md: EdgeInsets.only(left: 30.0, right: 30.0, top: 60.0),
              sm: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
              xs: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            ),
            child: LRow(
              gutter: 20.0,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              axis: LRowAxis.belowLG(Axis.vertical),
              columns: <LColumn>[
                LColumn(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: 600.0,
                      ),
                      child: Column(
                        crossAxisAlignment: mq.isXS || mq.isSM || mq.isMD
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          LAnimatedBox(
                            margin: LBoxEdgeInsets.all(
                              const EdgeInsets.only(bottom: 35.0),
                            ),
                            child: Image.asset(
                              mq.isXS || mq.isSM
                                  ? "assets/logos/logo-vertical.png"
                                  : "assets/logos/logo-horizontal.png",
                              height: 180.0,
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                          LText(
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
                        ],
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: 600.0,
                      ),
                      alignment: mq.isXS || mq.isSM || mq.isMD
                          ? Alignment.center
                          : Alignment.centerLeft,
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LOutlineButton.text(
                            text: "Get Started",
                            size: LElementSize.medium,
                            onPressed: () {
                              injector<RouteManager>()
                                  .navigtor
                                  .currentState
                                  .pushReplacementNamed(docsRoute);
                            },
                          ),
                          LText('\l.small{Currently v.1.0.0}')
                        ],
                      ),
                    ),
                  ],
                ),
                LColumn.child(
                  child: GestureDetector(
                    onTap: () =>
                        launch("https://www.youtube.com/watch?v=vsSawrejGWs"),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/intro.jpg"),
                          ),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.black26,
                          child: Icon(
                            Icons.play_circle_outline,
                            size: 98.0,
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
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
