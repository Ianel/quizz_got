// ignore_for_file: deprecated_member_use

import 'package:first_app/src/helpers/view_helper.dart';
import 'package:first_app/src/services/question_service.dart';
import 'package:first_app/test.dart';
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
    var localQuestions =
        widget.service.getSelectedHouse()["questions"]![questionOrder];

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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: width(context) * 3 / 4),
                    child: RaisedButton(
                      child:
                          Text(localAnswers.elementAt(0)["response"].toString()),
                      onPressed: () => getAnswer(
                        parseBool(
                            localAnswers.elementAt(0)["isExact"].toString()),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: width(context) * 3 / 4),
                    child: RaisedButton(
                      child:
                          Text(localAnswers.elementAt(1)["response"].toString()),
                      onPressed: () => getAnswer(
                        parseBool(
                            localAnswers.elementAt(1)["isExact"].toString()),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: width(context) * 3 / 4),
                    child: RaisedButton(
                      child:
                          Text(localAnswers.elementAt(2)["response"].toString()),
                      onPressed: () => getAnswer(
                        parseBool(
                            localAnswers.elementAt(2)["isExact"].toString()),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
