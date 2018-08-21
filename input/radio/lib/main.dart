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
  int _radioGroupValue;
  String _selected = "Hello Flutter";

  void _select(int value){
    _radioGroupValue = value;

    setState(() {
      switch(_radioGroupValue){
        case 0:
          _selected = "Android Selected";
          break;
        case 1:
          _selected = "iOS Selected";
          break;
        case 2:
          _selected = "Fuchsia Selected";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                _selected,
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _radioGroupValue,
                  onChanged: (value) {
                    _select(value);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text('Android'),
                ),
                Radio(
                  value: 1,
                  groupValue: _radioGroupValue,
                  onChanged: (value) {
                    _select(value);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text('iOS'),
                ),
                Radio(
                  value: 2,
                  groupValue: _radioGroupValue,
                  onChanged: (value) {
                    _select(value);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text('Fuchsia'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
