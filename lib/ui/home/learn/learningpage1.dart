import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/home/homepage.dart';
import 'package:flutter_application_engpath/ui/home/learn/learn.dart';
import 'package:flutter_application_engpath/ui/home/learn/learningpage2.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class learningpage1 extends StatelessWidget {
  const learningpage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 4.h,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12, //New
                              blurRadius: 6.0,
                            )
                          ],
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.black,
                        )),
                  ),
                  SizedBox(
                    width: 185.sp,
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12, //New
                            blurRadius: 6.0,
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.menu,
                        color: Colors.black,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 30.h,
                      width: 80.w,
                      decoration: const BoxDecoration(
                          // color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/undraw_true_friends_c94g.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Beginner -A1",
                              style: TextStyle(fontSize: 20.sp),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          LinearPercentIndicator(
                            barRadius: const Radius.circular(20),
                            lineHeight: 10,
                            percent: 0.7,
                            progressColor: Colors.green,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              learningpage2()),
                                    );
                                  },
                                  child: Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              border: Border.all(
                                                  color: Colors.green,
                                                  width: 2.0,
                                                  style: BorderStyle.solid),
                                            ),
                                            child: const CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  "assets/images/undraw_People_re_8spw.png"),
                                              radius: 30,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Unit 1-People",
                                                      style: TextStyle(
                                                          fontSize: 13.sp),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 50.w,
                                                child: LinearPercentIndicator(
                                                  barRadius:
                                                      Radius.circular(20),
                                                  lineHeight: 8,
                                                  percent: 0.6,
                                                  progressColor: Colors.green,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                            child: IconButton(
                                                iconSize: 25.sp,
                                                onPressed: () {},
                                                icon: Icon(Icons.download)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              learningpage2()),
                                    );
                                  },
                                  child: Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              border: Border.all(
                                                  color: Colors.green,
                                                  width: 2.0,
                                                  style: BorderStyle.solid),
                                            ),
                                            child: const CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  "assets/images/undraw_People_re_8spw.png"),
                                              radius: 30,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Unit 1-People",
                                                      style: TextStyle(
                                                          fontSize: 13.sp),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 50.w,
                                                child: LinearPercentIndicator(
                                                  barRadius:
                                                      Radius.circular(20),
                                                  lineHeight: 8,
                                                  percent: 0.6,
                                                  progressColor: Colors.green,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                            child: IconButton(
                                                iconSize: 25.sp,
                                                onPressed: () {},
                                                icon: Icon(Icons.download)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              learningpage2()),
                                    );
                                  },
                                  child: Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              border: Border.all(
                                                  color: Colors.green,
                                                  width: 2.0,
                                                  style: BorderStyle.solid),
                                            ),
                                            child: const CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  "assets/images/undraw_People_re_8spw.png"),
                                              radius: 30,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Unit 1-People",
                                                      style: TextStyle(
                                                          fontSize: 13.sp),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 50.w,
                                                child: LinearPercentIndicator(
                                                  barRadius:
                                                      Radius.circular(20),
                                                  lineHeight: 8,
                                                  percent: 0.6,
                                                  progressColor: Colors.green,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                            child: IconButton(
                                                iconSize: 25.sp,
                                                onPressed: () {},
                                                icon: Icon(Icons.download)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      );
    });
  }
}
