import 'package:flutter/material.dart';
import 'package:unscramble/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Navigation',
      routes: <String, WidgetBuilder>{
        //All available pages
        '/home': (BuildContext context) => MyHomePage(),
        
      },
      home: MyHomePage(), //first page displayed
    );
  }
}
