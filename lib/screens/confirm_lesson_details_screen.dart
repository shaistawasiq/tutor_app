import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutor_app/constants.dart';
import 'package:tutor_app/screens/add_card_screen.dart';
import 'package:tutor_app/screens/schedule_lesson_screen.dart';
  class ConfirmLessonDetailsScreen extends StatefulWidget {
  @override
  _ConfirmLessonDetailsScreenState createState() => _ConfirmLessonDetailsScreenState();
}

class _ConfirmLessonDetailsScreenState extends State<ConfirmLessonDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Payment',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(KDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lesson Details',
                  style: GoogleFonts.lato(
                      color: KTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0)),
              SizedBox(height: 16.0,),

              LessonDetailsWidget(label: 'Instructor',title: 'John Doe',),
              LessonDetailsWidget(label: 'Lesson',title: 'Geometry',),
              LessonDetailsWidget(label: 'Date',title: '08 Dec 2020',),
              LessonDetailsWidget(label: 'Time',title: '11 am tp 12 pm',),
              LessonDetailsWidget(label: 'Duration',title: '60 min',),
              SizedBox(height: 16.0,),

              Divider(color: Colors.black,),

          ListTile(
            title: Text('Total Amount',style: GoogleFonts.lato(
              color: KTextColor,
              fontSize: 16.0,
              fontWeight: FontWeight.bold
            ),),
            trailing: Text('\$100',style: GoogleFonts.lato(
              color: KButtonColor,
              fontSize: 16.0,
                fontWeight: FontWeight.bold

            ),),
          ),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 FlatButton(
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(6.0),
                       side: BorderSide(   color: KButtonColor,)),
                   color: Colors.white,
                   splashColor: Colors.white,
                   padding: EdgeInsets.fromLTRB(16.0,4.0,16.0,4.0),
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>ScheduleLessonScreen()));

                   },
                   child: Row(
                     children: [
                       Icon(Icons.add_circle_outlined,color: KButtonColor,),
                       SizedBox(width: 6.0,),
                       Text('Add another lesson',style: GoogleFonts.lato(
                         color: KTextColor,
                         fontWeight: FontWeight.bold,
                         fontSize: 16.0,
                       ),)
                     ],
                   ),
                 )
               ],
             ),
              SizedBox(height: 40.0,),
              Text('Payment Method',
                  style: GoogleFonts.lato(
                      color:KTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0)),
              Container(
                margin: EdgeInsets.only(top: 26.0),
                color: Colors.grey[200],
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCardScreen()));

                  },
                  leading: Icon(FontAwesomeIcons.ccVisa,color: KButtonColor,),
                  title: Text(
                    'visa',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_down_sharp),
                ),
              ),
              Row(
                children: [
                  Text('Change payment method',style: GoogleFonts.lato(
                      color: KTextColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold
                  ),),
                  Spacer(),
                  FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCardScreen()));

                    },
                    child: Text('Edit the card',style: GoogleFonts.lato(
                        color:KTextColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold

                    ),
                    ),),
                ],
              ),

              SizedBox(height: 16.0,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0,),

                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  color:KButtonColor,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCardScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 6.0,top: 6.0),
                    child: Center(child: Text('Complete the Payment',style: GoogleFonts.lato(color: Colors.white,fontSize: 16.0),)),
                  ),
                ),
              ),
              SizedBox(height: 16.0,),
            ],
          ),
        ),
      ),
    );
  }
}
class LessonDetailsWidget extends StatelessWidget {
  final String label;
  final String title;
  LessonDetailsWidget({this.label,this.title});
  @override
  Widget build(BuildContext context) {
   return Padding(
      padding: const EdgeInsets.only(top: 16.0,bottom: 8.0),
      child: Row(children: [
        Text(label,style: GoogleFonts.lato(
          color: Colors.grey,
          fontSize: 14.0,
        ),),
        Spacer(),
        Text(title,style: GoogleFonts.lato(
          color: KTextColor,
          fontSize: 14.0,
        ),),
      ],),
    );
  }
}
