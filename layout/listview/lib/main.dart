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
      home: new Home(title: 'Expansion Panel'),
    );
  }
}

class Home extends StatefulWidget {
  final String title;

  const Home({Key key, this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> widgets = new List<Widget>();

  void onTap(int index){
    print("Click Position $index");
  }

  @override
  void initState() {
    super.initState();
    print("State");

    for (int i = 1; i < 16; i++) {
      widgets.add(
        Container(
          child: ListTile(
            leading: Icon(Icons.widgets),
            title: Text('Title'),
            subtitle: Text('Subtitle $i'),
            onTap: () => onTap(i),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return widgets[index];
        },
        itemCount: widgets.length,
      ),
    );
  }
}
