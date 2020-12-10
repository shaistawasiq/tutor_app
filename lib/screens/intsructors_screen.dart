import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutor_app/constants.dart';
class InstructorsScreen extends StatefulWidget {
  @override
  _InstructorsScreenState createState() => _InstructorsScreenState();
}

class _InstructorsScreenState extends State<InstructorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('No Data',style: GoogleFonts.lato(
        fontSize: 20.0,
        color: KTextColor
      ),),
    );
  }
}
