import 'package:flutter/cupertino.dart';
import 'package:liquid/liquid.dart';

void showAlert(BuildContext context, {String content}) {
  showLModel(
    context,
    builder: (context) => LModel(
      body: LModelBody(
        child: LText(content),
      ),
    ),
  );
}
