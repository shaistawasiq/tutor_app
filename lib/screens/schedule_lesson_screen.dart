import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tutor_app/constants.dart';
import 'package:tutor_app/screens/Calender.dart';
import 'package:tutor_app/screens/confirm_lesson_details_screen.dart';
import 'package:tutor_app/screens/tutors_details-screen.dart';

class ScheduleLessonScreen extends StatefulWidget {
  @override
  _ScheduleLessonScreenState createState() => _ScheduleLessonScreenState();
}

class _ScheduleLessonScreenState extends State<ScheduleLessonScreen> {
  int selectedIndex = 0;
  int durationIndex = 0;
  CalendarController _calendarController;
  String _dropDownValue;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Lesson Schedule',
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
              Text('Lesson',
               style: GoogleFonts.lato(
                      color: KTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0)),
              SizedBox(height: 16.0,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 4;
                          });
                        },
                        child: ChooseSubjectWidget(
                          subject: 'BioLogy',
                          isSelected: selectedIndex == 4,
                        )),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 5;
                          });
                        },
                        child: ChooseSubjectWidget(
                          subject: 'Chemistry',
                          isSelected: selectedIndex == 5,
                        )),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: ChooseSubjectWidget(
                          subject: 'Math',
                          isSelected: selectedIndex == 1,
                        )),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 2;
                          });
                        },
                        child: ChooseSubjectWidget(
                          subject: 'Geometry',
                          isSelected: selectedIndex == 2,
                        )),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 3;
                          });
                        },
                        child: ChooseSubjectWidget(
                          subject: 'Physics',
                          isSelected: selectedIndex == 3,
                        ))
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Text('Duration',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          durationIndex = 1;
                        });
                      },
                      child: ChooseTimeWidget(
                        subject: '60 mins',
                        isSelected: durationIndex == 1,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          durationIndex = 2;
                        });
                      },
                      child: ChooseTimeWidget(
                        subject: '120 mins',
                        isSelected: durationIndex == 2,
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          durationIndex = 3;
                        });
                      },
                      child: ChooseTimeWidget(
                        subject: '180 mins',
                        isSelected: durationIndex == 3,
                      ))
                ],
              ),
              SizedBox(height: 20.0,),
              Text('Session Date',
                  style: GoogleFonts.lato(
                      color: KTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0)),
              SizedBox(height: 20.0,),
              TableCalendar(
                calendarController: _calendarController,
                calendarStyle: CalendarStyle(
                 // todayColor: Colors.greenAccent,
                  selectedColor: KButtonColor,
                ),
                headerStyle: HeaderStyle(
                  centerHeaderTitle: true,
                  formatButtonVisible: false,
                ),

                initialCalendarFormat: CalendarFormat.week,
                formatAnimation: FormatAnimation.slide,
                startingDayOfWeek: StartingDayOfWeek.monday,
                availableGestures: AvailableGestures.all,
              ),
              SizedBox(height: 40.0,),

              Text('Session Time',
                  style: GoogleFonts.lato(
                      color: KTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0)),

              Container(
                width: double.infinity,
                height: 45.0,
                margin: EdgeInsets.only(top: 26.0),
                decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(5.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    hint: _dropDownValue == null
                        ? Text('Select a lesson',style: TextStyle(color: Colors.grey),)
                        : Text(
                      _dropDownValue,
                      style: TextStyle(color: KTextColor),
                    ),
                    underline: SizedBox(),
                    isExpanded: true,
                    iconSize: 30.0,
                    style: TextStyle(color: KButtonColor),
                    items: ['8 am to 9 pm', '9 am to 10 pm', '11 am to 12 pm'].map(
                          (val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text(val),
                        );
                      },
                    ).toList(),
                    onChanged: (val) {
                      setState(
                            () {
                          _dropDownValue = val;
                        },
                      );
                    },
                  ),
                ),
              ),

              SizedBox(height: 50.0,),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmLessonDetailsScreen()));

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 6.0,top: 6.0),
                    child: Center(child: Text('Confirm Schedule',style: TextStyle(color: Colors.white,fontSize: 16.0),)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChooseSubjectWidget extends StatelessWidget {
  final String subject;
  final bool isSelected;

  ChooseSubjectWidget({this.subject, this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Card(
      color:  this.isSelected ? KButtonColor: Colors.white,
    shape: RoundedRectangleBorder(
    side: BorderSide(color: Colors.black12, width: 1),
    borderRadius: BorderRadius.circular(2),
    ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
        child: Text(
          subject,
          style: TextStyle(fontSize: 16.0, color: this.isSelected ? Colors.white : KTextColor,),
        ),
      ),
    );
  }
}
class ChooseTimeWidget extends StatelessWidget {
  final String subject;
  final bool isSelected;

  ChooseTimeWidget({this.subject, this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Card(
      color:  this.isSelected ? KButtonColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black12, width: 1),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
        child: Text(
          subject,
          style: TextStyle(fontSize: 16.0, color: this.isSelected ? Colors.white :KTextColor),
        ),
      ),
    );
  }
}