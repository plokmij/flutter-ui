import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Icon(
          Icons.ac_unit,
          color: Colors.grey,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 40),
        child: buildBody(),
      ),
    );
  }

  Widget buildBody() {
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
            "See whats's",
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
            onTap: (){
              print("null");
            },
            onLongPress: (){
              print("WTF");
            },
            borderRadius: BorderRadius.all(Radius.circular(25)),
            
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 80.0,
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
                Text(
                  "Log in",
                  style: bottomText.copyWith(
                    color: Colors.blue,
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
