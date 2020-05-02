import 'package:fitnessapp/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyStudyApp());

class MyStudyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyStudyApp',
      theme: ThemeData(
        primaryColor: Colors.blue,
        textTheme: TextTheme(
          title: TextStyle(color: Colors.white)
        )
      ),
      home: HomePage(),
    );
  }
}
