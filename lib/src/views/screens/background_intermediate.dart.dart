import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizz/src/datas/questions_data.dart';
import 'package:quizz/src/helpers/navigation_helper.dart';
import 'package:quizz/src/helpers/view_helper.dart';
import 'package:quizz/src/services/question_service.dart';
import 'package:quizz/src/views/screens/question.dart';

class ImageScreen extends StatefulWidget {
  final Houses house;

  const ImageScreen({Key? key, required this.house}) : super(key: key);

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  final QuestionService service = QuestionService();

  @override
  void initState() {
    getRightQuizz(widget.house);
  }

  void getRightQuizz(Houses house) {
    Timer(const Duration(milliseconds: 1500), () {
      service.redirectToQuizz(house);
      goTo(context, Question(service: service), isReplaced: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: height(context),
          width: width(context),
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(
                "assets/images/${service.selectImage(widget.house)}"),
          ),
        ),
      ],
    );
  }
}
