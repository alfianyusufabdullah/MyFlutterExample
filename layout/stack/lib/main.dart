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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Image.asset('images/wallpaper.jpg'),
          Container(
            width: double.infinity,
            height: 50.0,
            color: Colors.black.withOpacity(0.5),
            child: Center(
              child: Text(
                'Hello Flutter',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
