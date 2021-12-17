// ignore_for_file: deprecated_member_use

import 'package:first_app/src/datas/questions_data.dart';
import 'package:first_app/src/helpers/navigation_helper.dart';
import 'package:first_app/src/helpers/view_helper.dart';
import 'package:first_app/src/services/question_service.dart';
import 'package:first_app/src/views/screens/question.dart';
import 'package:flutter/material.dart';

class Hub extends StatefulWidget {
  const Hub({Key? key}) : super(key: key);

  @override
  _HubState createState() => _HubState();
}

class _HubState extends State<Hub> {
  final QuestionService service = QuestionService();

  void getRightQuizz(Houses house) {
    try {
      service.redirectToQuizz(house);
      goTo(context, Question(service: service), isReplaced: true);
    } on Exception catch (_, e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(32.0),
          child: Text(
            "Pick your house",
            style: TextStyle(
                color: Colors.black, fontSize: 24, decorationThickness: 0),
          ),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: width(context) * 3 / 5),
                child: RaisedButton(
                    child: const Text("House Stark"),
                    onPressed: () => getRightQuizz(Houses.stark)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: width(context) * 3 / 5),
                child: RaisedButton(
                    child: const Text("House Lannister"),
                    onPressed: () => getRightQuizz(Houses.lannister)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: width(context) * 3 / 5),
                child: RaisedButton(
                    child: const Text("House Baratheon"),
                    onPressed: () => getRightQuizz(Houses.baratheon)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
