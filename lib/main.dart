import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import 'base/base.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LiquidApp(
      title: 'Flutter Demo',
      theme: theme,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final typography = LiquidTheme.of(context).typographyTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0062E7),
        title: NavBar(),
      ),
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
              // crossAxisAlignment: CrossAxisAlignment.center,
              columns: <LColumn>[
                LColumn(
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
                      child: Text(
                        "Build responsive, cross platform projects with the world’s "
                        "most advance flutter UI library highly inspired by Bootstrap.\n\n"
                        "Liquid is an open source toolkit for developing cross platform apps using Flutter."
                        " Quickly create a SPA or a complete app for android, ios or Web with our web compatible"
                        " widgets, powerful responsive grid system and extensive prebuilt components.",
                        style: mq.isXS || mq.isSM
                            ? typography.lead.size(16.0).copyWith(height: 1.5)
                            : typography.lead.copyWith(height: 1.5),
                        textAlign: mq.isXS || mq.isSM
                            ? TextAlign.center
                            : TextAlign.left,
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
