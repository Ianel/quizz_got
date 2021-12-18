// ignore_for_file: deprecated_member_use

import 'package:quizz/src/datas/questions_data.dart';
import 'package:quizz/src/helpers/navigation_helper.dart';
import 'package:quizz/src/helpers/view_helper.dart';
import 'package:quizz/src/services/question_service.dart';
import 'package:quizz/src/views/screens/question.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quizz App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(maxWidth: width(context) * 2 / 3),
                    child: ListTile(
                      style: ListTileStyle.list,
                      tileColor: const Color(0xffe0e0e0),
                      leading: const CircleAvatar(
                        foregroundImage: AssetImage("assets/images/2.jpg"),
                        radius: 16,
                      ),
                      title: const Text("House Stark"),
                      onTap: () => getRightQuizz(Houses.stark),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(maxWidth: width(context) * 2 / 3),
                    child: ListTile(
                      style: ListTileStyle.list,
                      tileColor: const Color(0xffe0e0e0),
                      leading: const CircleAvatar(
                        foregroundImage: AssetImage("assets/images/3.jpg"),
                        radius: 16,
                      ),
                      title: const Text("House Lannister"),
                      onTap: () => getRightQuizz(Houses.lannister),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(maxWidth: width(context) * 2 / 3),
                    child: ListTile(
                      style: ListTileStyle.list,
                      tileColor: const Color(0xffe0e0e0),
                      leading: const CircleAvatar(
                        foregroundImage: AssetImage("assets/images/4.jpg"),
                        radius: 16,
                      ),
                      title: const Text("House Baratheon"),
                      onTap: () => getRightQuizz(Houses.baratheon),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(maxWidth: width(context) * 2 / 3),
                    child: ListTile(
                      style: ListTileStyle.list,
                      tileColor: const Color(0xffe0e0e0),
                      leading: const CircleAvatar(
                        foregroundImage: AssetImage("assets/images/4.jpg"),
                        radius: 16,
                      ),
                      title: const Text("House Martell"),
                      onTap: () => getRightQuizz(Houses.martell),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(maxWidth: width(context) * 2 / 3),
                    child: ListTile(
                      style: ListTileStyle.list,
                      tileColor: const Color(0xffe0e0e0),
                      leading: const CircleAvatar(
                        foregroundImage: AssetImage("assets/images/4.jpg"),
                        radius: 16,
                      ),
                      title: const Text("House Grejoy"),
                      onTap: () => getRightQuizz(Houses.grejoy),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(maxWidth: width(context) * 2 / 3),
                    child: ListTile(
                      style: ListTileStyle.list,
                      tileColor: const Color(0xffe0e0e0),
                      leading: const CircleAvatar(
                        foregroundImage: AssetImage("assets/images/4.jpg"),
                        radius: 16,
                      ),
                      title: const Text("House Tully"),
                      onTap: () => getRightQuizz(Houses.tully),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(maxWidth: width(context) * 2 / 3),
                    child: ListTile(
                      style: ListTileStyle.list,
                      tileColor: const Color(0xffe0e0e0),
                      leading: const CircleAvatar(
                        foregroundImage: AssetImage("assets/images/4.jpg"),
                        radius: 16,
                      ),
                      title: const Text("House Tyrell"),
                      onTap: () => getRightQuizz(Houses.tyrell),
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
