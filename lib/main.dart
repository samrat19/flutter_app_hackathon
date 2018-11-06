import 'package:flutter/material.dart';
import 'package:flutter_app_hackathon/nextpage.dart';
import 'package:flutter_app_hackathon/dartintro.dart';

import 'package:flutter_app_hackathon/about.dart';
import 'package:flutter_app_hackathon/whowe.dart';

void main() => runApp(Contentpage());

class Contentpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: ContentHome(),
    );
  }
}

class ContentHome extends StatefulWidget {
  @override
  _ContentHomeState createState() => _ContentHomeState();
}

class _ContentHomeState extends State<ContentHome> {
  void flutter() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new NewPage()));
    });
  }

  void dart() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new DartIntro()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Content Page"), actions: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new WHOwe()));
          },
          icon: Icon(Icons.accessibility),
        ),
      ]),
      body: ListView(
        children: <Widget>[
          new Divider(),
          new MaterialButton(
            onPressed: flutter,
            height: 170.0,
            minWidth: 250.0,
            color: Colors.white,
            splashColor: Colors.red,
            child: new Stack(
              children: <Widget>[
                //new Image(image: null),
                //GetImageView(),
                new FlutterLogo(size: 150.0),
              ],
            ),
          ),
          new MaterialButton(
            onPressed: flutter,
            height: 100.0,
            minWidth: 250.0,
            color: Colors.white,
            splashColor: Colors.red,
            child: new Stack(
              children: <Widget>[
                //new Image(image: null),
                //GetImageView(),
                new Text(
                  "Welcome to flutter",
                  style: TextStyle(color: Colors.blue, fontSize: 30.0),
                )
              ],
            ),
          ),
          new Divider(),
          new MaterialButton(
            onPressed: dart,
            height: 170.0,
            minWidth: 250.0,
            color: Colors.white,
            splashColor: Colors.red,
            child: new Stack(
              children: <Widget>[
                GetImageView(),
              ],
            ),
          ),
          new MaterialButton(
            onPressed: dart,
            height: 100.0,
            minWidth: 250.0,
            color: Colors.white,
            splashColor: Colors.red,
            child: new Stack(
              children: <Widget>[
                new Text(
                  "Let's Introduced with DART",
                  style: TextStyle(color: Colors.black, fontSize: 25.0),
                ),
              ],
            ),
          )
        ],
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
