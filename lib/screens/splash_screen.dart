import 'package:flutter/material.dart';
import 'package:tutor_app/constants.dart';
import 'package:tutor_app/onBoarding_screen.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(milliseconds: 1500), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset('assets/images/splashIcon.png',fit: BoxFit.cover,)
            ),

          ],
        ),
      ),
    );
  }
}
