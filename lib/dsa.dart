import 'package:flutter/material.dart';

import 'quizlist2.dart';
import 'resultpage.dart';

class dsa extends StatefulWidget {
  const dsa({super.key});

  @override
  State<dsa> createState() => _dsaState();
}

class _dsaState extends State<dsa> {
  bool isPressed = false;
  Color mainColor = Colors.indigo;
  Color secondColor = const Color.fromARGB(255, 255, 241, 241);
  Color isTrue = const Color.fromARGB(255, 41, 255, 48);
  Color isFalse = const Color.fromARGB(255, 255, 33, 33);
  Color buttonColor = Colors.yellowAccent;
  int score = 0;
  String name = " ";
  final PageController? _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => _Onclicked(context),
        child: Scaffold(
          backgroundColor: mainColor,
          body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _controller!,
                  onPageChanged: (Page) {
                    setState(() {
                      isPressed = false;
                    });
                  },
                  itemCount: questions2.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Divider(
                          color: Colors.white,
                          height: 12.0,
                          thickness: 1.0,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "       Question ${index + 1} out of ${questions2.length}                                           MM: 50",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        const Divider(
                          color: Colors.white,
                          height: 12.0,
                          thickness: 1.0,
                        ),
                        const SizedBox(
                          height: 60.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
                          child: Text(
                            questions2[index].question!,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60.0,
                        ),
                        for (int i = 0;
                            i < questions2[index].answers!.length;
                            i++)
                          Container(
                            width: 500.0,
                            margin: const EdgeInsets.only(bottom: 20.0),
                            child: MaterialButton(
                              shape: const StadiumBorder(),
                              color: isPressed
                                  ? questions2[index]
                                          .answers!
                                          .entries
                                          .toList()[i]
                                          .value
                                      ? isTrue
                                      : isFalse
                                  : secondColor,
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0,
                              ),
                              onPressed: isPressed
                                  ? () {}
                                  : () {
                                      setState(() {
                                        isPressed = true;
                                      });
                                      if (questions2[index]
                                          .answers!
                                          .entries
                                          .toList()[i]
                                          .value) {
                                        score = score + 10;
                                        // print(score);
                                        // }, else {
                                        //   setState(() {
                                        //     buttonColor = isFalse;
                                        //   });
                                        // }
                                      }
                                    },
                              child: Text(
                                questions2[index].answers!.keys.toList()[i],
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(right: 150.0)),
                            OutlinedButton(
                              onPressed: isPressed
                                  ? index + 1 == questions2.length
                                      ? () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ResultPage(
                                                          score: score,
                                                          name: name)));
                                        }
                                      : () {
                                          _controller!.nextPage(
                                              duration: const Duration(
                                                  milliseconds: 300),
                                              curve: Curves.linearToEaseOut);
                                          setState(() {
                                            isPressed = false;
                                          });
                                        }
                                  : null,
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.yellowAccent,
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                ),
                                shadowColor: Colors.black,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Text(
                                  index + 1 == questions2.length
                                      ? "Check Score"
                                      : "Next >",
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 23.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  })),
        ));
  }

  Future<bool> _Onclicked(BuildContext context) async {
    bool ExitApp = await showDialog(
        context: context,
        builder: ((BuildContext context) {
          return AlertDialog(
            title: const Text("Exit App"),
            content: const Text("Do you want to EXIT the app?"),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text("Continue")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text("Exit")),
            ],
          );
        }));
    return ExitApp;
  }
}
