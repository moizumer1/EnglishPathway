import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/home/homepage.dart';
import 'package:flutter_application_engpath/ui/home/learn/learning3.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class TestPage8 extends StatefulWidget {
  const TestPage8({Key? key}) : super(key: key);

  @override
  _TestPage8State createState() => _TestPage8State();
}

class _TestPage8State extends State<TestPage8> {
  stt.SpeechToText _speech = stt.SpeechToText();
  TextEditingController textEditingController = TextEditingController();
  String correctAnswer = "Lunch"; // Set the correct answer here
  bool isListening = false;
  late AlertDialog listeningDialog; // Declare an AlertDialog variable

  void checkAnswer() {
    String userAnswer = textEditingController.text;
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
        padding: const EdgeInsets.all(8.0),
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
            if (!isAnswerCorrect)
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
            if (isAnswerCorrect)
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
      duration: const Duration(seconds: 5),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // Function to show the listening dialog
  void showListeningDialog(BuildContext context) {
    listeningDialog = AlertDialog(
      title: Text("Listening..."),
      content: CircularProgressIndicator(),
      actions: [
        TextButton(
          onPressed: () {
            stopListeningAndCloseDialog(); // Stop listening and close the dialog
          },
          child: Text("Stop Listening"),
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return listeningDialog;
      },
    );
  }

  // Function to stop listening and close the dialog
  void stopListeningAndCloseDialog() async {
    if (_speech.isListening) {
      await _speech.stop();
    }
    Navigator.of(context).pop(); // Close the dialog
    setState(() {
      isListening = false;
    });
  }

  // Toggle listening
  void toggleListening() {
    if (_speech.isListening) {
      stopListeningAndCloseDialog(); // Stop listening and close the dialog
    } else {
      startListening();
      setState(() {
        isListening = true;
      });
      showListeningDialog(context); // Show the dialog
    }
  }

  void startListening() async {
    if (!_speech.isListening) {
      bool available = await _speech.initialize(
        onStatus: (status) {
          print('Listening status: $status');
        },
        onError: (error) {
          print('Error: $error');
        },
      );

      if (available) {
        _speech.listen(
          onResult: (result) {
            setState(() {
              textEditingController.text = result.recognizedWords ?? '';
            });
          },
        );
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _speech.initialize(
      onError: (error) => print('Error: $error'),
      onStatus: (status) => print('Status: $status'),
    );
  }

  @override
  void dispose() {
    _speech.cancel();
    textEditingController.dispose();
    super.dispose();
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
              SizedBox(height: 2.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Speak The correct Word",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "I usually have ___ at the park.",
                  style: TextStyle(fontSize: 19.sp),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Lunch",
                    style: TextStyle(fontSize: 3.h),
                  ),
                  Text(
                    "Pogo",
                    style: TextStyle(fontSize: 3.h),
                  ),
                  Text(
                    "Hammer",
                    style: TextStyle(fontSize: 3.h),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              ElevatedButton(
                onPressed: toggleListening,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isListening ? Colors.red : Colors.blue,
                  minimumSize: const Size(40, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Icon(
                  isListening ? Icons.stop : Icons.mic,
                  size: 36,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 12, left: 12),
                child: Column(
                  children: [
                    TextField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                        hintText: "Enter your answer",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
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
                        "Check",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
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
                  "Submit and End",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      );
    });
  }
}
