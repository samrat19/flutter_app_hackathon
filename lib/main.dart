import 'package:flutter/material.dart';
import 'package:flutter_app_hackathon/nextpage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();

  void checking() {
    setState(() {
      String email = t1.text;
      String password = t2.text;

      if (email == "abc@abc.com") {
        if (password == "abcd") {
          t1.clear();
          t2.clear();
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new NewPage()));
        } else {}
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(fit: StackFit.expand, children: <Widget>[
        new Theme(
          data: new ThemeData(
              brightness: Brightness.light,
              inputDecorationTheme: new InputDecorationTheme(
                // hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
                labelStyle: new TextStyle(color: Colors.blue, fontSize: 25.0),
              )),
          isMaterialAppTheme: true,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.all(40.0),
                child: new Form(
                  autovalidate: true,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                            labelText: "Enter Email",
                            fillColor: Colors.red,
                            hintText: "john@newman.com"),
                        keyboardType: TextInputType.emailAddress,
                        controller: t1,
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(
                            labelText: "Enter Password",
                            fillColor: Colors.red,
                            hintText: "johnye1234"),
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        controller: t2,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                      ),
                      new MaterialButton(
                        height: 50.0,
                        minWidth: 150.0,
                        color: Colors.red,
                        splashColor: Colors.blue,
                        textColor: Colors.white,
                        child: new Text("Log In",
                          style: TextStyle(
                              color: Colors.white, fontSize: 25.0
                          ),
                        ),
                        onPressed: checking,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
