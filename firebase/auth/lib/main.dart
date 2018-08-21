import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:auth/auth.dart' as FlutterAuth;
import 'dart:async';

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
  String _status = "Not Authenticated";
  bool _signInButtonActive = true;
  bool _signInOutActive = false;

  void signInAsAnonymous() async {
    bool status = await FlutterAuth.signInAsAnonymous();
    setState(() {
      if (status) {
        _status = "Sign In As Anonymous";
        _signInButtonActive = false;
        _signInOutActive = true;
      } else {
        _status = "Sign In Failed!";
        _signInButtonActive = true;
        _signInOutActive = false;
      }
    });
  }

  void signInWithGoogle() async {
    final FirebaseUser user = await FlutterAuth.signInWithGoogle();
    setState(() {
      if (user != null) {
        _status = "Hi ${user.email}!";
        _signInButtonActive = false;
        _signInOutActive = true;
      } else {
        _status = "Sign In Failed!";
        _signInButtonActive = true;
        _signInOutActive = false;
      }
    });
  }

  void signOut() async {
    await FlutterAuth.signOut();
    setState(() {
      _status = "Sign Out!";
      _signInButtonActive = true;
      _signInOutActive = false;
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
              padding: const EdgeInsets.all(10.0),
              child: Text(
                _status,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            RaisedButton(
              onPressed: _signInButtonActive ? signInAsAnonymous : null,
              child: Text('Sign In As Anonymous'),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: _signInButtonActive ? signInWithGoogle : null,
              child: Text('Sign With Google'),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: _signInOutActive ? signOut : null,
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
