import 'package:flutter/material.dart';
import 'package:flutter_app_hackathon/howTouse.dart';
import 'package:flutter_app_hackathon/benifits.dart';
import 'package:flutter_app_hackathon/nextpage.dart';

class Drawbacks extends StatelessWidget {
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
            ListTile(
              title: Text(
                  "Introduction"
              ),
              leading: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => NewPage()));
              },
            ),
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
                child: Text("Drawbacks : ",
                  style: new TextStyle(
                      fontSize: 40.0,
                      color: Colors.redAccent),),
              ),
            ),
            new Material(
              child: Container(
                height: 500.0,
                child: Text("1. Unless your app runs of one centralized database updated by a vast quantity of users, it’s a major overkill.\n2. Storage format is entirely different to that of SQL, (Firebase uses JSON) so you wouldn’t be able to migrate that easily.\n3. Reporting tools won’t be anywhere near the ones of standard SQL.\n4. Costs! -Limited to 50 Connections and 100mb of Storage!\n5. You don’t host the data, Firebase does. And depending on which server you get put on, viewing there up time there seems to be a lot of disruption lately.",
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
