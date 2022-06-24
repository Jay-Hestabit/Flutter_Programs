// ignore_for_file: use_key_in_widget_constructors

import 'package:firebase_flutter/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return either Home or Authenticate Widget
    return Authenticate();
  }
}
