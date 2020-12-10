import 'package:flutter/material.dart';
import 'package:tutor_app/onBoarding_screen.dart';
import 'package:tutor_app/screens/home_screen.dart';
import 'package:tutor_app/screens/profile_screen.dart';
import 'package:tutor_app/screens/search_tutor_screen.dart';
import 'package:tutor_app/screens/splash_screen.dart';
import 'package:tutor_app/screens/tutors_details-screen.dart';
import 'package:tutor_app/widgets/bottom_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
      routes: {
        '/SplashScreen': (context) => SplashScreen(),
        '/OnBoardingScreens': (context) => OnBoardingPage(),
        '/BottomNav' :(context) =>BottomNav(),
        '/HomeScreen' :(context) =>HomeScreen(),
        '/ProfileScreen' :(context) =>ProfileScreen(),
        '/SearchTutorScreen' :(context) =>SearchTutorScreen(),
        '/TutorDetailsScreen' :(context) =>TutorDetailsScreen(),



      },
    );
  }
}


