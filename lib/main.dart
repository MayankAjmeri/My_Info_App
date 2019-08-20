import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Mayank Ajmeri',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ),
                Text('\"MVRCK\"',
                  style: TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
                  
                ),
              ],
            ),
          ),
        ],
      ),
    );
  
  Widget build(BuildContext context) {

    Color color = Theme.of(context).accentColor;

  Widget buttonSection = Container(
    padding: const EdgeInsets.only(bottom: 32),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.gamepad, 'GAMER'),
        _buildButtonColumn(color, Icons.music_note, 'GUITARIST'),
        _buildButtonColumn(color, Icons.book, 'READER'),
        _buildButtonColumn(color, Icons.laptop, 'CODER'),
      ],
    ),
  );
  Widget buttonSection2 = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.local_cafe, 'JAVA'),
        _buildButtonColumn(color, Icons.local_parking, 'PYTHON'),
        _buildButtonColumn(color, Icons.android, 'FLUTTER'),
      ]
    ),
  );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'MVRCK',
      home: Scaffold(
        appBar: AppBar(title: Text('My Info',),backgroundColor: Colors.blueAccent,centerTitle: true,),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Image.network("https://source.unsplash.com/random"),
              Image.asset('images/DSC_0116.JPG', 
                width: 600, 
                height: 240,
                fit:BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              buttonSection2,
            ],
          ),
        ),
      ),
    );
  }
  Column _buildButtonColumn(Color color, IconData icon, String label){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(label, style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: color,
          ),),
        ),
      ],
    );
  }
}