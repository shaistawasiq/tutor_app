import 'package:flutter/material.dart';
import 'package:tutor_app/auth/logIn_screen.dart';
import 'package:tutor_app/screens/confirm_lesson_details_screen.dart';

import '../constants.dart';
class AuthAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 80.0,
              backgroundColor: KButtonColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Image.asset('assets/images/appIconWhite.png',width: 80.0,height: 80.0,color: Colors.white,)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 40.0),

            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              color:KButtonColor,
              textColor: Colors.white,
              padding: EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));

              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 6.0,top: 6.0),
                child: Center(child: Text('SignIn To Continue',style: TextStyle(color: Colors.white,fontSize: 16.0),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
