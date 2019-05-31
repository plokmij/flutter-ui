import 'package:flutter/material.dart';
import 'screens/welcome.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PreLoad(),
    );
  }
}

class PreLoad extends StatelessWidget {
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Welcome(
      width: width,
      height: height,
    );
  }
}
