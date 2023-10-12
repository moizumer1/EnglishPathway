import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/login.dart';
import 'package:flutter_application_engpath/ui/profile/acheivement.dart';
import 'package:flutter_application_engpath/ui/profile/acheivement2.dart';
import 'package:flutter_application_engpath/ui/profile/logout.dart';
import 'package:flutter_application_engpath/ui/profile/privacy.dart';
import 'package:flutter_application_engpath/ui/profile/setting.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Vector3.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 55),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "My Profile",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 25),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: Colors.green,
                                      width: 2.0,
                                      style: BorderStyle.solid),
                                ),
                                child: const CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "assets/images/undraw_People_re_8spw.png",
                                  ),
                                  radius: 40,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "John Doe",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          width: 60,
                                        ),
                                        SizedBox(
                                          height: 32,
                                          width: 32,
                                          child: Image(
                                              image: AssetImage(
                                                  "assets/images/NotePencil.png")),
                                        )
                                      ],
                                    ),
                                    Text("Newbie")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        const Divider(
                          height: 0,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "2+Hours",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Total Learn",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 2,
                              color: Colors.grey,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "20",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Achievement",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 2,
                              color: Colors.grey,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "2",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Languages",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Dashboard"),
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Achievement()),
                                    );
                                  },
                                  child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Achievement2()),
                                      );
                                    },
                                    leading: const CircleAvatar(
                                        backgroundColor: Colors.yellow,
                                        child: SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: Image(
                                            image: AssetImage(
                                                "assets/images/trophy.png"),
                                            fit: BoxFit.contain,
                                          ),
                                        )),
                                    title: const Text(
                                      'Achievements',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const privacy()),
                                    );
                                  },
                                  child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const privacy()),
                                      );
                                    },
                                    leading: const CircleAvatar(
                                        backgroundColor: Colors.brown,
                                        child: Center(
                                          child: SizedBox(
                                            height: 20,
                                            width: 30,
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/images/lock.png"),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        )),
                                    title: const Text(
                                      'Privacy',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Setting()),
                                    );
                                  },
                                  child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Setting()),
                                      );
                                    },
                                    leading: const CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        child: Icon(
                                          Icons.settings,
                                          color: Colors.white,
                                        )),
                                    title: const Text(
                                      'Settings',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("My Accounts"),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(25))),
                                        context: context,
                                        builder: (BuildContext mContext) {
                                          return const Logout();
                                        });
                                  },
                                  child: const Text(
                                    'Switch to Another Account',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(25))),
                                        context: context,
                                        builder: (BuildContext mContext) {
                                          return const Logout();
                                        });
                                  },
                                  child: const Text(
                                    'Logout Account',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                )
                              ],
                            ),
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
    );
  }
}
