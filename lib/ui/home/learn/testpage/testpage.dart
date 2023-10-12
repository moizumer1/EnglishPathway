import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/home/homepage.dart';
import 'package:flutter_application_engpath/ui/home/learn/learning3.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/testpage2.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class TestPage1 extends StatefulWidget {
  const TestPage1({Key? key}) : super(key: key);

  @override
  _TestPage1State createState() => _TestPage1State();
}

class _TestPage1State extends State<TestPage1> {
  String selectedAnswer = "";
  bool isAnswerCorrect = false;

  void checkAnswer(String answer) {
    setState(() {
      selectedAnswer = answer;
      if (answer == "Parents") {
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
                  "The correct answer is 'Parents'.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            if (isAnswerCorrect) // Show a button to go to the next question if the answer is correct
              const Text(
                "The correct answer is 'Parents'.",
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
                    MaterialPageRoute(builder: (context) => TestPage2()),
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
      backgroundColor: isAnswerCorrect ? Color(0xffF5FFD8) : Colors.red,
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
              SizedBox(height: 1.h),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Text(
                  "Jane’s   _ _ _ _ _  are on the top?",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 3.h),
              Container(
                height: 30.h,
                width: 50.w,
                decoration: const BoxDecoration(
                    //  color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage("assets/images/family tree.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: 1.5.h),
              Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            checkAnswer("Parents");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedAnswer == "Parents"
                                ? (isAnswerCorrect ? Colors.green : Colors.red)
                                : Colors.blue,
                            minimumSize: const Size(128, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "Parents",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            checkAnswer("Aunt");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedAnswer == "Aunt"
                                ? (isAnswerCorrect ? Colors.green : Colors.red)
                                : Colors.blue,
                            minimumSize: const Size(128, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "Aunt",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            checkAnswer("Uncle");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedAnswer == "Uncle"
                                ? (isAnswerCorrect ? Colors.green : Colors.red)
                                : Colors.blue,
                            minimumSize: const Size(128, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "Uncle",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            checkAnswer("Siblings");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedAnswer == "Siblings"
                                ? (isAnswerCorrect ? Colors.green : Colors.red)
                                : Colors.blue,
                            minimumSize: const Size(128, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "Siblings",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 16,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TestPage2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(300, 56),
                  ),
                  child: Text(
                    "Next Question",
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      );
    });
  }
}
