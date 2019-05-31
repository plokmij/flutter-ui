import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Icon(
          Icons.ac_unit,
          color: Colors.grey,
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("Sign up"),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
