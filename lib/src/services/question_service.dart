import 'package:quizz/src/datas/questions_data.dart';
import 'package:quizz/src/helpers/navigation_helper.dart';
import 'package:quizz/src/models/question_model.dart';
import 'package:quizz/src/views/screens/result.dart';
import 'package:flutter/material.dart';

class QuestionService {
  final Question _questions = Question();

  int getQuestionOrder() {
    return _questions.questionOrder;
  }

  int getPoints() {
    return _questions.points;
  }

  int incrementIndex() {
    var questionsArr = _questions.selectedHouse["questions"] as List;

    if (_questions.questionOrder < questionsArr.length - 1) {
      ++_questions.questionOrder;
    }
    return _questions.questionOrder;
  }

  int checkAnswer(bool isExact) {
    return isExact
        ? _questions.points = _questions.points + 3
        : _questions.points;
  }

  Map getSelectedHouse() {
    return _questions.selectedHouse;
  }

  double calculatePointsInPercentage(int earnedPoints, int totalPoints) {
    return earnedPoints * 100 / totalPoints;
  }

  int getTotalPoints() {
    var selectedHouse = _questions.selectedHouse["questions"] as List;
    return selectedHouse.length * 3;
  }

  void setLevelBasedOnScore(double score) {
    if (score <= 20) {
      _questions.level = Levels.jester;
    } else if (score > 20 && score <= 40) {
      _questions.level = Levels.squire;
    } else if (score > 40 && score <= 60) {
      _questions.level = Levels.knight;
    } else if (score > 60 && score <= 80) {
      _questions.level = Levels.royalGuard;
    } else if (score > 80) {
      _questions.level = Levels.legend;
    }
  }

  String getLevel() {
    switch (_questions.level) {
      case Levels.jester:
        return "Jester";
      case Levels.squire:
        return "Squire";
      case Levels.knight:
        return "Knight";
      case Levels.royalGuard:
        return "Royal Guard";
      case Levels.legend:
        return "Legend";
      default:
        return "Jester";
    }
  }

  void displayResult(BuildContext context, int points) {
    var questionsArr = _questions.selectedHouse["questions"] as List;
    _questions.questionOrder == questionsArr.length - 1
        ? goTo(context, Result(points: points), isReplaced: true)
        : null;
  }

  void redirectToQuizz(Houses house) {
    switch (house) {
      case Houses.stark:
        _questions.selectedHouse = houseStark;
        break;
      case Houses.lannister:
        _questions.selectedHouse = houseLannister;
        break;
      case Houses.baratheon:
        _questions.selectedHouse = houseBaratheon;
        break;
      case Houses.martell:
        _questions.selectedHouse = houseMartell;
        break;
      case Houses.grejoy:
        _questions.selectedHouse = houseGrejoy;
        break;
      case Houses.tully:
        _questions.selectedHouse = houseTully;
        break;
      case Houses.tyrell:
        _questions.selectedHouse = houseTyrell;
        break;
      default:
        _questions.selectedHouse = houseStark;
        break;
    }
  }

  String selectImage(Houses house) {
    switch (house) {
      case Houses.stark:
        return "House Stark.jpg";
      case Houses.lannister:
        return "House Lannister.jpeg";
      case Houses.baratheon:
        return "House Baratheon.jpg";
      case Houses.grejoy:
        return "House Greyjoy.jpg";
      case Houses.tully:
        return "House Tully.jpg";
      case Houses.martell:
        return "House Martell.jpg";
      case Houses.tyrell:
        return "House Tyrell.jpg";
      default:
        return "House Stark.jpg";
    }
  }

  void resetData() {
    _questions.points = 0;
    _questions.questionOrder = 0;
  }
}
