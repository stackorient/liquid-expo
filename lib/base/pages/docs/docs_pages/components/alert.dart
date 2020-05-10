import 'package:flutter/material.dart';

import '../../code_highlight.dart';

class AlertPage extends StatelessWidget {
  final _code = """

void main() {
  print("hello");
}  
  
  """;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: codeText(context, _code),
    );
  }
}
