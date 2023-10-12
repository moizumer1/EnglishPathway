import 'package:flutter/material.dart';

class ToggleSwitchWidget extends StatefulWidget {
  @override
  _ToggleSwitchWidgetState createState() => _ToggleSwitchWidgetState();
}

class _ToggleSwitchWidgetState extends State<ToggleSwitchWidget> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 5,
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
      ),
    );
  }
}
