import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sign Up!",
      home: Scaffold(
        body: buildBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.navigate_next),
          backgroundColor: Colors.black87,
        ),
      ),
    );
  }

  Widget buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Welcome",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w700,
                color: Colors.black87),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: CupertinoTextField(
            prefix: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                Icons.email,
                color: Colors.black87,
              ),
            ),
            placeholder: "Email",
            cursorWidth: 1,
            padding: EdgeInsets.all(10),
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.black54,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: CupertinoTextField(
            style: TextStyle(
              fontSize: 20,
            ),
            prefix: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                Icons.phone,
                color: Colors.black87,
              ),
            ),
            placeholder: "Phone",
            cursorWidth: 1,
            padding: EdgeInsets.all(10),
            keyboardType: TextInputType.phone,
            cursorColor: Colors.black54,
          ),
        )
      ],
    );
  }
}
