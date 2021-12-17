import 'package:flutter/material.dart';

SizedBox empty() {
  return const SizedBox.shrink();
}

SizedBox spacer(double vertical, double horizontal) {
  return SizedBox(
    width: horizontal,
    height: vertical,
  );
}

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
