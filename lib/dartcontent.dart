import 'package:flutter/material.dart';
import 'package:flutter_app_hackathon/dartintro.dart';
import 'package:flutter_app_hackathon/dart_Function.dart';
import 'package:flutter_app_hackathon/dartclass.dart';

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

  void dartfunctions() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new HomePage()));
    });
  }

  void dartclass(){
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new ClassPage()));
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
            UserAccountsDrawerHeader(
              accountName: Text(
                  "Dart"
              ),
              accountEmail: Text("dartlang.org"),
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
              onPressed: dartfunctions,
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
                          "Dart Functions",
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
              onPressed: dartclass,
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
                          "Dart Class and Object",
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
