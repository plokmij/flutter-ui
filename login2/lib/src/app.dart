import 'package:flutter/material.dart';
import 'screens/signup.dart';
import 'screens/login.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signup(),
    );
  }
}

class PreLoad extends StatelessWidget {
  Widget build(BuildContext context) {
    //final double width = MediaQuery.of(context).size.width;
    //final double height = MediaQuery.of(context).size.height;
    return Login();
  }
}
