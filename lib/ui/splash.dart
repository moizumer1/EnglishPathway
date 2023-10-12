import 'dart:async';
import 'package:flutter_application_engpath/netflix.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/onboard.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Color _backgroundColor;
  late bool _showSecondLogo;

  @override
  void initState() {
    super.initState();
    _backgroundColor = Colors.white; // Initial white background
    _showSecondLogo = false;

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1), // Total animation duration
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Transition to blue background and show the second logo
        setState(() {
          _backgroundColor = Colors.blue;
          _showSecondLogo = true;
        });
        _controller.reset();
        _controller.forward();

        // Navigate to the home screen when the animation completes
        // Future.delayed(Duration(seconds: 3), () {
        //   Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) => onboard(),
        //   ));
        // });
      }
    });

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          _backgroundColor, // Background color during the animation
      body: Center(
        child: _showSecondLogo
            ? SplashScreen1()
            : RotationTransition(
                turns: _controller, // Apply rotation to the first logo
                child: Image.asset(
                  'assets/images/icon.png', // Your first logo image
                  width: 100, // Adjust the logo size as needed
                  height: 100,
                ),
              ),
      ),
    );
  }
}
