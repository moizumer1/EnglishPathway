import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';

class Achievement extends StatelessWidget {
  const Achievement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Achievement",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              Padding(
                padding: const EdgeInsets.all(
                    18.0), // Add padding to the green container
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      //width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircularPercentIndicator(
                                radius: 35,
                                lineWidth: 8,
                                percent: 0.5,
                                progressColor: Colors.green,
                                center: Text(
                                  "50%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width: 55.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Total Achivements : 20",
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Great job, John! Complete your achievements now",
                                        style: TextStyle(fontSize: 12.sp),
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      //width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 64, 152, 224),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage(
                                  "assets/images/acheive.png",
                                ),
                                radius: 35,
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: 38.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Studious",
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "You have completed this lesson 10 times.",
                                      style: TextStyle(),
                                      textAlign: TextAlign.start,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3.w,
                              child: Image(
                                image: AssetImage("assets/images/stars.png"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.w,
                    ),
                    Container(
                      //width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 102, 226, 106),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage(
                                  "assets/images/acheive.png",
                                ),
                                radius: 35,
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 38.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Quickie",
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "You have completed this lesson 10 times.",
                                      style: TextStyle(),
                                      textAlign: TextAlign.start,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3.w,
                              child: Image(
                                image: AssetImage("assets/images/stars.png"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.w,
                    ),
                    Container(
                      //width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 214, 68),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage(
                                  "assets/images/acheive.png",
                                ),
                                radius: 35,
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 38.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ambitious",
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "You have completed this lesson 10 times.",
                                      style: TextStyle(),
                                      textAlign: TextAlign.start,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                              child: Image(
                                image: AssetImage("assets/images/stars.png"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.w,
                    ),
                    Container(
                      //width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 147, 68, 231),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage(
                                  "assets/images/acheive.png",
                                ),
                                radius: 35,
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 38.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ambitious",
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "You have completed this lesson 10 times.",
                                      style: TextStyle(),
                                      textAlign: TextAlign.start,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                              child: Image(
                                image: AssetImage("assets/images/stars.png"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
