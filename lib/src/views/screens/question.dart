// ignore_for_file: deprecated_member_use

import 'package:quizz/src/helpers/view_helper.dart';
import 'package:quizz/src/services/question_service.dart';
import 'package:quizz/test.dart';
import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  final QuestionService service;
  const Question({Key? key, required this.service}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  dynamic questionOrder;
  dynamic points;
  dynamic tmpLength;

  @override
  void initState() {
    questionOrder = widget.service.getQuestionOrder();
    points = widget.service.getPoints();

    print("Initial State: $questionOrder, Initial points: $points");
  }

  void getAnswer(bool isExact) {
    setState(() {
      points = widget.service.checkAnswer(isExact);

      tmpLength = widget.service.getSelectedHouse()["questions"] as List;
      var questionsLength = tmpLength.length;

      if (questionOrder == questionsLength - 1) {
        widget.service.displayResult(context, points);
      } else {
        questionOrder = widget.service.incrementIndex();
      }

      print("Updated state: $questionOrder, Updated points: $points");
    });
  }

  @override
  void dispose() {
    super.dispose();
    points = 0;
  }

  @override
  Widget build(BuildContext context) {
    var localAnswers =
        widget.service.getSelectedHouse()["answers"]![questionOrder] as List;
    var localAnswersLength = localAnswers.length;
    var localQuestions =
        widget.service.getSelectedHouse()["questions"]![questionOrder];

    print(localAnswers);
    print(localAnswersLength);

    return Scaffold(
      appBar: AppBar(
        title: Text("Question ${questionOrder + 1}"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                localQuestions.toString(),
              ),
            ),
            Container(
              height: 300,
              width: width(context) * 3 / 4,
              child: ListView.builder(
                  itemCount: localAnswersLength,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        child: Text(
                            localAnswers.elementAt(index)["response"].toString()),
                        onPressed: () => getAnswer(
                          parseBool(localAnswers
                              .elementAt(index)["isExact"]
                              .toString()),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
