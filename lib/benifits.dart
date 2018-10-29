import 'package:flutter/material.dart';
import 'package:flutter_app_hackathon/howTouse.dart';
import 'package:flutter_app_hackathon/drawback.dart';
import 'package:flutter_app_hackathon/nextpage.dart';

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
              accountName: Text("Firebase"),
              accountEmail: Text("firebase@google.io"),
            ),
            ListTile(
              title: Text("Introduction"),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new NewPage()));
              },
            ),
            ListTile(
              title: Text("How to use"),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Howtouse()));
              },
            ),
            ListTile(
              title: Text("Drawbacks"),
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
            new Material(
              child: Container(
                height: 60.0,
                child: Text(
                  "Benifits : ",
                  style: new TextStyle(fontSize: 40.0, color: Colors.redAccent),
                ),
              ),
            ),
            new Material(
              child: Container(
                height: 500.0,
                child: Text(
                  "Building an application or website may seem to be a very exhaustive process at first sight involving investment of significant time and cost. However, there are many services available which can facilitate the development work in various ways. Firebase is one of them. This giant is ready to take away a significant part of the burden from the developer’s shoulders.Firebase was established by Andrew Lee and James Tamplin back in 2011 yet was launched formally in April 2012. Initially, the framework was expected to be a real-time database giving its APIs, enabling users to store and synchronize information across various customers. However, the plans changed a little bit when Firebase was taken over by Google two years after its release. Today, the service has various functions that a wise entrepreneur may find exceptionally valuable. Firebase has reached from 110,000 developers when it was initially obtained by Google in October of 2014 to a booming number of 450,000 plus developers at present.Firebase is a framework which is help for building portable and web application for your business with real-time database which implies when one user updates a record in the database, that update would be conveyed to every single user, be those users on a website, iOS or Android device. It gives a basic and unified platform with so many Google features packed-in. You don't need to configure your server when you use Firebase. Everything will be taken care of by Firebase automatically.There are numerous elements that make working with Firebase marvelous from a developer’s point of view, that pertain to the core technology of development. This helps in maintaining the state of harmony between the developer & the client by causing minimal delay of work.Benefits of using Firebase",
                  style: new TextStyle(fontSize: 25.0, color: Colors.black54),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
