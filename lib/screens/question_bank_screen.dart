import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
class QuestionBankScreen extends StatefulWidget {
  @override
  _QuestionBankScreenState createState() => _QuestionBankScreenState();
}

class _QuestionBankScreenState extends State<QuestionBankScreen> {
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
