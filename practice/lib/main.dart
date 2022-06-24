// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Practice Done',
      debugShowCheckedModeBanner: false,
      home: Practice(),
    );
  }
}

class Practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Practice Done',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        drawer: Drawer(),
        body: InkWell(
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RotatedBox(
                    quarterTurns: 2,
                    child: Container(
                      height: 200,
                      width: 200,
                      alignment: Alignment.center,
                      // transform: Matrix4.rotationZ(90 * 3.14 / 180),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 223, 215, 214),
                        border: Border.all(color: Colors.yellow, width: 10),
                      ),
                      child: Text(
                        'Hy practice',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
