import 'package:flutter/material.dart';

import 'package:flutter_app_hackathon/dartcontent.dart';

class Variable extends StatelessWidget {
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
        'A variable is (a named space in the memory) that stores values. In other words, it acts a container for values in a program.'
            ' Variable names are called identifiers. Following are the naming rules for an identifier −'
        '\n\nIdentifiers cannot be keywords.'
        '\nIdentifiers can contain alphabets and numbers.'
        '\nIdentifiers cannot contain spaces and special characters, except the underscore (_) and the dollar  sign'
        '\nVariable names cannot begin with a number',
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
        title: Text("Variables"),
      ),
      body: body,
    );
  }
}