import 'package:flutter/material.dart';
import 'package:flutter_application_engpath/netflix.dart';
import 'package:flutter_application_engpath/ui/home/homepage.dart';
import 'package:flutter_application_engpath/ui/home/learn/learn.dart';
import 'package:flutter_application_engpath/ui/home/learn/learningpage1.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/testpage.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/testpage2.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/testpage3.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/testpage4.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/testpage5.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/testpage8.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/testpage9.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage/textpage6.dart';
import 'package:flutter_application_engpath/ui/home/learn/testpage7.dart';
import 'package:flutter_application_engpath/ui/login.dart';
import 'package:flutter_application_engpath/ui/onboard.dart';
import 'package:flutter_application_engpath/ui/profile/acheivement.dart';
import 'package:flutter_application_engpath/ui/profile/privacy.dart';
import 'package:flutter_application_engpath/ui/profile/profile.dart';
import 'package:flutter_application_engpath/ui/profile/setting.dart';
import 'package:flutter_application_engpath/ui/register/access.dart';
import 'package:flutter_application_engpath/ui/register/name.dart';
import 'package:flutter_application_engpath/ui/register/onboardregister.dart';
import 'package:flutter_application_engpath/ui/register/password.dart';
import 'package:flutter_application_engpath/ui/splash.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'ui/home/learn/learning3.dart';
import 'ui/home/learn/learningpage2.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),

      home: ChangeNotifierProvider(
        create: (context) => LoginModel(),
        child: MaterialApp(
          home: SplashScreen(),
        ),
      ),
      //  home: const Login()
      //home: SplashScreen1(),
      //home: SplashScreen(), // Your splash screen widget
      // routes: {
      //   '/login': (context) => Login(), // Your login screen widget
      // },
      // home: TestPage6(),
      //home: TestPage9(),

      //home: const Name());
      //home: const Access());
      //home: Password());
      //home: const Learn()
      // home: const learningpage1()
      //home: const learningpage2(),
      //home: const learningpage3(),
      //home: TestPage1(),
      //home: TestPage2(),
      //home: TestPage4());
      // home: TestPage8());
      //home: Profile(),
      //home: Home(),
      // home: Setting(),
      //home: Achievement(),
      //home: privacy(),
    );
    //home: TestPage3());
    //home: onboardregister());
    //      home: onboard());
  }
}
