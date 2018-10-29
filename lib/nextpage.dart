import 'package:flutter/material.dart';
import 'package:flutter_app_hackathon/howTouse.dart';
import 'package:flutter_app_hackathon/benifits.dart';
import 'package:flutter_app_hackathon/drawback.dart';

class NewPage extends StatelessWidget {
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
                "How to use"
              ),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Howtouse()));
              },
            ),
            /* Widget 4 */
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
           // new Divider(),
            new Material(
              child: Row(
                children: <Widget>[
                  /* Widget 1 */
                  Container(
                    child: GetImageView(),
                    height: 150.0,
                    width: 150.0,
                  ),
                  /* Widget 2 */
                  Center(
                    child: Text(
                      "Firebase",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0
                      )
                    ),
                  )
                ],
              )
            ),
            new Material(
              child: Container(
                height: 160.0,
                color: Colors.white,
                child: Text("Introduction : ",
                  style: new TextStyle(
                      fontSize: 40.0,
                      color: Colors.redAccent),),
              ),
            ),
            new Material(
              child: Container(
                height: 500.0,
                color: Colors.white,
                child: Text("Android is a mobile operating system developed"
                    " by Google, based on a modified version of the Linux kernel "
                    "and other open source software and designed primarily for "
                    "touchscreen mobile devices such as smartphones and tablets."
                    " In addition, Google has further developed Android TV for "
                    "televisions, Android Auto for cars, and Wear OS for wrist "
                    "watches, each with a specialized user interface. Variants of Android are"
                    " also used on game consoles, digital cameras, "
                    "PCs and other electronics.",
                  style:
                  new TextStyle(
                      fontSize: 25.0,
                      color: Colors.black54
                  ),
                ),
              ),),
            new Material(
              child: Container(
                height: 450.0,
                color: Colors.black,
                child: Text("Initially developed by Android Inc., which Google bought in 2005, Android was unveiled in 2007,"
                    " with the first commercial Android device launched in September 2008."
                    " The operating system has since gone through multiple major releases,"
                    " with the current version being 9.0 'Pie', released in August 2018. The core Android source code is known as Android Open Source Project (AOSP), and is primarily licensed under the Apache License.",
                  style:
                  new TextStyle(
                      fontSize: 25.0,
                      color: Colors.blue
                  ),
                ),
              ),),
          ],
        ),
      ),
    );
  }
}

class GetImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    AssetImage assetImage = new AssetImage('images/firebase.png');
    Image image = Image(image: assetImage);

    return Container(
      child: image,
    );
  }
}




