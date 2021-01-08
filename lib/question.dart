import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
    final String hint;


  Question(this.questionText,this.hint);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 12,
            child: Text(
              questionText,
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: FloatingActionButton(
              child: Text("i"),
              onPressed: () {
                  
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Hint"),
            content: Text(hint),
            actions: <Widget>[
              new FlatButton(
                child: new Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    
              },
            ),
          ),
        ],
      ),
    );
  }
}
