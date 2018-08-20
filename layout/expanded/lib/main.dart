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
      home: new Home(title: 'Expanded'),
    );
  }
}

class Home extends StatelessWidget {
  final String title;

  const Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                height: 200.0,
                width: 200.0,
                color: Colors.blueAccent,
                child: Center(
                    child: Text(
                  'Area 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                )),
              ),
            ),
            Expanded(
              child: Container(
                height: 200.0,
                width: 200.0,
                color: Colors.red,
                child: Center(
                    child: Text(
                  'Area 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                )),
              ),
            ),
            Expanded(
              child: Container(
                height: 200.0,
                width: 200.0,
                color: Colors.green,
                child: Center(
                    child: Text(
                      'Area 3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
