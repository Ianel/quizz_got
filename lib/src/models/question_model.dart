import 'package:quizz/src/datas/questions_data.dart';

class Question {
  int questionOrder;
  int points;
  Map selectedHouse;
  Levels level;

  Question({
    this.questionOrder = 0,
    this.points = 0,
    this.selectedHouse = houseStark,
    this.level = Levels.jester,
  });
}
