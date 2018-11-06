import 'package:flutter/material.dart';

import 'package:flutter_app_hackathon/benifits.dart';  //ui
import 'package:flutter_app_hackathon/drawback.dart'; //development and tools
import 'package:flutter_app_hackathon/nextpage.dart'; // intro
import 'package:flutter_app_hackathon/device.dart'; // device sdk

import 'package:flutter_app_hackathon/dartintro.dart';

import 'package:flutter_app_hackathon/technical.dart';
import 'package:flutter_app_hackathon/magic.dart';
import 'package:flutter_app_hackathon/architecture.dart';

class Fluttermore extends StatelessWidget {
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

  void technicalentry() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new Technical()));
    });
  }

  void magicentry() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new Magic()));
    });
  }

  void architectureentry() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new Architecture()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text(
            "More Details",
            style: TextStyle(color: Colors.white),
          )),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
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
            /* Widget 4 */
            ListTile(
              title: Text(
                  "Build UIs"
              ),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Benifits()));
              },
            ),
            ListTile(
              title: Text(
                  "Use device and SDK APIs"
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
                leading: Icon(Icons.chevron_right)
            ),
          ],
        ),
      ),
      body: Material(
        child: new ListView(
          children: <Widget>[
            new Divider(),
            new MaterialButton(
                onPressed: technicalentry,
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
                          "Technical Overview",
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
                onPressed: magicentry,
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
                          "Magic of Fluter Sides",
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
                onPressed: architectureentry,
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
                          "Architecture",
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
