import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TestPage7 extends StatefulWidget {
  const TestPage7({Key? key}) : super(key: key);

  @override
  _TestPage7State createState() => _TestPage7State();
}

class _TestPage7State extends State<TestPage7> {
  String selectedAnswer = "";
  bool isAnswerCorrect = false;
  late VideoPlayerController _controller;
  bool fullscreen = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/videos/Sample1.mp4',
    )..initialize().then((_) {
        setState(() {});
      });
    _controller.addListener(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
    });
  }

  void checkAnswer(String answer) {
    setState(() {
      selectedAnswer = answer;
      if (answer == "Yes") {
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
                  "The correct answer is 'His'.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            if (isAnswerCorrect)
              const Text(
                "The correct answer is 'His'.",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                ),
              ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
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

  @override
  Widget build(BuildContext context) {
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
                          onPressed: () {},
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
                          width: 260,
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
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Video Possessive sentenses",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                showVideoOptions();
              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : const CircularProgressIndicator(),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Watch video and select on correct one",
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      )
                    ],
                  ),
                  Text(
                    "Question-I bothered you",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text("Answer-Bothered you",
                      style: TextStyle(fontSize: 15, color: Colors.green)),
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
                          checkAnswer("Yes");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedAnswer == "Yes"
                              ? (isAnswerCorrect ? Colors.green : Colors.red)
                              : Colors.blue,
                          minimumSize: const Size(100, 56),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          "Yes",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          checkAnswer("No");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedAnswer == "No"
                              ? (isAnswerCorrect ? Colors.green : Colors.red)
                              : Colors.blue,
                          minimumSize: const Size(100, 56),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          "No",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     checkAnswer("Our");
                      //   },
                      //   style: ElevatedButton.styleFrom(
                      //     backgroundColor: selectedAnswer == "Our"
                      //         ? (isAnswerCorrect ? Colors.green : Colors.red)
                      //         : Colors.blue,
                      //     minimumSize: const Size(100, 56),
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(15),
                      //     ),
                      //   ),
                      //   child: const Text(
                      //     "Our",
                      //     style: TextStyle(fontSize: 18, color: Colors.white),
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void showVideoOptions() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Video Options'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Play/Pause'),
                onTap: () {
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    _controller.play();
                  }
                  Navigator.pop(context);
                },
              ),
              // ListTile(
              //   title: Text('Stop'),
              //   onTap: () {
              //     _controller.seekTo(Duration.zero);
              //     _controller.pause();
              //     Navigator.pop(context);
              //   },
              // ),
              ListTile(
                title: const Text('Adjust Timing'),
                onTap: () {
                  // Add logic to adjust timing
                  // You can display another dialog or use a text field for input
                  Navigator.pop(context);
                },
              ),
              // ListTile(
              //   title: Text('Toggle Fullscreen'),
              //   onTap: () {
              //     setState(() {
              //       fullscreen = !fullscreen;
              //     });
              //     Navigator.pop(context);
              //   },
              // ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
