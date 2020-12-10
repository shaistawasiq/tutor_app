import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutor_app/constants.dart';
import 'package:tutor_app/screens/tutors_details-screen.dart';

class SearchTutorScreen extends StatefulWidget {
  @override
  _SearchTutorScreenState createState() => _SearchTutorScreenState();
}

class _SearchTutorScreenState extends State<SearchTutorScreen> {
  String _dropDownValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
         elevation: 0.0,
          leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: (){
            Navigator.pop(context);
          }),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: KDefaultPadding,right: KDefaultPadding),
                child: Column(
                  children: [
                    Text('Find your ideal tutor',
                        style:  GoogleFonts.lato(
                            color: KTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0)),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Text('Eleifend nec eget blandit diam est,',
                          style:  GoogleFonts.lato(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0)),
                    ),
                    Text('laoreet et pretuim.',
                        style:  GoogleFonts.lato(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0)),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 45.0,
                        child: TextFormField(
                          onChanged: (value) {},
                          decoration: new InputDecoration(
                              border:  OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  )
                              ),
                              disabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.transparent)),
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.transparent)),
                              labelText: "Search a tutor",
                              hintStyle: TextStyle(
                                  fontFamily: "Product Sans",
                                  fontSize: 16.0,
                                color: Color(0xffF5F5F5),),
                              fillColor:  Color(0xffF5F5F5),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                              )

                              //fillColor: Colors.green
                              ),

                          keyboardType: TextInputType.text,
                          style: new TextStyle(),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 45.0,
                      margin: EdgeInsets.only(top: 26.0),
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                      child:Padding(
                        padding: const EdgeInsets.all(12.0),
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
                          style: TextStyle(color: KTextColor),
                          items: ['Physics', 'Chemistry', 'Math'].map(
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
                      )
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              SearchTutorListView(name: 'Emma Grace',),
              SearchTutorListView(name: 'John Doe',),
              SearchTutorListView(name: 'Emma Grace',),
              SearchTutorListView(name: 'John Doe',),
              SizedBox(height: 16.0,),


            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SearchTutorListView extends StatelessWidget {
  final String name;
  SearchTutorListView({this.name});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>TutorDetailsScreen()));
        },
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset( 'assets/images/circleAvtar1.png',width: 60.0,height: 60.0,),
                      SizedBox(width: 16.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name,style:  GoogleFonts.lato(
                              color: KTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0)),
                          SizedBox(height: 8.0,),
                          Text(
                            'Mathematics,Geometry,Physics',
                            maxLines: null,
                              style:  GoogleFonts.lato(
                                  color: Colors.grey,
                                  fontSize: 12.0)),

                        ],
                      ),
                      Spacer(),
                      Text(
                        '1h ago',
                          style:  GoogleFonts.lato(
                              color: Colors.grey,
                              fontSize: 10.0)),
                    ],
                  ),


                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
