import 'package:flutter/material.dart';

import '../../nav/navbar.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: NavBar()),
      body: Center(
        child: Text("Page not found"),
      ),
    );
  }
}
