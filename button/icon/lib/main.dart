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
  int _counter = 0;

  void _increment() {
    setState(() => _counter--);
  }

  void _decrement() {
    setState(() => _counter++);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Counter $_counter",
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: _decrement,
              splashColor: Colors.lightBlue,
              tooltip: 'Decrement ',
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: _increment,
              splashColor: Colors.lightBlue,
              tooltip: 'Iecrement',
            )
          ],
        ),
      ),
    );
  }
}
