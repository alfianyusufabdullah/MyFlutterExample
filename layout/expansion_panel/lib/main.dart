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

class Panel {
  bool isExpand;
  final String header;
  final Widget body;

  Panel({this.isExpand, this.header, this.body});
}

class Home extends StatefulWidget {
  final String title;

  const Home({Key key, this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Panel> _panels = new List<Panel>();

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 16; i++) {
      _panels.add(
        Panel(
          isExpand: false,
          header: "$i",
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: ListTile(
                    leading: Icon(Icons.widgets),
                    title: Text('Title'),
                    subtitle: Text('Subtitle $i'),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }

  ExpansionPanel _buildPanels(Panel panel) {
    return ExpansionPanel(
        headerBuilder: (BuildContext context, bool isExpanded) {
          return Container(
            child: Text('Header ${panel.header}'),
            padding: EdgeInsets.all(10.0),
          );
        },
        body: panel.body,
        isExpanded: panel.isExpand);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpand) {
                setState(() {
                  _panels[index].isExpand = !_panels[index].isExpand;
                });
              },
              children: _panels.map(_buildPanels).toList(),
            )
          ],
        ),
      ),
    );
  }
}
