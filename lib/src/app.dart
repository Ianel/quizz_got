// ignore_for_file: deprecated_member_use

import 'package:first_app/src/views/screens/hub.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Quiz App",
      home: Hub(),
      debugShowCheckedModeBanner: false,
    );
  }
}
