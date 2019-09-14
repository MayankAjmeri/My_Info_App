import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(
//     home: Gamer(),
//   ));
// }

class Gamer extends StatefulWidget {
  @override
  _GamerState createState() => _GamerState();
}

class _GamerState extends State<Gamer> {
  Container _gm(double w, double h, String s) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Image.asset(
        s,
        fit: BoxFit.fill,
        height: h,
        width: w,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gamer"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _gm(600,200,"images/apex.jpg"),
            _gm(600,200,"images/grw.jpg"),
            _gm(600,180,"images/mw.jpg"),
            _gm(600,160,"images/csgo.jpg"),
            _gm(600,180,"images/pubg.jpg"),
          ],
        ),
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
