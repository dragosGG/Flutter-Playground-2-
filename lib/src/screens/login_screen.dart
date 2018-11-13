import "package:flutter/material.dart";

class LoginScreen extends StatefulWidget {

   createState() {

      return LoginScreenState();
    }
}


class LoginScreenState extends State <LoginScreen> {
  Widget build() {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Text("Login Screen"),

    );
  }
}