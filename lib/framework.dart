import 'package:flutter/material.dart';

import 'package:flutter_app_hackathon/benifits.dart';

class Framework extends StatelessWidget {
  static String tag = 'Flutter Installation';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('images/flutter.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Flutter widgets are built using a modern react-style framework, '
            'which takes inspiration from React. The central idea is that you build your UI '
            'out of widgets. Widgets describe what their view should look like given their'
            ' current configuration and state. When a widget’s state changes,'
            ' the widget rebuilds its description, which the framework diffs against the previous description '
            'in order to determine the minimal changes needed in the '
            'underlying render tree to transition from one state to the next',
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
                builder: (BuildContext context) => new Benifits()));
          },
        ),
        title: Text("Tour of the Framework"),
      ),
      body: body,
    );
  }
}