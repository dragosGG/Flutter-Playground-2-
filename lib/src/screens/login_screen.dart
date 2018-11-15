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
    validator: (String value) {
      // return null if valid - otherwise string with return message if invalid
      if(!value.contains('@')) {
        return  'Please enter a valid email';
      }
      return null;
    },
    onSaved: (String value) {
      print(value);
    },
  );

}

Widget passwordField() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: "Enter Password",
      hintText: "Password",
    ),
    validator: (String value) {
      if(value.length < 4) {
        return  "Password must be at least 4 characters";
      }
      return null;
    },
    onSaved: (String value) {
      print(value);
    },
  );

}

Widget submitButton() {
  return RaisedButton(
    color: Colors.blue,
    child:Text("submit"),
    onPressed: () {
      if(formKey.currentState.validate()){
          formKey.currentState.save();
      }
    },
    

  );
}
}