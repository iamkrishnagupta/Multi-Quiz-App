

import 'quizmodel.dart';

List<QuizModel> questions6 = [
  QuizModel("Who invented C++?", {
    "Dennis Ritchie": false,
    "Bjarne Stroustrup": true,
    "Ken Thompson": false,
    "Brian Kernighan": false,
  }),
  QuizModel(
      "Which of the following is the correct syntax of including a user defined header files in C++?",
      {
        "#include [userdefined]": false,
        "#include <userdefined.h>": false,
        "#include “userdefined”": true,
        "#include <userdefined>": false,
      }),
  QuizModel("Which of the following is used for comments in C++?", {
    "/* comment */": false,
    "// comment */": false,
    "// comment": false,
    "both // comment or /* comment */": true,
  }),
  QuizModel(
      "Which of the following user-defined header file extension used in c++?",
      {
        "hg": false,
        "cpp": false,
        "h": true,
        "hf": false,
      }),
  QuizModel("Which of the following approach is used by C++?", {
    "Left-right": false,
    "Bottom-up": true,
    "Right-left": false,
    "Top-down": false,
  })
];
