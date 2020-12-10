import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tutor_app/constants.dart';
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(KDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 120,
                    height: 120,
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: KImageBackgroundColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child:  Image.asset('assets/images/avtar.png',width: 70.0,height: 70.0,fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(height: 16.0,),
                Center(
                  child: Text('Husnain Asghar,',
                      style:  GoogleFonts.lato(
                          color: KTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text('Lahore,PAk',
                        style:  GoogleFonts.lato(
                            color: KTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0)),
                  ),
                ),
                SizedBox(height: 16.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Column(
                    children: [
                      Text('24', style:  GoogleFonts.lato(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0)),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child:   Text('Shots', style:  GoogleFonts.lato(
                            color: Colors.black12,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0)),
                      ),

                    ],
                  ),
                   SizedBox(width: 16.0,),
                   VerticalDivider(),
                    SizedBox(width: 16.0,),
                    Column(
                      children: [
                        Text('112', style:  GoogleFonts.lato(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0)),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child:   Text('Projects', style:  GoogleFonts.lato(
                              color: Colors.black12,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0)),
                        ),

                      ],
                    ),
                    SizedBox(width: 16.0,),
                    VerticalDivider(),
                    SizedBox(width: 16.0,),
                    Column(
                      children: [
                        Text('82K', style:  GoogleFonts.lato(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0)),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child:   Text('Followers', style:  GoogleFonts.lato(
                              color: Colors.black12,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0)),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30.0,),
                Text('Favorite Courses',
                    style:  GoogleFonts.lato(
                        color: KTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0)),
                SizedBox(height: 16.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 4.0,
                      percent: 0.8,
                      center: new Image.asset('assets/images/one.png',height: 40.0,width: 40.0,),
                      backgroundColor: Colors.grey,
                      progressColor: Colors.yellow,
                      footer:  Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: new Text("Chemistry",style:  GoogleFonts.lato(
                            color: KTextColor,
                            fontSize: 16.0)),
                      ),
                    ),
                    new CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 4.0,
                      percent: 1.0,
                      center: new Image.asset('assets/images/two.png',height: 40.0,width: 40.0,),
                      backgroundColor: Colors.grey,
                      progressColor: KButtonColor,
                      footer:  Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: new Text("Physics",style:  GoogleFonts.lato(
                            color: KTextColor,
                            fontSize: 16.0)),),
                      ),

                    new CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 4.0,
                      percent: 0.3,
                      center: new Image.asset('assets/images/three.png',height: 40.0,width: 40.0,),
                      backgroundColor: Colors.grey,
                      progressColor: Colors.lightBlue,
                      footer:  Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: new Text("Mathematics",style:  GoogleFonts.lato(
                            color: KTextColor,
                            fontSize: 16.0)),
                      ),
                    ),
                    new CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 4.0,
                      percent: 0.5,
                      center: new Image.asset('assets/images/four.png',height: 40.0,width: 40.0,),
                      backgroundColor: Colors.grey,
                      progressColor: Colors.green,
                      footer:  Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: new Text("Bio",style:  GoogleFonts.lato(
                            color: KTextColor,
                            fontSize: 16.0)),
                      ),
                    ),
                  ],

                ),
                SizedBox(height: 30.0,),
                Text('Activities',
                    style:  GoogleFonts.lato(
                        color: KTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0)),
                SizedBox(height: 16.0,),
                ActivitiesWidget(img: 'assets/images/two.png',label:'you have got 100 from the math exam.' ,time: '1m ago',),
                ActivitiesWidget(img: 'assets/images/two.png',label:'you have got 100 from the math exam.' ,time: '1h ago',),
                ActivitiesWidget(img: 'assets/images/two.png',label:'you have got 100 from the math exam.' ,time: '2h ago',),

                SizedBox(height: 30.0,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ActivitiesWidget extends StatelessWidget {
  final String img;
  final String label;
  final String time;
  ActivitiesWidget({this.img,this.label,this.time});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:KDefaultPadding,right: KDefaultPadding),
      child: Row(
        children: [
          Image.asset(img,height: 40.0,width: 40.0,),
          SizedBox(width: 16.0,),
          Text(label,maxLines: 1,softWrap: true,style:GoogleFonts.lato(fontSize: 12.0,color: Colors.grey),),
          Spacer(),
          Text(time,style:  GoogleFonts.lato(fontSize: 12.0,color: Colors.grey),),
        ],
      ),
    );
  }
}

class VerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 30.0,
      width: 1.0,
      color: Colors.grey,
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
    );
  }
}