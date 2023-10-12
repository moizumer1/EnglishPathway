import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/profile/profile.dart';

class privacy extends StatelessWidget {
  const privacy({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Background2.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 55),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Privacy",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 25),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Column(
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
                                    "assets/images/undraw_People_re_8spw.png"),
                                radius: 40,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "John Doe",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text("Newbie")
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Name"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(36),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(36),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2,
                              )),
                          hintText: "John Doe",
                          labelText: "John Doe"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Username"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(36),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(36),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2,
                              )),
                          suffixIcon: IconButton(
                              onPressed: (() {}),
                              icon: const Icon(Icons.remove_red_eye_outlined)),
                          hintText: "JohnDoe",
                          labelText: "JohnDoe"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Email"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(36),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(36),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2,
                              )),
                          hintText: "John@gmail.",
                          labelText: "John@gmail.com"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Enter your Password"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(36),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(36),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2,
                              )),
                          suffixIcon: IconButton(
                              onPressed: (() {}),
                              icon: const Icon(Icons.remove_red_eye_outlined)),
                          hintText: "Password",
                          labelText: "Password"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Age"),
                              Text(
                                "21",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text("Joined From"),
                              Text(
                                " 21Jan 2021",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
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
    );
  }
}
