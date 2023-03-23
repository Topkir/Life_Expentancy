import 'package:flutter/material.dart';
import './InputPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        scaffoldBackgroundColor: Colors.lightBlue,
        primarySwatch: Colors.lightBlue,

      ),
      home: InputPage(),
    );
  }
}

