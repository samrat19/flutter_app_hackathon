import 'package:flutter/material.dart';

import 'package:flutter_app_hackathon/device.dart';

class Developing extends StatelessWidget {
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
        'Packages enable the creation of modular code that can be shared easily.'
            '\n1. A pubspec.yaml file: A metadata file that declares the package name, version, author, etc'
          '\n2. A lib directory containing the public code in the package, minimally a single <package-name>.dart file.',
          style: TextStyle(fontSize: 18.0, color: Colors.white),
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
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new DeviceSDK()));
          },
        ),
        title: Text("Developing Packages"),
      ),
      body: body,
    );
  }
}