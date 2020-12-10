import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:tutor_app/auth/auth_alert_screen.dart';
import 'package:tutor_app/screens/schedule_lesson_screen.dart';
import '../constants.dart';

class TutorDetailsScreen extends StatefulWidget {
  @override
  _TutorDetailsScreenState createState() => _TutorDetailsScreenState();
}

class _TutorDetailsScreenState extends State<TutorDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: KDefaultPadding,right: KDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 120,
                          height: 120,
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Image.asset(
                            'assets/images/proImg.png',
                            width: 70.0,
                            height: 70.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Center(
                        child: Text('John Doe,',
                            style:  GoogleFonts.lato(
                                color: KTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Center(
                          child: Text('Sans Francisco, CA,',
                              style:  GoogleFonts.lato(
                                  color: KTextColor,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14.0)),
                        ),
                      ),
                    /*  Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Center(
                          child: SmoothStarRating(
                              allowHalfRating: false,
                              onRated: (v) {
                              },
                              starCount: 5,
                              rating: 4.0,
                              size: 25.0,
                              isReadOnly:true,
                              color: Colors.yellow,
                              borderColor: Colors.grey[200],
                              spacing:0.0
                          ),
                        ),
                      ),*/
                      Padding(
                        padding: const EdgeInsets.only(top: KDefaultPadding,bottom: KDefaultPadding,),
                        child: Text(
                          'Hi! My name is john, i am a creative geek from San'
                          'Francisco, CA. I enjoy creating eye and solutions for'
                          'web and mobile apps. Contact me at john@mail.com',
                          style: GoogleFonts.lato(
                              color: Colors.grey[400],
                              height: 1.4, //You can set your custom height here
                              fontSize: 14.0),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(KDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('My Skills',
                      style:  GoogleFonts.lato(
                          color: KTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  SizedBox(height: 16.0,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SkillsWidget(
                          skill: "Interface",
                        ),
                        SizedBox(width: 16.0,),
                        SkillsWidget(
                          skill: "Illustration",
                        ),
                        SizedBox(width: 16.0,),
                        SkillsWidget(
                          skill: "Graphics",
                        ),
                        SizedBox(width: 16.0,),
                        SkillsWidget(
                          skill: "UI",
                        ),
                        SizedBox(width: 16.0,),
                        SkillsWidget(
                          skill: "Web",
                        ),
                        SizedBox(width: 16.0,),
                        SkillsWidget(
                          skill: "Figma",
                        ),
                      ],
                    ),
                  ),

                  ListTile(
                    title: Text('My Team',
                        style:  GoogleFonts.lato(
                            color: KTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0)),
                    trailing: Text('See all',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/circleAvtar1.png'),
                      Image.asset('assets/images/ct2.png'),
                      Image.asset('assets/images/ctthree.png'),
                      Image.asset('assets/images/ct2.png'),
                      Image.asset('assets/images/ctone.png'),

                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hourly Charge',
                            style:  GoogleFonts.lato(
                                color: Colors.grey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Text(
                              '\$100 / hr',
                              style:  GoogleFonts.lato(
                                  color: KTextColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 60.0,),
                      Expanded(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          color: KButtonColor,
                          textColor: Colors.white,
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AuthAlert()));
                          },
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6.0,bottom: 6.0),
                                child: Text(
                            'Engage Tutor',
                            style:
                                  TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 26.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SkillsWidget extends StatelessWidget {
  final String skill;
  SkillsWidget({this.skill});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black12, width: 1),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 8.0,bottom: 8.0),
        child: Text(
          skill,
          style:  GoogleFonts.lato(fontSize: 16.0, color: Colors.grey),
        ),
      ),
    );
  }
}
