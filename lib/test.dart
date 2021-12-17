enum Libraries { react, angular, vue }

void getLibrary(Libraries library) {
  switch (library) {
    case Libraries.react:
      print("React is chosen");
      break;
    case Libraries.angular:
      print("Angular is chosen");
      break;
    case Libraries.vue:
      print("Vue is chosen");
      break;
    default:
      print("No framework chosen");
      break;
  }
}

void main() {
  var houseStark2 = {
    "questions": [
      "What is the motto of the House Stark ?",
      "What is the firstname of Ned Stark ?",
      "Who is the Lady of Winterfell on Season 7 ?",
      "How many children did Lord Rickard Stark have ?",
      "Robb Stark was nicknamed ?"
    ],
    "answers": [
      [
        {"response": "Hear me roar", "isExact": false},
        {"response": "Winter is coming", "isExact": true},
        {
          "response": "The alone wolf dies but the pack survives",
          "isExact": false
        },
      ],
      [
        {"response": "Eddard", "isExact": true},
        {"response": "Edgard", "isExact": false},
        {"response": "Edward", "isExact": false},
      ],
      [
        {"response": "Arya Stark", "isExact": false},
        {"response": "Catelyn Stark", "isExact": false},
        {"response": "Sansa Stark", "isExact": true},
      ],
      [
        {"response": "4", "isExact": true},
        {"response": "2", "isExact": false},
        {"response": "3", "isExact": false},
      ],
      [
        {"response": "The Young Wolf", "isExact": true},
        {"response": "The White Wolf", "isExact": false},
        {"response": "The Great Wolf", "isExact": false},
      ]
    ]
  };

  var res = houseStark2["questions"]![2];
  var ques = houseStark2["answers"]![0] as List;
  //print(res);
  print(houseStark2.runtimeType);

  getLibrary(Libraries.vue);

  var answers = [
    {
      "question": [
        {"response": "Blue", "isExact": true},
        {"response": "Green", "isExact": false},
        {"response": "White", "isExact": false},
      ]
    },
    {
      "question": [
        {"response": "Endgame", "isExact": false},
        {"response": "Ere d'Ultron", "isExact": true},
        {"response": "Justice League", "isExact": false},
      ]
    },
  ];

  print("${answers[0]["question"]![0]["isExact"]}");

  //dynamic answer = answers[0]["question"]![0]["isExact"].toString();
  // answer = bool.fromEnvironment(answer);
  String e = "true";
  dynamic answer = bool.fromEnvironment(e);
  print(answer);
}

bool parseBool(String value) {
  return value.toLowerCase() == "true" ? true : false;
}

parseData(Map data) {
  var question = data["questions"];
  var answers = data["answers"];

  print("Questions: $question");
  print("Answers: $answers");
}
