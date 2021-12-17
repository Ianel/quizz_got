// Enumeration Houses
enum Houses { stark, lannister, baratheon }

// Enumeration Levels
enum Levels { jester, squire, knight, royalGuard, legend }

// House Stark Object
const houseStark = {
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

const houseLannister = {
  "questions": [
    "What is the motto of the House Lannister ?",
    "Who is the dwarf ?",
    "Jaimie Lannister is ... ?",
    "Casterly Rock is located in ?",
    "Tywin Lannister is  ?"
  ],
  "answers": [
    [
      {"response": "Hear me roar", "isExact": true},
      {"response": "Growing strong", "isExact": false},
      {
        "response": "A Lannister always pays his debts",
        "isExact": false
      },
    ],
    [
      {"response": "Tyrion Lannister", "isExact": true},
      {"response": "Jaimie Lannister", "isExact": false},
      {"response": "Cersei Lannister", "isExact": false},
    ],
    [
      {"response": "The Head of the House Lannister", "isExact": false},
      {"response": "The Dwarf", "isExact": false},
      {"response": "The KingsLayer", "isExact": true},
    ],
    [
      {"response": "King's Landing", "isExact": false},
      {"response": "Western Lands", "isExact": true},
      {"response": "The North", "isExact": false},
    ],
    [
      {"response": "The Hand of the Queen", "isExact": false},
      {"response": "Governor of the Westernlands", "isExact": true},
      {"response": "The brother of Tytos Lannister", "isExact": false},
    ]
  ]
};

const houseBaratheon = {
  "questions": [
    "What is the motto of the House Baratheon ?",
    "Where is the main camp of the House Baratheon ?",
    "Who is Robert Baratheon ?",
    "How did Stannis Baratheon died ?",
    "Robert was married to ... ?"
  ],
  "answers": [
    [
      {"response": "Love, Duty, Family", "isExact": false},
      {"response": "Ours is the fury", "isExact": true},
      {
        "response": "Fire and Blood",
        "isExact": false
      },
    ],
    [
      {"response": "High Garden", "isExact": false},
      {"response": "Accalmy", "isExact": true},
      {"response": "Lancelion", "isExact": false},
    ],
    [
      {"response": "The greatest fan of Rhaegar Targaryen", "isExact": false},
      {"response": "The brother of Ned", "isExact": false},
      {"response": "The Usurpator", "isExact": true},
    ],
    [
      {"response": "Killed by a Knight", "isExact": true},
      {"response": "Committed suicide", "isExact": false},
      {"response": "Fell from the Wall", "isExact": false},
    ],
    [
      {"response": "Cersei Lannister", "isExact": true},
      {"response": "Lyanna Stark", "isExact": false},
      {"response": "Daenerys Stargaryen", "isExact": false},
    ]
  ]
};
