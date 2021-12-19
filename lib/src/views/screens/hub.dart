// ignore_for_file: deprecated_member_use

import 'package:quizz/src/datas/questions_data.dart';
import 'package:quizz/src/helpers/navigation_helper.dart';
import 'package:quizz/src/helpers/view_helper.dart';
import 'package:quizz/src/services/question_service.dart';
import 'package:quizz/src/views/screens/background_intermediate.dart.dart';
import 'package:flutter/material.dart';

class Hub extends StatefulWidget {
  const Hub({Key? key}) : super(key: key);

  @override
  _HubState createState() => _HubState();
}

class _HubState extends State<Hub> {
  final QuestionService service = QuestionService();

  void showBackground(Houses house) {
    goTo(context, ImageScreen(house: house), isReplaced: true);
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
                        foregroundImage:
                            AssetImage("assets/images/House Stark.jpg"),
                        radius: 16,
                      ),
                      title: const Text("House Stark"),
                      onTap: () => showBackground(Houses.stark),
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
                        foregroundImage:
                            AssetImage("assets/images/House Lannister.jpeg"),
                        radius: 16,
                      ),
                      title: const Text("House Lannister"),
                      onTap: () => showBackground(Houses.lannister),
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
                        foregroundImage:
                            AssetImage("assets/images/House Baratheon.jpg"),
                        radius: 16,
                      ),
                      title: const Text("House Baratheon"),
                      onTap: () => showBackground(Houses.baratheon),
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
                        foregroundImage:
                            AssetImage("assets/images/House Martell.jpg"),
                        radius: 16,
                      ),
                      title: const Text("House Martell"),
                      onTap: () => showBackground(Houses.martell),
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
                        foregroundImage:
                            AssetImage("assets/images/House Greyjoy.jpg"),
                        radius: 16,
                      ),
                      title: const Text("House Grejoy"),
                      onTap: () => showBackground(Houses.grejoy),
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
                        foregroundImage:
                            AssetImage("assets/images/House Tully.jpg"),
                        radius: 16,
                      ),
                      title: const Text("House Tully"),
                      onTap: () => showBackground(Houses.tully),
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
                        foregroundImage:
                            AssetImage("assets/images/House Tyrell.jpg"),
                        radius: 16,
                      ),
                      title: const Text("House Tyrell"),
                      onTap: () => showBackground(Houses.tyrell),
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
