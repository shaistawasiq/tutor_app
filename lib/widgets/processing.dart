
import 'package:flutter/material.dart';
import 'package:tutor_app/widgets/my_circular_progress.dart';

class Processing extends StatelessWidget {
  final String text;

  const Processing({this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          MyCircularProgress(),
          SizedBox(height: 10),
          Text(text ?? ("processing"), style: TextStyle(fontSize: 18)),
          SizedBox(height: 5),
          Text("please_wait", style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
