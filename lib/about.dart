import 'package:flutter/material.dart';

import 'package:flutter_app_hackathon/main.dart';
import 'package:flutter_app_hackathon/whowe.dart';

class AboutUS extends StatelessWidget {
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
          onPressed: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new Contentpage()));
          },
        ),
        title: Text("What we Use in App"),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new WHOwe()));
              },
              icon: Icon(Icons.arrow_forward),
            ),
          ]
      ),
        body: Container(
          child: new ListView(
            children: <Widget>[

              /* HelloWorld */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Hello World!",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Data Types */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Data Types",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Variables */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Variables",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Operators */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Operators",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Decision Statements */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Decision Statements",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Loops */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Loops",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Lists */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Lists",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Map */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Map",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Symbols */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Symbols",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Emums */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Enums",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Functions */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Functions",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Interfaces */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Interfaces",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Class and Object */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Class and Object",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Collection */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Collection",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Generics */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Generics",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),

              /* Exceptions */
              MaterialButton(
                  onPressed: null,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_arrow_right),
                    title: Text(
                        "Exceptions",
                        style: TextStyle(
                            fontSize: 20.0
                        )
                    ),
                  )
              ),
            ],
          ),
        )
    );
  }
}

