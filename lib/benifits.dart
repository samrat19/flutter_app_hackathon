import 'package:flutter/material.dart';

import 'package:flutter_app_hackathon/nextpage.dart';  //ui
import 'package:flutter_app_hackathon/drawback.dart'; //development and tools
import 'package:flutter_app_hackathon/fluttermoredetails.dart'; // more details
import 'package:flutter_app_hackathon/device.dart'; // device sdk

import 'package:flutter_app_hackathon/framework.dart';
import 'package:flutter_app_hackathon/cookbook.dart';
import 'package:flutter_app_hackathon/widgetoverview.dart';

import 'package:flutter_app_hackathon/dartintro.dart';

class Benifits extends StatelessWidget {
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

  void dartentry() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new DartIntro()));
    });
  }

  void framework() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new Framework()));
    });
  }

  void widget1() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new WidgetOverview()));
    });
  }

  void cook() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new Cookbook()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text(
            "Build UIs",
            style: TextStyle(color: Colors.white),
          )),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            /* Widget 1 */
            new UserAccountsDrawerHeader(
              accountName: new Text(
                "flutter",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              accountEmail: new Text(
                "flutter.io",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              currentAccountPicture: new CircleAvatar(
                child: new FlutterLogo(
                  size: 50.0,
                ),
              ),
              otherAccountsPictures: <Widget>[
                MaterialButton(
                  onPressed: dartentry,
                  child: new CircleAvatar(
                    child: new Text(
                      "D",
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
                  "Get Started"
              ),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new NewPage()));
              },
            ),
            ListTile(
                title: Text(
                    "Build UIs"
                ),
                leading: Icon(Icons.chevron_right)
            ),
            /* Widget 4 */
            ListTile(
              title: Text(
                  "Use Device and SDk APIs"
              ),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new DeviceSDK()));
              },
            ),
            ListTile(
              title: Text(
                  "Development and Tools"
              ),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Drawbacks()));
              },
            ),
            ListTile(
              title: Text(
                  "More Details"
              ),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Fluttermore()));
              },
            )
          ],
        ),
      ),
      body: Material(
        child: new ListView(
          children: <Widget>[
            new Divider(),
            new MaterialButton(
                onPressed: framework,
                child: Row(
                  children: <Widget>[
                    /* Widget 1 */
                    Container(
                      child: new FlutterLogo(size: 100.0),
                      height: 100.0,
                      width: 100.0,
                    ),
                    /* Widget 2 */
                    Center(
                      child: Text(
                          "Tour The Framework ",
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
                onPressed: widget1,
                child: Row(
                  children: <Widget>[
                    /* Widget 1 */
                    Container(
                      child: new FlutterLogo(size: 100.0),
                      height: 100.0,
                      width: 100.0,
                    ),
                    /* Widget 2 */
                    Center(
                      child: Text(
                          "Widget Catalog",
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
                onPressed: cook,
                child: Row(
                  children: <Widget>[
                    /* Widget 1 */
                    Container(
                      child: new FlutterLogo(size: 100.0),
                      height: 100.0,
                      width: 100.0,
                    ),
                    /* Widget 2 */
                    Center(
                      child: Text(
                          "Cookbook",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0
                          )
                      ),
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
