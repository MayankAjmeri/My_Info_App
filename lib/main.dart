import 'package:flutter/material.dart';
import 'package:my_info/coder.dart';
import 'package:my_info/gamer.dart';
import 'package:my_info/guitarist.dart';
import 'package:my_info/reader.dart';
import 'package:my_info/java.dart';
import 'package:my_info/flutter.dart';
import 'package:my_info/python.dart';

void main() => runApp(App());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
      theme: ThemeData.light(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _value = false;

  ThemeData myTheme = ThemeData.light();

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
                  )),
              Text(
                '\"MVRCK\"',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  _onPressed() {
    if (_value == true) {
      setState(() {
        _value = false;
        myTheme = ThemeData.light();
      });
    } else {
      setState(() {
        _value = true;
        myTheme = ThemeData.dark();
      });
    }
  }

  Widget build(BuildContext context) {
    Color color = Theme.of(context).accentColor;

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(icon),
            color: color,
            onPressed: () {
              // Navigator.push( context,
              // MaterialPageRoute(builder: (context) => Gamer()));,
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    switch (label) {
                      case "GAMER":
                        return Gamer();
                        break;
                      case "GUITARIST":
                        return Guitarist();
                        break;
                      case "READER":
                        return Reader();
                        break;
                      case "CODER":
                        return Coder();
                        break;
                      case "JAVA":
                        return Java();
                        break;
                      case "PYTHON":
                        return Python();
                        break;
                      case "FLUTTER":
                        return Flutter();
                        break;
                    }
                  },
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

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
      padding: const EdgeInsets.only(bottom: 32),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        _buildButtonColumn(color, Icons.local_cafe, 'JAVA'),
        _buildButtonColumn(color, Icons.local_parking, 'PYTHON'),
        _buildButtonColumn(color, Icons.android, 'FLUTTER'),
      ]),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Info',
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: _onPressed,
            icon: _value ? Icon(Icons.brightness_7) : Icon(Icons.brightness_3),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Image.network("https://source.unsplash.com/random"),
            Image.asset(
              'images/DSC_0116.JPG',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            buttonSection2,
          ],
        ),
      ),
    );
  }
}
