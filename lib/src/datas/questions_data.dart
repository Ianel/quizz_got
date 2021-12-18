// Enumeration Houses
enum Houses { stark, lannister, baratheon, martell, grejoy, tully, tyrell }

// Enumeration Levels
enum Levels { jester, squire, knight, royalGuard, legend }

// House Stark Object
const houseStark = {
  "questions": [
    "Who built the Wall ?",
    "What is the motto of the House Stark ?",
    "What is the armory of the House Stark",
    "What is the firstname of Ned Stark ?",
    "Who is the Lady of Winterfell on Season 7 ?",
    "How many children did Lord Rickard Stark have ?",
    "Robb Stark was nicknamed ?",
    "Arya Stark's sword was named ... ",
    "Sansa Stark was NOT married to ?",
    "Jon Snow is ... ",
  ],
  "answers": [
    [
      {"response": "Brandon I Stark ", "isExact": true},
      {"response": "Toren Stark", "isExact": false},
      {"response": "Rickon Stark", "isExact": false},
    ],
    [
      {"response": "Hear me roar", "isExact": false},
      {"response": "Winter is coming", "isExact": true},
      {
        "response": "The lone wolf dies but the pack survives",
        "isExact": false
      },
    ],
    [
      {"response": "The White Walker", "isExact": false},
      {"response": "The Great Wolf", "isExact": true},
      {"response": "The Wildlings", "isExact": false},
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
    ],
    [
      {"response": "Needle", "isExact": true},
      {"response": "Eye-fire", "isExact": false},
      {"response": "North Wind", "isExact": false},
    ],
    [
      {"response": "Ramsay Bolton", "isExact": false},
      {"response": "Littlefinger", "isExact": true},
      {"response": "Joffrey Baratheon", "isExact": false},
    ],
    [
      {"response": "The son of Ned Stark", "isExact": false},
      {"response": "The son of Lyanna Stark", "isExact": true},
      {"response": "The son of Benjen Stark", "isExact": false},
    ],
  ]
};

const houseLannister = {
  "questions": [
    "What is the motto of the House Lannister ?",
    "Who is the dwarf ?",
    "Jaimie Lannister is ... ",
    "Casterly Rock is located in ?",
    "Tywin Lannister is ... ",
    "The House Lannister is ... ",
    "Cersei Lannister had 3 children ... ",
    "The House Lannister was founded by",
    "In which city does Casterly Rock belong to ?",
    "Who was the husband of Joanna Lannister ?",
  ],
  "answers": [
    [
      {"response": "Hear me roar", "isExact": true},
      {"response": "Growing strong", "isExact": false},
      {"response": "A Lannister always pays his debts", "isExact": false},
    ],
    [
      {"response": "Tyrion Lannister", "isExact": true},
      {"response": "Jaimie Lannister", "isExact": false},
      {"response": "Cersei Lannister", "isExact": false},
    ],
    [
      {"response": "The Head of the House Lannister", "isExact": false},
      {"response": "The Dwarf", "isExact": false},
      {"response": "The Kingslayer", "isExact": true},
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
    ],
    [
      {"response": "The least feared house of Westeros", "isExact": false},
      {"response": "The richest house of Westeros", "isExact": true},
      {"response": "The most loved house of Westeros", "isExact": false},
    ],
    [
      {"response": "Myrcella, Joffrey, Tommen", "isExact": false},
      {"response": "Tommen, Myrcella, Joffrey", "isExact": false},
      {"response": "Joffrey, Tommen, Myrcella", "isExact": true},
    ],
    [
      {"response": "Lann The Lion", "isExact": false},
      {"response": "Lann The Great", "isExact": false},
      {"response": "Lann The Shrwed", "isExact": true},
    ],
    [
      {"response": "Lannis Port", "isExact": true},
      {"response": "Casterly Port", "isExact": false},
      {"response": "Lion Port", "isExact": false},
    ],
    [
      {"response": "Tywin Lannister", "isExact": true},
      {"response": "Jaimie Lannister", "isExact": false},
      {"response": "Tyrion Lannister", "isExact": false},
    ],
  ]
};

const houseBaratheon = {
  "questions": [
    "The Baratheons originally were related to ...",
    "What is the motto of the House Baratheon ?",
    "Where is the main camp of the House Baratheon ?",
    "Who is Robert Baratheon ?",
    "How did Stannis Baratheon died ?",
    "Robert was married to ... ?",
    "Robert rebellion was leaded against which house ?",
    "Stannis Baratheon believed in which God ?",
    "Renly Baratheon was killed by ... ",
    "Is Gendry the son of Stannis ?",
  ],
  "answers": [
    [
      {"response": "The Valyrians", "isExact": false},
      {"response": "The Targaryans", "isExact": true},
      {"response": "The HighTowers", "isExact": false},
    ],
    [
      {"response": "Love, Duty, Family", "isExact": false},
      {"response": "Ours is the fury", "isExact": true},
      {"response": "Fire and Blood", "isExact": false},
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
    ],
    [
      {"response": "The Targaryans", "isExact": true},
      {"response": "The Starks", "isExact": false},
      {"response": "The Snows", "isExact": false},
    ],
    [
      {"response": "The Lord Of Light", "isExact": true},
      {"response": "The Multifaced God", "isExact": false},
      {"response": "The 7", "isExact": false},
    ],
    [
      {"response": "Margaery Tyrell", "isExact": false},
      {"response": "Brienne of Tarth", "isExact": false},
      {"response": "A demon sent by the red woman", "isExact": true},
    ],
    [
      {"response": "True", "isExact": false},
      {"response": "False", "isExact": true},
    ]
  ]
};

const houseMartell = {
  "questions": [
    "The House Martell is the master of which kingdom ?",
    "How the Iron Throne integrate Dorne in the Realm ?",
    "Dorne is located into Essos ?",
    "The Prince Oberynn Martell was killed by ?",
    "Ella Martell was the wife of ?",
    "The Dornians were never beaten by the Targaryans ?",
    "The Martells motto is ?",
    "Doran Martell was ... ",
    "Ella Martell was killed by ... ",
    "The bastards in Dorne are called ...",
  ],
  "answers": [
    [
      {"response": "Dorne", "isExact": true},
      {"response": "The Bief", "isExact": false},
      {"response": "Iron Island", "isExact": false},
    ],
    [
      {"response": "By Conquest", "isExact": false},
      {"response": "By Marriage", "isExact": true},
    ],
    [
      {"response": "True", "isExact": false},
      {"response": "False", "isExact": true},
    ],
    [
      {"response": "The Mad King", "isExact": false},
      {"response": "The Hound", "isExact": false},
      {"response": "The Mountain", "isExact": true},
      {"response": "The Kingslayer", "isExact": false},
    ],
    [
      {"response": "Rhaegar Targaryen", "isExact": true},
      {"response": "Aegon Targaryen", "isExact": false},
      {"response": "Viserys Targaryen", "isExact": false},
    ],
    [
      {"response": "True", "isExact": true},
      {"response": "False", "isExact": false},
    ],
    [
      {"response": "Unbound, Unbent, Unbroken", "isExact": true},
      {"response": "Unsullied, Unbeaten, Unique", "isExact": false},
      {"response": "Unbroken, Unbeaten, Unbound", "isExact": false},
    ],
    [
      {"response": "The Prince of Dorne", "isExact": true},
      {"response": "The Father of Oberynn", "isExact": false},
      {"response": "The King of Dorne", "isExact": false},
    ],
    [
      {"response": "The Kingslayer", "isExact": false},
      {"response": "The Mountain", "isExact": true},
      {"response": "The Red Woman", "isExact": false},
    ],
    [
      {"response": "Snow", "isExact": false},
      {"response": "Sands", "isExact": true},
      {"response": "Snakes", "isExact": false},
    ]
  ]
};

const houseGrejoy = {
  "questions": [
    "Pike is ... ?",
    "The Throne of the Grejoy is called ?",
    "Theon Grejoy is ... ",
    "What is the emblem of the Grejoy ?",
    "The Grejoys are reknown because of ... ",
    "During Robert's rebellion, the Grejoys were with ...",
    "At the end of the series, is Theon alive ? ",
    "Eurion Grejoy made an alliance with which Queen ?",
    "Theon was a prisoner of the Starks ?",
    "How did Theon Grejoy died ?",
  ],
  "answers": [
    [
      {"response": "A country", "isExact": false},
      {"response": "An island", "isExact": true},
      {"response": "A continent", "isExact": false},
    ],
    [
      {"response": "The Iron Throne", "isExact": false},
      {"response": "The Salt Throne", "isExact": true},
      {"response": "The Bone Throne", "isExact": false},
    ],
    [
      {"response": "The second son of Yara Grejoy", "isExact": false},
      {"response": "The first son of Eurion Grejoy", "isExact": false},
      {
        "response": "The last living son of Ballon Grejoy on Season 7",
        "isExact": true
      },
    ],
    [
      {"response": "The Dragon", "isExact": false},
      {"response": "The Kraken", "isExact": true},
      {"response": "The Whale", "isExact": false},
    ],
    [
      {"response": "Their sailor skills", "isExact": true},
      {"response": "Their leader", "isExact": false},
      {"response": "Their women", "isExact": false},
    ],
    [
      {"response": "Aerys II Targaryen", "isExact": true},
      {"response": "Robert Baratheon", "isExact": false},
      {"response": "The White Walkers", "isExact": false},
    ],
    [
      {"response": "Disappeared", "isExact": false},
      {"response": "False", "isExact": false},
      {"response": "True", "isExact": true},
    ],
    [
      {"response": "Cersei Lannister", "isExact": true},
      {"response": "Daenerys Targaryen", "isExact": false},
    ],
    [
      {"response": "True", "isExact": true},
      {"response": "False", "isExact": false},
    ],
    [
      {
        "response": "Killed by the White Walkers and their armies",
        "isExact": true
      },
      {"response": "Committed suicide", "isExact": false},
      {"response": "Killed by Yara Grejoy", "isExact": false},
    ],
  ]
};

const houseTully = {
  "questions": [
    "Vivesaige is located in the Conflan ?",
    "What is the emblem of the Tully ?",
    "Family, Duty, ... ",
    "Catelyn Tully was promised to be the wife of ... ?",
    "Edmond Tully is ... ",
    "Lisa Tully was ... ",
    "Catelyn Stark loved Jon Snow ?",
    "Ned and Catelyn had ... ",
    "Who Petr Baelysh loved first ?",
    "Edmur Tully was ... ?",
  ],
  "answers": [
    [
      {"response": "True", "isExact": true},
      {"response": "False", "isExact": false},
    ],
    [
      {"response": "A fish", "isExact": true},
      {"response": "A kraken", "isExact": false},
      {"response": "A shark", "isExact": false},
    ],
    [
      {"response": "Integrity", "isExact": false},
      {"response": "Love", "isExact": false},
      {"response": "Honor", "isExact": true},
    ],
    [
      {"response": "Ned Stark", "isExact": false},
      {"response": "Brandon Sark", "isExact": true},
      {"response": "Benjen Stark", "isExact": false},
    ],
    [
      {"response": "The father of Catelyn Tully", "isExact": false},
      {"response": "The Lord of Vivesaige", "isExact": true},
      {"response": "The King in the North", "isExact": false},
    ],
    [
      {"response": "The wife of John Arryn", "isExact": true},
      {"response": "The mother of Catelyn Stark", "isExact": false},
      {"response": "The godmother of Jon Snow", "isExact": false},
    ],
    [
      {"response": "True", "isExact": false},
      {"response": "False", "isExact": true},
    ],
    [
      {"response": "5 boys", "isExact": false},
      {"response": "3 girls and 2 boys", "isExact": false},
      {"response": "3 boys and 2 girls", "isExact": true},
    ],
    [
      {"response": "Catelyn Tully", "isExact": true},
      {"response": "Lisa Tully", "isExact": false},
    ],
    [
      {"response": "A legendary fighter", "isExact": true},
      {"response": "A caring oncle", "isExact": false},
      {"response": "A poor soldier", "isExact": false},
    ],
  ]
};

const houseTyrell = {
  "questions": [
    "What is the bastion of the Tyrell ?",
    "The Tyrell motto is ... ?",
    "Olena Tyrell was nicknamed ... ? ",
    "Who was the wife of Tommen Baratheon ?",
    "Lauras Tyrell was ... ? ",
    "The Tyrells are ... ",
    "Who killed Joffrey Baratheon ?",
    "How did Margaery Tyrell died ? ",
    "Margaery Tyrell was married to Joffrey Baratheon ?",
    "Who killed Olena Tyrell ?",
  ],
  "answers": [
    [
      {"response": "High Garden", "isExact": true},
      {"response": "Old Town", "isExact": false},
      {"response": "Port Real", "isExact": false},
    ],
    [
      {"response": "Growing Strong", "isExact": true},
      {"response": "What is dead cant'be killed", "isExact": false},
      {"response": "We do not sow", "isExact": false},
    ],
    [
      {"response": "The Queen of Poisons", "isExact": false},
      {"response": "The Queen of Roses", "isExact": false},
      {"response": "The Queen of Thorns", "isExact": true},
    ],
    [
      {"response": "Olena Tyrell", "isExact": false},
      {"response": "Margaery Tyrell", "isExact": true},
      {"response": "Mess Tyrell", "isExact": false},
    ],
    [
      {"response": "The Heir of the House Tyrell", "isExact": true},
      {"response": "The son of Olena Tyrell", "isExact": false},
      {"response": "The brother of Mess Tyrell", "isExact": false},
    ],
    [
      {"response": "Sailors", "isExact": false},
      {"response": "Warriors", "isExact": false},
      {"response": "Cultivators", "isExact": true},
    ],
    [
      {"response": "Olena Tyrell", "isExact": true},
      {"response": "Margaery Tyrell", "isExact": false},
      {"response": "Lauras Tyrell", "isExact": false},
    ],
    [
      {"response": "Burned by a dragon", "isExact": false},
      {"response": "Fell form the Red Donjon tower", "isExact": false},
      {"response": "Burned by a green fire", "isExact": true},
    ],
    [
      {"response": "True", "isExact": true},
      {"response": "False", "isExact": false},
    ],
    [
      {"response": "Daenerys Targaryen", "isExact": false},
      {"response": "Jaimie Lannister", "isExact": true},
      {"response": "Khal Drogo", "isExact": false},
    ],
  ]
};
