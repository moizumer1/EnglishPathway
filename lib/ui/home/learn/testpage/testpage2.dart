import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/home/homepage.dart';
import 'package:flutter_application_engpath/ui/home/learn/learning3.dart';
import 'package:flutter_application_engpath/ui/home/learn/learningpage1.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/testpage3.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class TestPage2 extends StatefulWidget {
  const TestPage2({Key? key}) : super(key: key);

  @override
  _TestPage2State createState() => _TestPage2State();
}

class _TestPage2State extends State<TestPage2> {
  String selectedAnswer = "";
  bool isAnswerCorrect = false;

  void checkAnswer(String answer) {
    setState(() {
      selectedAnswer = answer;
      if (answer == "29") {
        isAnswerCorrect = true;
      } else {
        isAnswerCorrect = false;
      }
    });

    String snackBarMessage;
    if (isAnswerCorrect) {
      snackBarMessage = "Amazing!";
    } else {
      snackBarMessage = "Oops!! That's wrong.";
    }

    final snackBar = SnackBar(
      content: Padding(
        padding: const EdgeInsets.all(
            8.0), // Add padding of 8 pixels around the content
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              snackBarMessage,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            if (!isAnswerCorrect) // Show correct answer if the answer is wrong
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "The correct answer is '29'.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            if (isAnswerCorrect) // Show a button to go to the next question if the answer is correct
              const Text(
                "The correct answer is '29'.",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                ),
              ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .hideCurrentSnackBar(); // Hide the current snackbar

                // Delay the navigation by a short duration (e.g., 100 milliseconds)
                Future.delayed(Duration(milliseconds: 100), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestPage3()),
                  );
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(400, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                "Next Question",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: isAnswerCorrect ? const Color(0xffF5FFD8) : Colors.red,
      duration: const Duration(seconds: 5), // Adjust the duration as needed
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                            )
                          ],
                          color: Colors.white,
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => learningpage3()),
                              );
                            },
                            child: const Text(
                              "X",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 64.w,
                            child: LinearPercentIndicator(
                              barRadius: const Radius.circular(20),
                              lineHeight: 12,
                              percent: 0.1,
                              progressColor:
                                  const Color.fromARGB(255, 85, 222, 90),
                            ),
                          ),
                          const Text("1/5")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(60, 65),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Icon(
                    Icons.volume_up_rounded,
                    size: 30,
                    color: Colors.white,
                  )),
              SizedBox(height: 2.h),
              Text(
                "What is the age of Mark?",
                style:
                    TextStyle(fontSize: 20.sp, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            checkAnswer("29");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedAnswer == "29"
                                ? (isAnswerCorrect ? Colors.green : Colors.red)
                                : Colors.blue,
                            minimumSize: const Size(128, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "29",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            checkAnswer("21");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedAnswer == "21"
                                ? (isAnswerCorrect ? Colors.green : Colors.red)
                                : Colors.blue,
                            minimumSize: const Size(128, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "21",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.8,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TestPage3()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(300, 56),
                  ),
                  child: Text(
                    "Next Question",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      );
    });
  }
}
