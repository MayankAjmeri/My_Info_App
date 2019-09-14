import 'package:flutter/material.dart';

class Coder extends StatefulWidget {
  @override
  _CoderState createState() => _CoderState();
}

class _CoderState extends State<Coder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Coder"),centerTitle: true,),
      body: Center(
        child: Text("Under Development...",style: TextStyle(fontWeight: FontWeight.bold),),
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