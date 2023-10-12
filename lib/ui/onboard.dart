import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/login.dart';
import 'package:flutter_application_engpath/ui/register/onboardregister.dart';
import 'package:sizer/sizer.dart';

class onboard extends StatelessWidget {
  const onboard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              height: 40.0.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Ellipse 2.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 18.h,
                width: 70.w,
                decoration: const BoxDecoration(
                  //color: Colors.amberAccent,
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo1.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                //color: Colors.amber,
                width: 390.w,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Learn the local Language",
                        style: TextStyle(fontSize: 19.sp),
                      ),
                      Text(
                        "Free!",
                        style: TextStyle(
                            fontSize: 8.w, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Center(
                        child: Text(
                          "Learn all local languages interactively at your fingertips!",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          child: Image(
                              height: 1.5.h,
                              image: AssetImage("assets/images/Starter.png")),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => onboardregister()),
                                );
                              },
                              child: const Text(
                                "Register",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 18),
                              )),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              minimumSize: const Size(150, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
