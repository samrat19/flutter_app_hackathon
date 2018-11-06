import 'package:flutter/material.dart';

import 'package:flutter_app_hackathon/dartcontent.dart';

class DataTypes extends StatelessWidget {
  static String tag = 'Dart Class';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('images/dartlogo.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "One of the most fundamental characteristics of a \n programming language is the set of data types it supports.These are the type of values that can be represented and manipulated in a programming language "
            "\n The Dart language supports the following types−\n\n Numbers \n Strings \nBooleans \nLists \nMaps",
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: (){
            Navigator.of(context).pop();
            //  Navigator.of(context).pushNamed("/a");
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new DartContent()));
          },
        ),
        title: Text("Dataypes in Dart"),
      ),
      body: body,
    );
  }
}