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
                  "Let's Start4 : ",
                  style: new TextStyle(fontSize: 30.0, color: Colors.redAccent),
                ),
              ),
            ),
            new Material(
              child: Container(
                height: 500.0,
                child: Text(
                  "1. Unless your app runs of one centralized database updated by a vast quantity of users, it’s a major overkill.\n2. Storage format is entirely different to that of SQL, (Firebase uses JSON) so you wouldn’t be able to migrate that easily.\n3. Reporting tools won’t be anywhere near the ones of standard SQL.\n4. Costs! -Limited to 50 Connections and 100mb of Storage!\n5. You don’t host the data, Firebase does. And depending on which server you get put on, viewing there up time there seems to be a lot of disruption lately.",
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
