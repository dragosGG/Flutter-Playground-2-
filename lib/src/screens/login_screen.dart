import "package:flutter/material.dart";

class LoginScreen extends StatefulWidget {

   createState() {

      return LoginScreenState();
    }
}


class LoginScreenState extends State <LoginScreen> {

final formKey = GlobalKey<FormState>();
  
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [emailField(),
          passwordField(),
          submitButton()],
        ),
      ),

    );
  }



Widget emailField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: 'Email Address',
      hintText: 'you@example.com',
    ),
  );

}

Widget passwordField() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: "Enter Password",
      hintText: "Password",
    ),
  );

}

Widget submitButton() {
  return RaisedButton(
    color: Colors.blue,
    child:Text("submit"),
    onPressed: () {
      formKey.currentState.reset();
    },

  );
}
}