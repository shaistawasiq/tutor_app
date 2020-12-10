import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
class ChatScreenView extends StatefulWidget {
  @override
  _ChatScreenViewState createState() => _ChatScreenViewState();
}

class _ChatScreenViewState extends State<ChatScreenView> {
  final messageHolder = TextEditingController();
  List<MessageBubble> meassges =[];
  String msg;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    meassges.add(MessageBubble(sender:"Husnain",text: "Hi i'm looking for a physics teacher",isMe: false,));
    meassges.add(MessageBubble(sender:"Umar",text: "Sure",isMe: true,));
    meassges.add(MessageBubble(sender:"Husnain",text: "let's decide a schedule",isMe: false,));
    meassges.add(MessageBubble(sender:"Umar",text: "ok! Sure",isMe: true,));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text('Husnain Asghar',style: TextStyle(color: Colors.black),),
        centerTitle: true,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Expanded(child: ListView.builder(itemBuilder: (BuildContext context,int index)=>meassges[index],itemCount: meassges.length,)),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 2.0,right: 2.0,bottom: 2.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          maxLines: null,
                          controller: messageHolder,
                          onChanged: (value) {
                            msg=value;
                          },
                          decoration: kMessageTextFieldDecoration,
                        ),
                      ),
                      FlatButton(
                          onPressed: () {
                            setState(() {
                              meassges.add(MessageBubble(sender:"user",text: msg,isMe: true,));
                            });
                            messageHolder.clear();

                          },
                          child:Icon(Icons.send,color: Colors.blue,)
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
class MessageBubble extends StatelessWidget {
  MessageBubble({this.sender, this.text, this.isMe});

  final String sender;
  final String text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom:8.0),
            child: Text(
              sender,
              style: GoogleFonts.lato(
                fontSize: 14.0,
                color: Colors.black54,
              ),
            ),
          ),
          Material(
            borderRadius: isMe
                ? BorderRadius.only(
                topLeft: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0))
                : BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            elevation: 5.0,
            color: isMe ? Colors.lightBlueAccent : Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                text,
                style: TextStyle(
                  color: isMe ? Colors.white : Colors.black54,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}