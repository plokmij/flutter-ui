import 'package:flutter/material.dart';
import 'signup.dart';

class Login extends StatelessWidget {
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
        backgroundColor: Colors.white,
        title: Icon(
          Icons.ac_unit,
          color: Colors.blue,
        ),
        centerTitle: true,
        actions: <Widget>[
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
            },
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Sign up",
                  style: appBarSignUpButtonStyle,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.more_vert,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    TextStyle myStyle = TextStyle(
      fontSize: 27,
      fontWeight: FontWeight.w700,
    );
    return Column(
      children: <Widget>[
        /* Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          child: Row(
            
          ),
        ),*/
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Log in to Twitter.",
                  style: myStyle,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Phone number, email address, or username.",
                  //hasFloatingPlaceholder: false,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  //hasFloatingPlaceholder: false,
                  //hintText: "81291247294",
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Text(
              "Forgotten you password?",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
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
                      "Log in",
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
