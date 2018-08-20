import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _text = "Hello Flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                _text.isEmpty ? "" : _text,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Insert First Name',
                  labelText: 'Insert First Name',
                  icon: Icon(Icons.image),
                ),
                keyboardType: TextInputType.text,
                onChanged: (text) {
                  setState(() {
                    _text = text.isEmpty ? "" : "Your first name $text";
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Insert Last Name',
                  labelText: 'Insert Last Name',
                  icon: Icon(Icons.image),
                ),
                keyboardType: TextInputType.text,
                onChanged: (text) {
                  setState(() {
                    _text = text.isEmpty ? "" :  "Your last name $text";
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
