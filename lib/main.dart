import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

const _duration = Duration(milliseconds: 500);

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>  {
  
  Color color;

  @override
  void initState() {
    super.initState();
  }
  
  int index = 0;

  void changeIndex() {
    setState(() => index);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AnimatedContainer (
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
          ),
          duration: _duration,
          child: RaisedButton(
            onPressed: () => changeIndex(),
            child: Text('Click'),
          )
        )
      )
    );
  }
}
