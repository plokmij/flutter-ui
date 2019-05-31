import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

class Welcome extends StatelessWidget {
  final double height;
  final double width;

  Welcome({this.height, this.width});

  Widget build(BuildContext context) {
    double leftPadding = width * 0.1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Icon(
          Icons.ac_unit,
          color: Colors.grey,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: leftPadding,
          right: leftPadding,
        ),
        child: buildBody(context),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    TextStyle myStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w700,
    );

    TextStyle buttonStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    );

    TextStyle bottomText = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Spacer(),
          Text(
            "See what's",
            style: myStyle,
          ),
          Text(
            "happening in the",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "world right now.",
            style: myStyle,
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Signup()));
            },
            onLongPress: () {
              print("WTF");
            },
            borderRadius: BorderRadius.all(Radius.circular(25)),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: width / 5,
              ),
              child: Text(
                "Create account",
                style: buttonStyle,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Row(
              children: <Widget>[
                Text(
                  "Have an account already?",
                  style: bottomText,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    "Log in",
                    style: bottomText.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
