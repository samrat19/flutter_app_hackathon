import 'package:flutter/material.dart';
import 'package:flutter_app_hackathon/dartintro.dart';

import 'package:flutter_app_hackathon/content_dart/dart_hello.dart';
import 'package:flutter_app_hackathon/content_dart/dart_datatypes.dart';
import 'package:flutter_app_hackathon/content_dart/dart_decision.dart';
import 'package:flutter_app_hackathon/content_dart/dart_loops.dart';
import 'package:flutter_app_hackathon/content_dart/dart_variables.dart';

import 'package:flutter_app_hackathon/nextpage.dart';

class DartContent extends StatelessWidget {
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

  void flutterentry1() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new NewPage()));
    });
  }

  void darthello(){
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new HelloWorld()));
    });
  }

  void dartdatatypes() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new DataTypes()));
    });
  }

  void dartdecision() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new Decision()));
    });
  }

  void dartloops() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new Loops()));
    });
  }

  void dartvariables() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new Variable()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text(
            "Dart Content",
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
                  onPressed: flutterentry1,
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
              title: Text(
                  "Introduction"
              ),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new DartIntro())
                );
              },
            ),
            /* Widget 4 */
            ListTile(
              title: Text(
                  "Content"
              ),
              leading: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
      body: Material(
        child: new ListView(
          children: <Widget>[
            new Divider(),
            new MaterialButton(
              onPressed: darthello,
                child: Row(
                  children: <Widget>[
                    /* Widget 1 */
                    Container(
                      child: GetImageView(),
                      height: 100.0,
                      width: 100.0,
                    ),
                    /* Widget 2 */
                    Center(
                      child: Text(
                          "Dart Hello world",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0
                          )
                      ),
                    )
                  ],
                )
            ),
            new Divider(),
            new MaterialButton(
              onPressed: dartdatatypes,
                child: Row(
                  children: <Widget>[
                    /* Widget 1 */
                    Container(
                      child: GetImageView(),
                      height: 100.0,
                      width: 100.0,
                    ),
                    /* Widget 2 */
                    Center(
                      child: Text(
                          "Dart Data Types",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0
                          )
                      ),
                    )
                  ],
                )
            ),
            new Divider(),
            new MaterialButton(
                onPressed: dartvariables,
                child: Row(
                  children: <Widget>[
                    /* Widget 1 */
                    Container(
                      child: GetImageView(),
                      height: 100.0,
                      width: 100.0,
                    ),
                    /* Widget 2 */
                    Center(
                      child: Text(
                          "Dart Variables",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0
                          )
                      ),
                    )
                  ],
                )
            ),
            new Divider(),
            new MaterialButton(
                onPressed: dartdecision,
                child: Row(
                  children: <Widget>[
                    /* Widget 1 */
                    Container(
                      child: GetImageView(),
                      height: 100.0,
                      width: 100.0,
                    ),
                    /* Widget 2 */
                    Center(
                      child: Text(
                          "Dart Decision Making",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0
                          )
                      ),
                    )
                  ],
                )
            ),
            new Divider(),
            new MaterialButton(
                onPressed: dartloops,
                child: Row(
                  children: <Widget>[
                    /* Widget 1 */
                    Container(
                      child: GetImageView(),
                      height: 100.0,
                      width: 100.0,
                    ),
                    /* Widget 2 */
                    Center(
                      child: Text(
                          "Dart loops",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0
                          )
                      ),
                    )
                  ],
                )
            )
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
