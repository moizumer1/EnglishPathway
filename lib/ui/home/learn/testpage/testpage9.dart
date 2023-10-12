import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/home/homepage.dart';
import 'package:flutter_application_engpath/ui/home/learn/learning3.dart';
import 'package:flutter_application_engpath/ui/home/learn/learningpage1.dart';
import 'package:flutter_application_engpath/ui/home/learn/learnrecord.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/testpage3.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/testpage8.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class TestPage9 extends StatefulWidget {
  const TestPage9({Key? key}) : super(key: key);

  @override
  _TestPage9State createState() => _TestPage9State();
}

class _TestPage9State extends State<TestPage9> {
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
                    MaterialPageRoute(builder: (context) => Home()),
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
                                    builder: (context) => learningpagere()),
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
              SizedBox(height: 2.h),
              Text(
                "Say the word!",
                style:
                    TextStyle(fontSize: 20.sp, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              Text(
                "Mum",
                style:
                    TextStyle(fontSize: 25.sp, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.h),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(50, 75),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                  ),
                  child: Icon(
                    Icons.mic,
                    size: 30,
                    color: Colors.white,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10.9,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
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
