import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutor_app/screens/chat_screen.dart';
import 'package:tutor_app/screens/home_screen.dart';
import 'package:tutor_app/screens/intsructors_screen.dart';
import 'package:tutor_app/screens/profile_screen.dart';
import 'package:tutor_app/screens/question_bank_screen.dart';

import '../constants.dart';
class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> with TickerProviderStateMixin{
  int selectedIndex = 2;
  List<Widget> listWidgets = [ProfileScreen(),InstructorsScreen(),HomeScreen(),QuestionBankScreen(),ChatScreen(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home_outlined,title: ''),
          TabItem(icon: Icon(FontAwesomeIcons.addressBook),title: ''),
          TabItem(icon: Icon(FontAwesomeIcons.user),title: ''),
          TabItem(icon: Icons.comment_bank,title: ''),
          TabItem(icon: Icons.message_outlined,title: ''),
        ],
        backgroundColor: Colors.white,
        activeColor: KBottomNavColor,
        color: Colors.black,
        initialActiveIndex: 2,
        onTap: onItemTapped,
      ),
      body: listWidgets[selectedIndex],
      );
  }
  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }
}
//Icons.account_box,Icons.home,Icons.menu