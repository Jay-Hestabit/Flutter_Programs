// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, unused_field, unused_local_variable, avoid_print

import 'package:firebase_flutter/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Brew Crew'),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50),
          // ignore: deprecated_member_use
          child: RaisedButton(
            child: Text('Sign in Anonymously'),
            onPressed: () async {
              dynamic result = await _auth.signInAnon();
              if (result == null) {
                print('Error Signing in');
              } else {
                print('Signed in Successfully');
                print(result);
              }
            },
          )),
    );
  }
}
