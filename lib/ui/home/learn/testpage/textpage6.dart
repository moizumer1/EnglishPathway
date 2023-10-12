import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/home/homepage.dart';
import 'package:flutter_application_engpath/ui/home/learn/learning3.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/testpage8.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/testpage9.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class TestPage6 extends StatefulWidget {
  const TestPage6({Key? key}) : super(key: key);

  @override
  _TestPage6State createState() => _TestPage6State();
}

class _TestPage6State extends State<TestPage6> {
  String userAnswer = "";
  String correctAnswer = "Lunch"; // Set the correct answer here

  void checkAnswer() {
    bool isAnswerCorrect =
        userAnswer.toLowerCase() == correctAnswer.toLowerCase();

    String snackBarMessage;
    if (isAnswerCorrect) {
      snackBarMessage = "Correct answer!";
    } else {
      snackBarMessage = "Incorrect answer. Try again.";
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
                  "The correct answer is 'Lunch'.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            if (isAnswerCorrect) // Show a button to go to the next question if the answer is correct
              const Text(
                "The correct answer is 'Lunch'.",
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
                    MaterialPageRoute(builder: (context) => TestPage8()),
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
              SizedBox(height: 30),
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
              SizedBox(height: 3.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Write the correct Word",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "I usually have ___ at the park.",
                  style: TextStyle(fontSize: 16.sp),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: Column(
                  children: [
                    TextField(
                      onChanged: (value) {
                        userAnswer = value;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter your answer",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    ElevatedButton(
                      onPressed: () {
                        checkAnswer();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: const Size(100, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        "Submit",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.88,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TestPage8()),
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
