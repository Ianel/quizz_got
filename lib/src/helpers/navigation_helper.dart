import 'package:flutter/material.dart';

void goTo(BuildContext context, Widget screen, {bool isReplaced = false}) {
  isReplaced
      ? Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => screen))
      : Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
}
