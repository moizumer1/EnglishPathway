import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/login.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 500,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        color: Colors.white,
      ),
      child: Center(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 5,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            height: 20,
          ),
          const Text(
            "Logout Account",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          const Text("Would you like to Logout?"),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: const Size(350, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              "LogOut",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }
}
