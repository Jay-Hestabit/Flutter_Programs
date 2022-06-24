// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print, sort_child_properties_last, unused_import, prefer_typing_uninitialized_variables, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloworld/pages/home_page.dart';
import 'package:helloworld/utils/routes.dart';

import 'package:cube_transition/cube_transition.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
                // height: 500,
              ),
              SizedBox(
                height: 10.0,
                width: 1000.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 5, 166, 240),
                  ),
                ),
              ),
              Text(
                "Welcome to the Login Page",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 1000.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 5, 166, 240),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        labelText: "Enter Username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Enter Password",
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, MyRoutes.homeRoute);
                        Navigator.of(context).push(CubePageRoute(
                          enterPage: HomePage(),
                          exitPage: LoginPage(),
                          duration: Duration(microseconds: 900),
                        ));
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      style: TextButton.styleFrom(
                          minimumSize: Size(150, 50),
                          shadowColor: Colors.blue[800]),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom)),
            ],
          ),
        ),
      ),
    );
  }
}


//Flutter Keyboard Onfocus ScrollViewState on line 13 and 82-84.