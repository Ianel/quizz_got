// ignore_for_file: deprecated_member_use

import 'package:quizz/src/helpers/navigation_helper.dart';
import 'package:quizz/src/services/question_service.dart';
import 'package:quizz/src/views/screens/hub.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  final int points;

  const Result({Key? key, required this.points}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final QuestionService service = QuestionService();

  void goToHomepage() {
    service.resetData();
    goTo(context, const Hub(), isReplaced: true);
  }

  AssetImage displayImage(String level) {
    switch (level) {
      case "Jester":
        return const AssetImage("assets/images/GOT - Jester.jpg");
      case "Squire":
        return const AssetImage("assets/images/GOT - Squire.png");
      case "Knight":
        return const AssetImage("assets/images/GOT - Knight.jpg");
      case "Royal Guard":
        return const AssetImage("assets/images/GOT - Royal Guard.jpg");
      case "Legend":
        return const AssetImage("assets/images/GOT - Legend.jpg");
    }

    return const AssetImage("assets/images/GOT - Jester.jpg");
  }

  @override
  void initState() {
    var totalPoints = service.getTotalPoints();
    var earnedPoints = widget.points;
    var score = service.calculatePointsInPercentage(earnedPoints, totalPoints);
    service.setLevelBasedOnScore(score);
  }

  @override
  Widget build(BuildContext context) {
    var level = service.getLevel();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Results"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            /*  Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("You have ${widget.points} points"),
            ), */
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text.rich(
                TextSpan(
                  text: "You're a ",
                  style: const TextStyle(fontSize: 24),
                  children: [
                    TextSpan(
                        text: level,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Image(
              image: displayImage(level),
              width: 240,
              height: 240,
              alignment: Alignment.center,
              repeat: ImageRepeat.noRepeat,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RaisedButton(
                child: const Text("Go back to homepage"),
                onPressed: goToHomepage,
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
