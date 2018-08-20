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
      home: Home(title: 'Padding'),
    );
  }
}

class Home extends StatelessWidget {
  final String title;

  const Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding:
              EdgeInsets.only(top: 50.0, bottom: 60.0, left: 70.0, right: 80.0),
          child: Text(
            'Text In Padding',
            style: TextStyle(fontSize: 30.0),
          )),
    );
  }
}
