 
import 'quizmodel.dart';

List<QuizModel> questions = [
  QuizModel("Which of the following is not an operating system?", {
    "Windows": false,
    "Oracle": true,
    "Linux": false,
    "DOS": false,
  }),
  QuizModel("When was the first operating system developed?", {
    "1950": true,
    "1951": false,
    "1949": false,
    "1948": false,
  }),
//   QuizModel("What is the full name of FAT?", {
//     "File allocation table": true,
//     "File attribute table": false,
//     "Font attribute table": false,
//     "Format allocation table": false,
//   }),
  QuizModel(
      "Which program runs first after booting the computer and loading the GUI?",
      {
        "Desktop Manager": false,
        "Authentication": true,
        "File Manager": false,
        "Windows Explorer": false,
      }),
//   QuizModel("Which of the following is system software?", {
//     "Operating system": false,
//     "Compiler": false,
//     "Utilities": false,
//     "All of the above": true,
//   }),
//   QuizModel("Which command is used to fetch a group (.doc) of files that have just been deleted?",
//       {
//         "Undelete": false,
//         "Undelete/all": false,
//         "Undelete *.doc": true,
//         "All of the above": false,
//       }),
//
//   QuizModel("Which windows was introduced to My Computer?", {
//     "Windows 10": false,
//     "Windows XP": false,
//     "Windows 95": true,
//     "98": false,
//   }),
  QuizModel(
      "Which of the following operating systems do you use for a client-server network?",
      {
        "MAC": false,
        "Windows  2000": true,
        "Linux": false,
        "Windows XP": false,
      }),
//   QuizModel("Which of the following is an example of a Real Time Operating System?",
//       {
//         "MAC": false,
//         "MS-DOC": false,
//         "Windows 10": false,
//         "Process Control": true,
//       }),
  QuizModel("Which of the following is group of programs?", {
    "Accessories": true,
    "Paint": false,
    "Word": false,
    "All of the above": false,
  }),
];
