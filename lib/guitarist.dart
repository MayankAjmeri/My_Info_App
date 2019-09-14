import 'package:flutter/material.dart';

class Guitarist extends StatefulWidget {
  @override
  _GuitaristState createState() => _GuitaristState();
}

class _GuitaristState extends State<Guitarist> {
  Row _bttn(Color c1, Color c2, String s1, String s2) {
    return Row(
      children: <Widget>[
        Expanded(
            child: ButtonBar(
          children: <Widget>[
            _bt(c1, s1),
            _bt(c2, s2)
          ],
        )),
      ],
    );
  }

  ButtonTheme _bt(Color color, String s)
  {
    return  ButtonTheme(
      height: 40,
      minWidth: 150,
      child: RaisedButton(
        child: Text(s),
        onPressed: () {},
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Guitarist")),
      body: Column(
        children: <Widget>[
          _bttn(Colors.greenAccent, Colors.orangeAccent, "Leads", "Chords"),
          _bttn(Colors.amberAccent, Colors.blueAccent, "Bar Chords", "Power Chords"),
          _bttn(Colors.cyanAccent, Colors.redAccent, "Riffs", "Solos"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
      ),
    );
  }
}
