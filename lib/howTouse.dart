import 'package:flutter/material.dart';

import 'package:flutter_app_hackathon/benifits.dart';
import 'package:flutter_app_hackathon/drawback.dart';
import 'package:flutter_app_hackathon/nextpage.dart';

class Howtouse extends StatelessWidget {

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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text(
            "Firebase",
            style: TextStyle(color: Colors.white),
          )),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            /* Widget 1 */
            UserAccountsDrawerHeader(
              accountName: Text(
                  "Firebase"
              ),
              accountEmail: Text("firebase@google.io"),
            ),
            /* Widget 2 */
            /* Widget 3 */
            ListTile(
              title: Text(
                  "introduction"
              ),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                //   Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new NewPage()));
              },
            ),
            ListTile(
              title: Text(
                  "Benifits"
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
                  "Drawbacks"
              ),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Drawbacks()));
              },
            )
          ],
        ),
      ),
      body: Material(
        child: new ListView(
          children: <Widget>[
            new Divider(),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: new Material(
                child: Container(
                  height: 60.0,
                  child: Text("How to use : ",
                    style: new TextStyle(
                        fontSize: 40.0,
                        color: Colors.redAccent),),
                ),
              ),
            ),
            new Material(
              child: Container(
                child: Text("Configure Firebase Database Rules \nThe Realtime Database provides a declarative rules language that allows you to define how your data should be structured, how it should be indexed, and when your data can be read from and written to. By default, read and write access to your database is restricted so only authenticated users can read or write data. To get started without setting up Authentication, you can configure your rules for public access. This does make your database open to anyone, even people not using your app, so be sure to restrict your database again when you set up authentication.",
                  style:
                  new TextStyle(
                      fontSize: 25.0,
                      color: Colors.black54
                  ),
                ),
              ),),
          ],
        ),
      ),
    );
  }
}
