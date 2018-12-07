import 'package:flutter/material.dart';
import 'HomePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
        tag: 'hero',
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50),
          child: CircleAvatar(
            radius: 48,
            backgroundColor: Colors.blue,
          ),
        ));

    final emailInput = TextFormField(
      decoration: new InputDecoration(labelText: 'Email'),
    );

    final passwordInput = TextFormField(
      decoration: new InputDecoration(labelText: 'Password'),
      obscureText: true,
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        shadowColor: Colors.lightBlueAccent.shade100,
        child: MaterialButton(
          minWidth: 200,
          color: Colors.lightBlueAccent,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text(
            'Log In',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[logo, emailInput, passwordInput, loginButton],
      ),
    );

    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: body,
      ),
    );
  }
}
