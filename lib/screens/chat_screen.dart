import 'package:flutter/material.dart';
import 'package:tutor_app/constants.dart';
import 'package:tutor_app/screens/chat_view_screen.dart';
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Conversation',style: TextStyle(color: Colors.black),),
        automaticallyImplyLeading: false,
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(KDefaultPadding),
        child: Column(
          children: [
            ServicesCommentsView(),
            ServicesCommentsView(),
            ServicesCommentsView(),


          ],
        ),
      ),
    );
  }
}
// ignore: must_be_immutable
class ServicesCommentsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // String formatted = formatTime(commentsModel.date.millisecondsSinceEpoch);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreenView()));

        },
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child:Image.asset('assets/images/circleAvtar1.png',width: 40.0,height: 40.0,)
                    ),
                    title: Text('Husnain Asghar',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    subtitle: Text(
                      'Hello how..............',
                      maxLines: null,
                    ),
                    trailing: Text('12 min ago'),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[350],
            )
          ],
        ),
      ),
    );
  }
}