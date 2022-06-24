// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'progress_value_provider.dart';

class VideoProgress extends StatelessWidget {
  const VideoProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final progress = Provider.of<ProgressValue>(context).progress * 100;

    return Center(
      child: Text(
        'VideoProgress\n${progress.toStringAsFixed(2)}%',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
