import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutor_app/auth/register_screen.dart';
import 'package:tutor_app/screens/schedule_lesson_screen.dart';

import '../constants.dart';
class LoginScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<LoginScreen> {
  String userEmail, userPassword;
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      ],
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    Text('EMAIL',
                        style: TextStyle(
                          fontFamily: "Product Sans",
                          fontSize: 12.0,
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 12.0,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          userEmail = value;
                        });
                      },
                      decoration: new InputDecoration(
                          border:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(90.0)),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              )
                          ),
                          disabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.transparent)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.transparent)),
                          labelText: "Email",
                          hintStyle: TextStyle(
                            fontFamily: "Product Sans",
                            fontSize: 16.0,
                            color: Color(0xffF5F5F5),),
                          fillColor:  Color(0xffF5F5F5),
                          filled: true,

                        //fillColor: Colors.green
                      ),
                      validator: (emailValue) {
                        if (emailValue.isEmpty) {
                          return "Email cannot be empty";
                        }

                        String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
                            "\\@" +
                            "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
                            "(" +
                            "\\." +
                            "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
                            ")+";
                        RegExp regExp = new RegExp(p);

                        if (regExp.hasMatch(emailValue)) {
// So, the email is valid
                          return null;
                        }

                        return 'This is not a valid email';
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: new TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text('Password',
                          style: TextStyle(
                            fontFamily: "Product Sans",
                            fontSize: 12.0,
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    TextFormField(
                      onChanged: (pwdValue) {
                        setState(() {
                          userPassword = pwdValue;
                        });
                      },
                      decoration: new InputDecoration(
                        border:  OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(90.0)),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            )
                        ),
                        disabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.transparent)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.transparent)),
                        labelText: "Password",
                        hintStyle: TextStyle(
                          fontFamily: "Product Sans",
                          fontSize: 16.0,
                          color: Color(0xffF5F5F5),),
                        fillColor:  Color(0xffF5F5F5),
                        filled: true,

                        //fillColor: Colors.green
                      ),

                      validator: (val) {
                        if (val.isEmpty) {
                          return "password is not empty";
                        }
                        if (val.length < 8) {
                          return "password is not less than 8 characters";
                        } else {
                          return null;
                        }
                      },
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      style: new TextStyle(),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                          onPressed: () {
                          //  navigateToForgetPassword(context);
                          },
                          child: Text(
                            "Forget Password?",
                            style: GoogleFonts.lato(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color:  KButtonColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: FlatButton(
                          minWidth: size.width,
                          height: 65.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          color: KButtonColor,
                          onPressed: () {

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ScheduleLessonScreen()));

                            /*if (formKey.currentState.validate()) {
                              formKey.currentState.save();
                              _signIn(email: userEmail, password: userPassword);


                              print("create account");
                            }*/
                            //Navigator.pushNamed(context, '/QuickSurvey');
                          },
                          child: Text('Sign in',
                              style: GoogleFonts.lato(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              )),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: FlatButton.icon(
                        minWidth: size.width,
                        height: 65.0,
                        onPressed: () {
                          //  navigateToResetPassword(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ScheduleLessonScreen()));

                        },
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.black,
                        ),
                        label: Text('Sign up with Facebook',
                            style: GoogleFonts.lato(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color:  KButtonColor,
                            )),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.grey)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Text('Dont have an account?',
                              style: GoogleFonts.lato(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color:  KButtonColor,
                              )),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                            ),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterNewScreen()));

                              },
                              child: Text("Register",
                                  style: GoogleFonts.lato(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color:  KButtonColor,
                                  )),
                            ))
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

}


