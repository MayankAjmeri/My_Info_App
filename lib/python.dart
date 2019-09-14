import 'package:flutter/material.dart';

class Python extends StatefulWidget {
  @override
  _PythonState createState() => _PythonState();
}

class _PythonState extends State<Python> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Python"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Under Development...",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}