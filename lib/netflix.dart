import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/ui/onboard.dart';
import 'package:google_fonts/google_fonts.dart'; // Import the google_fonts package

class SplashScreen1 extends StatefulWidget {
  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late String _displayText = '';

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Faster animation (1 second)
    );

    _scaleAnimation = Tween<double>(begin: 1.2, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.8,
            curve: Curves
                .easeInOut), // Scale down from 1.2 to 1.0 in the first 70% of the animation duration
      ),
    );

    // Start the animation when the screen is loaded
    _controller.forward();

    // Simulate a delay for the splash screen (3 seconds in this example)
    Timer(
      Duration(seconds: 3), // Reduce the delay to 3 seconds
      () => _animateText(),
    );
  }

  void _animateText() {
    const String fullText = 'English\nPathway';
    const Duration letterDuration =
        Duration(milliseconds: 50); // Reduce the letter animation duration

    for (int i = 0; i < fullText.length; i++) {
      Future.delayed(letterDuration * i, () {
        setState(() {
          _displayText = fullText.substring(0, i + 1);
        });

        if (i == fullText.length - 1) {
          // Navigate to the next screen after the text animation is complete
          Future.delayed(Duration(seconds: 2), () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => onboard(),
            ));
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set the background color to blue
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ScaleTransition(
              scale: _scaleAnimation,
              child: Image.asset(
                'assets/images/icon.png',
                width: 100.0,
                height: 100.0,
              ),
            ),
            SizedBox(width: 16.0),
            Text(
              _displayText,
              style: GoogleFonts.poppins(
                // Use GoogleFonts.poppins for Poppins font
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0, // Increase font size
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
