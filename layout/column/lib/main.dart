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
      home: new Home(title: 'Column'),
    );
  }
}

class Home extends StatelessWidget {
  final String title;

  const Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Text In Column 1',
            style: TextStyle(fontSize: 20.0),
          ),
          Text(
            'Text In Column 2',
            style: TextStyle(fontSize: 20.0),
          ),
          Text(
            'Text In Column 3',
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
