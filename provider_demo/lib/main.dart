// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/custom_slider.dart';
import 'package:provider_demo/progress_value_provider.dart';

import 'video_progress.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'State Management with Provider',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ChangeNotifierProvider(
        create: (context) => ProgressValue(),
        child: Center(
          child: Stack(
            children: <Widget>[
              Expanded(
                child: VideoProgress(),
              ),
              Positioned(
                child: CustomSlider(),
                bottom: 0,
                left: 0,
                right: 0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
