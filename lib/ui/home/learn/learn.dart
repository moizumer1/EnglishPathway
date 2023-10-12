import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/home/customtilewidget.dart';
import 'package:flutter_application_engpath/ui/home/learn/learningpage1.dart';
import 'package:flutter_application_engpath/ui/home/learn/learnrecord.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';

class Learn extends StatelessWidget {
  const Learn({Key? key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return SafeArea(
          child: Scaffold(
        backgroundColor: const Color(0xff3DB2FF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Johny!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "What local language\nWould you like to learn?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0.sp,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.47,
                    decoration: const BoxDecoration(
                      //color: Colors.pink,
                      image: DecorationImage(
                        image: AssetImage("assets/images/learnpage.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.0.h,
              ),
              Container(
                //height: 73.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12.sp,
                    ),
                    Container(
                      height: 1.h,
                      width: 80.sp,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Language being learned",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.sp),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => learningpagere()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                                style: BorderStyle.solid),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Container(
                                    height: 10.h,
                                    width: 45.sp,
                                    //color: Colors.black,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/micro.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          "Recording",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width: 60.w,
                                        child: LinearPercentIndicator(
                                          barRadius: const Radius.circular(20),
                                          lineHeight: 10,
                                          percent: 0.8,
                                          progressColor: Colors.green,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                // const SizedBox(
                                //   width: 20,
                                // ),
                                Text(
                                  "80%",
                                  style: TextStyle(fontSize: 13.0.sp),
                                )
                                // SizedBox(
                                //   height: 10,
                                //   child: IconButton(
                                //       iconSize: 35,
                                //       onPressed: () {},
                                //       icon: const Icon(Icons.download)),
                                // )
                              ],
                            ),
                          ),
                        ),
                        // child: Center(
                        //   child: CustomListTile(
                        //     imageUrl: 'assets/images/learnpage.png',
                        //     title: 'People 1',
                        //     progress: 0.15,
                        //   ),
                        // ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => learningpage1()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                                style: BorderStyle.solid),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Container(
                                    height: 10.h,
                                    width: 45.sp,
                                    //color: Colors.black,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/undraw_true_friends_c94g.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          "Beginer -A1",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width: 60.w,
                                        child: LinearPercentIndicator(
                                          barRadius: const Radius.circular(20),
                                          lineHeight: 10,
                                          percent: 0.6,
                                          progressColor: Colors.green,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                // const SizedBox(
                                //   width: 20,
                                // ),
                                Text(
                                  "50%",
                                  style: TextStyle(fontSize: 13.0.sp),
                                )
                                // SizedBox(
                                //   height: 10,
                                //   child: IconButton(
                                //       iconSize: 35,
                                //       onPressed: () {},
                                //       icon: const Icon(Icons.download)),
                                // )
                              ],
                            ),
                          ),
                        ),
                        // child: Center(
                        //   child: CustomListTile(
                        //     imageUrl: 'assets/images/learnpage.png',
                        //     title: 'People 1',
                        //     progress: 0.15,
                        //   ),
                        // ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => learningpage1()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                                style: BorderStyle.solid),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Container(
                                    height: 10.h,
                                    width: 45.sp,
                                    //color: Colors.black,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/teacher.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          "Beginer -A2",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width: 60.w,
                                        child: LinearPercentIndicator(
                                          barRadius: const Radius.circular(20),
                                          lineHeight: 10,
                                          percent: 0.6,
                                          progressColor: Colors.green,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                // const SizedBox(
                                //   width: 20,
                                // ),
                                Text(
                                  "50%",
                                  style: TextStyle(fontSize: 13.0.sp),
                                )
                                // SizedBox(
                                //   height: 10,
                                //   child: IconButton(
                                //       iconSize: 35,
                                //       onPressed: () {},
                                //       icon: const Icon(Icons.download)),
                                // )
                              ],
                            ),
                          ),
                        ),
                        // child: Center(
                        //   child: CustomListTile(
                        //     imageUrl: 'assets/images/learnpage.png',
                        //     title: 'People 1',
                        //     progress: 0.15,
                        //   ),
                        // ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => learningpage1()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                                style: BorderStyle.solid),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Container(
                                    height: 10.h,
                                    width: 45.sp,
                                    //color: Colors.black,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/undraw_true_friends_c94g.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          "Advanced -A2",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width: 60.w,
                                        child: LinearPercentIndicator(
                                          barRadius: const Radius.circular(20),
                                          lineHeight: 10,
                                          percent: 0.6,
                                          progressColor: Colors.green,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                // const SizedBox(
                                //   width: 20,
                                // ),
                                Text(
                                  "50%",
                                  style: TextStyle(fontSize: 13.0.sp),
                                )
                                // SizedBox(
                                //   height: 10,
                                //   child: IconButton(
                                //       iconSize: 35,
                                //       onPressed: () {},
                                //       icon: const Icon(Icons.download)),
                                // )
                              ],
                            ),
                          ),
                        ),
                        // child: Center(
                        //   child: CustomListTile(
                        //     imageUrl: 'assets/images/learnpage.png',
                        //     title: 'People 1',
                        //     progress: 0.15,
                        //   ),
                        // ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ));
    });
  }
}
