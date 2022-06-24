// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, duplicate_import, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/pages/home_page.dart';
import 'package:helloworld/pages/login_page.dart';
import 'package:helloworld/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themeMode: ThemeMode.light,
      theme: ThemeData(
        //   primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),

      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData(brightness: Brightness.dark),

      // initialRoute: "/login",
      home: LoginPage(),
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
