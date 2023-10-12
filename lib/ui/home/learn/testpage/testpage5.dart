import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/home/homepage.dart';
import 'package:flutter_application_engpath/ui/home/learn/learning3.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/testpage8.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/textpage6.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class TestPage5 extends StatefulWidget {
  const TestPage5({Key? key}) : super(key: key);

  @override
  _TestPage5State createState() => _TestPage5State();
}

class _TestPage5State extends State<TestPage5> {
  String selectedAnswer = "";
  bool isAnswerCorrect = false;

  // Maintain a list of texts for the row
  List<String> rowTexts = ["Name", "Age", "Height"];

  void checkAnswer(String answer) {
    setState(() {
      selectedAnswer = answer;
      if (answer == "1") {
        isAnswerCorrect = true;
        // Update the text in the row when the answer is correct
        rowTexts[0] = answer;
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
                  "The correct answer is 'Name'.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            if (isAnswerCorrect) // Show a button to go to the next question if the answer is correct
              const Text(
                "The correct answer is 'Name'.",
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
                    MaterialPageRoute(builder: (context) => TestPage6()),
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
              SizedBox(height: 1.h),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "What’s the meaning of this sentence?",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Image(
                      height: 13.h,
                      image: AssetImage("assets/images/Person.png"),
                    ),
                  ),
                  Container(
                    // adding margin
                    margin: const EdgeInsets.all(15.0),

                    // adding padding
                    padding: EdgeInsets.all(3.0),

                    // height should be fixed for vertical scrolling
                    height: 13.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    // SingleChildScrollView should be
                    // wrapped in an Expanded Widget
                    child: Expanded(
                      // SingleChildScrollView contains a
                      // single child which is scrollable
                      child: SingleChildScrollView(
                        // for Vertical scrolling
                        scrollDirection: Axis.vertical,
                        child: Text(
                          " John, is my name",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0.sp,
                            letterSpacing: 2,
                            wordSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      rowTexts[0], // Display the first text from the list
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    ),
                    Text(
                      rowTexts[1], // Display the second text from the list
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    ),
                    Text(
                      rowTexts[2], // Display the third text from the list
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            checkAnswer("1");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedAnswer == "1"
                                ? (isAnswerCorrect ? Colors.green : Colors.red)
                                : Colors.blue,
                            minimumSize: const Size(100, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "1",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            checkAnswer("2");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedAnswer == "2"
                                ? (isAnswerCorrect ? Colors.green : Colors.red)
                                : Colors.blue,
                            minimumSize: const Size(100, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "2",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            checkAnswer("3");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedAnswer == "3"
                                ? (isAnswerCorrect ? Colors.green : Colors.red)
                                : Colors.blue,
                            minimumSize: const Size(100, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "3",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5.5,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TestPage6()),
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
