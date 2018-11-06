import 'package:flutter/material.dart';

import 'package:flutter_app_hackathon/about.dart';


import 'package:flutter_app_hackathon/main.dart';

class WHOwe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UseHome(),
    );
  }
}

class UseHome extends StatefulWidget {
  @override
  _UseHomeState createState() => _UseHomeState();
}

class _UseHomeState extends State<UseHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
            //  Navigator.of(context).pushNamed("/a");
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new Contentpage()));
          },
        ),
        title: Text("Team flutter_0.1"),
      ),
      body: Material(
        child: new ListView(
          children: <Widget>[
            new Divider(),
            new MaterialButton(
                onPressed: null,
                child: Row(
                  children: <Widget>[
                    /* Widget 1 */
                    Container(
                      child: GetImageView1(),
                      height: 100.0,
                      width: 100.0,
                    ),
                    /* Widget 2 */
                    Center(
                      child: Text("       Atri Das",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20.0,color: Colors.red)),
                    )
                  ],
                )),
            new Divider(),
            new Divider(),
            new MaterialButton(
                onPressed: null,
                child: Row(
                  children: <Widget>[
                    /* Widget 1 */
                    Container(
                      child: GetImageView2(),
                      height: 100.0,
                      width: 100.0,
                    ),
                    /* Widget 2 */
                    Center(
                      child: Text("       Shoili Chowdhury",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20.0,color: Colors.red)),
                    )
                  ],
                )),
            new Divider(),
            new Divider(),
            new MaterialButton(
                onPressed: null,
                child: Row(
                  children: <Widget>[
                    /* Widget 1 */
                    Container(
                      child: GetImageView3(),
                      height: 100.0,
                      width: 100.0,
                    ),
                    /* Widget 2 */
                    Center(
                      child: Text("      Ritam Chakraborty",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20.0,color: Colors.red)),
                    )
                  ],
                )),
            new Divider(),
            new Divider(),
            new MaterialButton(
                onPressed: null,
                child: Row(
                  children: <Widget>[
                    /* Widget 1 */
                    Container(
                      child: GetImageView4(),
                      height: 100.0,
                      width: 100.0,
                    ),
                    /* Widget 2 */
                    Center(
                      child: Text("      Shirsha Singha",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20.0,color: Colors.red)),
                    )
                  ],
                )),
            new Divider(),
          ],
        ),
      ),
    );
  }
}

class GetImageView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/atri.png');
    Image image = Image(image: assetImage);

    return Container(
      child: image,
    );
  }
}

class GetImageView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/shoili.png');
    Image image = Image(image: assetImage);

    return Container(
      child: image,
    );
  }
}

class GetImageView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/ritam.png');
    Image image = Image(image: assetImage);

    return Container(
      child: image,
    );
  }
}

class GetImageView4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/shirsha.png');
    Image image = Image(image: assetImage);

    return Container(
      child: image,
    );
  }
}

