import 'package:flutter/material.dart';
import 'package:flutter_app_hackathon/dartcontent.dart';

import 'package:flutter_app_hackathon/nextpage.dart';

class DartIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new AndroidHome(),
    );
  }
}

class AndroidHome extends StatefulWidget {
  @override
  _AndroidHomeState createState() => _AndroidHomeState();
}

class _AndroidHomeState extends State<AndroidHome> {

  void flutterentry() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new NewPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text(
        "Dart Intro",
        style: TextStyle(color: Colors.white),
      )),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            /* Widget 1 */
            new UserAccountsDrawerHeader(
              accountName: new Text(
                "dart",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              accountEmail: new Text(
                "dartlang.org",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              currentAccountPicture: new CircleAvatar(child: GetImageView()),
              otherAccountsPictures: <Widget>[
                MaterialButton(
                  onPressed: flutterentry,
                  child: new CircleAvatar(
                    child: new Text(
                      "F",
                      style: new TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),
              ],
            ),
            /* Widget 2 */
            /* Widget 3 */
            ListTile(
              title: Text("Introduction"),
              leading: Icon(Icons.chevron_right),
            ),
            /* Widget 4 */
            ListTile(
              title: Text("Content"),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new DartContent()));
              },
            ),
          ],
        ),
      ),
      body: Material(
        child: new ListView(
          children: <Widget>[
            new Divider(),
            new Material(
              child: Container(
                height: 60.0,
                child: Text(
                  "Get Started : ",
                  style: new TextStyle(fontSize: 30.0, color: Colors.blue),
                ),
              ),
            ),
            new Material(
              child: Container(
                height: 500.0,
                child: Text(
                  "Dart is an open-source general-purpose programming language. It is originally developed by Google and later approved as a standard by ECMA. Dart is a new programming language meant for the server as well as the browser. Introduced by Google, the Dart SDK ships with its compiler – the Dart VM. The SDK also includes a utility -dart2js, a transpiler that generates JavaScript equivalent of a Dart Script. This tutorial provides a basic level understanding of the Dart programming language.",
                  style: new TextStyle(fontSize: 25.0, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GetImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/dartlogo.png');
    Image image = Image(image: assetImage);

    return Container(
      child: image,
    );
  }
}
