import 'package:flutter/material.dart';

import 'package:flutter_app_hackathon/nextpage.dart';

class Install extends StatelessWidget {
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
        'Get the Flutter SDK-,'
            '1. Download the required package to get the latest beta release of the Flutter SDK.'
             '2. Extract the file in the desired location.'
             '3. Add the flutter tool to your path.'
              '4. Run the "flutter doctor" command to see if there are any dependencies you need'
            ' to install to complete the setup.'
             '5. Once you have installed the missing dependencies(if any), run the flutter doctor command again to verify that you’ve set everything up correctly.'
              '6. Then set up the Android Studio, Android device and Android Emulator as required.',
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
                builder: (BuildContext context) => new NewPage()));
          },
        ),
        title: Text("Install Flutter"),
      ),
      body: body,
    );
  }
}