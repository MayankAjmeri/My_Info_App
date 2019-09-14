import 'package:flutter/material.dart';

class Reader extends StatefulWidget {
  @override
  _ReaderState createState() => _ReaderState();
}

class _ReaderState extends State<Reader> {
  Row _bks(double l, double t, double r, double b, String s1, String s2) {
    return Row(
      children: <Widget>[
        _bk(l, t, r, b, s1),
        _bk(r, t, l, b, s2),
      ],
    );
  }

  Container _bk(double l, double t, double r, double b, String s) {
    return Container(
      padding: EdgeInsets.fromLTRB(l, t, r, b),
      child: Image.asset(
        s,
        width: 162,
        height: 250,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reader"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _bks(12, 12, 6, 6, "images/thg.jpg", "images/af1.jpg"),
            _bks(12, 6, 6, 6, "images/af2.jpg", "images/af3.jpg"),
            _bks(12, 6, 6, 6, "images/tsd.jpg", "images/dwk1.jpg"),
            _bks(12, 6, 6, 6, "images/dwk2.jpg", "images/dwk3.jpg"),
            _bks(12, 6, 6, 6, "images/hp1.jpg", "images/hp2.jpg"),
            _bks(12, 6, 6, 6, "images/hp3.jpg", "images/hp4.jpg"),
            _bks(12, 6, 6, 6, "images/hp5.jpg", "images/hp6.jpg"),
            _bks(12, 6, 6, 12, "images/hp7.jpg", "images/hp8.jpg"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
