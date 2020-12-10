import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutor_app/screens/schedule_lesson_screen.dart';

import '../constants.dart';
class RegisterNewScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<RegisterNewScreen> {
  String userEmail, userPassword;
  final formKey = GlobalKey<FormState>();
  String phoneNumber;
  String userName;
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                Text('FULL NAME',
                    style: TextStyle(
                      fontFamily: "Product Sans",
                      fontSize: 12.0,
                      color: Colors.black,
                    )),
                SizedBox(
                  height: 12.0,
                ),
                TextFormField(
                  controller: _controller,
                  onChanged: (value) {
                    setState(() {
                      userName = value;
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
                      return "name is not empty";
                    }
                    if (val.length < 3) {
                      return "name is not less than 3 characters";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  style: new TextStyle(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text('User EMAIL',
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
                  controller: _controller,
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
                    labelText: "Password",
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
                  child: Text('USER PASSWORD',
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
                  controller: _controller,
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
                Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: FlatButton(
                      minWidth: size.width,
                      height: 65.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          ),
                      color: KButtonColor,
                      onPressed: () {
                       /* if (formKey.currentState.validate()) {
                          formKey.currentState.save();
                          addNewUser(userEmail, userPassword);
                          _controller.clear();
                          print("create account");
                        }*/
                        // Navigator.pushReplacementNamed(context, '/LogIn');
                        Navigator.pop(context);
                      },
                      child:
                      Text('Register',   style: GoogleFonts.lato(
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ScheduleLessonScreen()));

                    },
                    icon: Icon(
                      FontAwesomeIcons.facebook,
                      color: KButtonColor,
                    ),
                    label: Text('Sign up with Facebook',
                       style: GoogleFonts.lato(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: KTextColor,
                        )),

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: BorderSide(color: Colors.grey)),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, right: 10, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account? ',
                              style: GoogleFonts.lato(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: KTextColor,
                              )),
                          Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Login',
                                    style: GoogleFonts.lato(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: KTextColor,
                                    )),))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  }

  // create new user
