import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double progress; // Progress as a value between 0 and 1

  CustomListTile({
    required this.imageUrl,
    required this.title,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.grey, width: 2.0, style: BorderStyle.solid),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(
            color: Colors.brown,
            width: 2.0,
          ),
        ),
        leading: Container(
          //color: Colors.black,
          height: 110,
          width: 60,
          child: CircleAvatar(
            backgroundImage: AssetImage(imageUrl),
          ),
        ),
        // CircleAvatar(
        //   radius: 40,
        //   backgroundImage: AssetImage(imageUrl),
        // ),
        title: Text(title),
        subtitle: Stack(
          children: [
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.yellow, // Transparent background
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '${(progress * 100).toStringAsFixed(1)}%',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
