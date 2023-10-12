import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/icons.dart';
import 'package:flutter_application_engpath/ui/home/learn/learn.dart';
import 'package:flutter_application_engpath/ui/home/search.dart';
import 'package:flutter_application_engpath/ui/profile/acheivement.dart';
import 'package:flutter_application_engpath/ui/profile/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Learn(),
    Search(),
    Achievement(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true, // Show labels for the selected tab
          showUnselectedLabels: true, // Show labels for unselected tabs
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.learnicon,
                size: 25,
              ),
              label: 'Learn', // Add a label for the first item
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.search,
                size: 25,
              ),
              label: 'Search', // Add a label for the second item
              backgroundColor: Colors.yellow,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.medal,
                size: 25,
              ),
              label: 'Acheivement', // Add a label for the third item
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.profileicon,
                size: 25,
              ),
              label: 'Profile', // Add a label for the third item
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType
              .fixed, // Use fixed type to disable shifting animation
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5,
        ),
      ),
    );
  }
}
