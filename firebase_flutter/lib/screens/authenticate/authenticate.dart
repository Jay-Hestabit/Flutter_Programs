// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors

import 'package:firebase_flutter/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignIn(),
    );
  }
}