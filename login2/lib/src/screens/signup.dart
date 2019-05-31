import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  final TextStyle appBarSignUpButtonStyle = TextStyle(
    color: Colors.blue,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.blue,
        ),
        backgroundColor: Colors.white,
        title: Icon(
          Icons.ac_unit,
          color: Colors.blue,
        ),
        centerTitle: true,
        
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    TextStyle myStyle = TextStyle(
      fontSize: 33,
      fontWeight: FontWeight.w800,
    );
    return Column(
      children: <Widget>[
        Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Text(
                  "Create your account",
                  textAlign: TextAlign.center,
                  style: myStyle,
                ),
              ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              TextField(
                decoration: InputDecoration(
                  labelText: "Name",
                  //hasFloatingPlaceholder: false,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Phone number or email address",
                  //hasFloatingPlaceholder: false,
                  //hintText: "81291247294",
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey))),
          height: 60,
          child: Row(
            children: <Widget>[
              Spacer(),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: Colors.blue,
                    ),
                    child: Text(
                      "Next",
                      style: appBarSignUpButtonStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
