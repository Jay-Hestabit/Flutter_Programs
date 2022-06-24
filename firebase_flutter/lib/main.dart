// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_flutter/screens/wrapper.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
      debugShowCheckedModeBanner: false,
    );
  }
}
