import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutor_app/screens/search_tutor_screen.dart';

import '../constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: ListTile(
                leading:   CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.lightBlue,
                ),
                title: Text('Husnain Asghar'),
                subtitle: Text('Student'),

              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Dashboard'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.perm_identity_outlined),
              title: Text('My Profile'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Instructors'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Class Reminder'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.comment_bank),
              title: Text('Question Bank'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.chat_outlined),
              title: Text('Chat'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0,12.0,40.0,12.0),
              child: Divider(color: Colors.grey,),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.headset_mic_outlined),
              title: Text('Contact Us'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0,12.0,40.0,12.0),
              child: Divider(color: Colors.grey,),
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Logout'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),



          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text('Good morning,',
                            style:
                                GoogleFonts.lato(color:KTextColor, fontSize: 16.0,
                                fontWeight: FontWeight.w600)),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Text('  Husnain Asghar',
                              style:  GoogleFonts.lato(
                                  color: KTextColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0)),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 70,
                      height: 70,
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child:  Image.asset('assets/images/proImg.png'
                          ,width: 70.0,height: 70.0),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchTutorScreen()));
                    },
                    child: Container(
                      height: 45.0,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                      child: Row(
                        children: [
                          SizedBox(width: 16.0,),
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          SizedBox(width: 16.0,),
                          Text('Search',style: GoogleFonts.lato(),),

                        ],
                      ),
                    )
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/banner.png'),
                      fit: BoxFit.contain,
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: KDefaultPadding *2,),
                  child: Text('Courses',
                      style: GoogleFonts.lato(
                          color: KTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                ),
                Row(
                  children: [
                    HomeCard(label: 'Mathematics', iconData: Icons.favorite,img: 'assets/images/back.png'),
                    HomeCard(label: 'Chemistry', iconData: Icons.favorite,img: 'assets/images/back2.png'),
                  ],
                ),
                Row(
                  children: [
                    HomeCard(label: 'Mathematics', iconData: Icons.favorite,img: 'assets/images/back.png'),
                    HomeCard(label: 'Chemistry', iconData: Icons.favorite,img: 'assets/images/back.png'),
                  ],
                ),
                Row(
                  children: [
                    HomeCard(label: 'Mathematics', iconData: Icons.favorite,img: 'assets/images/back.png'),
                    HomeCard(label: 'Chemistry', iconData: Icons.favorite,img: 'assets/images/back2.png'),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
class HomeCard extends StatelessWidget {
  final String img;
  final String label;
  final IconData iconData;
  HomeCard({this.label,this.img,this.iconData});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1/0.90,
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchTutorScreen()));

          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                topRight:  Radius.circular(8.0),
              ),

            ),
            child: Container(
              margin: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    topRight:  Radius.circular(8.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage(img),

                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:12.0),
                      child: Text(label,style: GoogleFonts.lato(color: KTextColor,fontSize: 20.0),),
                    ),
                    Text('Featured',style: GoogleFonts.lato(color: Color(0xffB1B0C4),fontSize: 16.0,fontWeight: FontWeight.w500),),
                    Row(
                      children: [
                        Icon(iconData,color: Colors.red,size: 20.0,),
                        SizedBox(width: 5,),
                        Text('146',style:GoogleFonts.lato(color: KTextColor,fontSize: 14.0),)
                      ],
                    ),
                    SizedBox(height: 5,),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}