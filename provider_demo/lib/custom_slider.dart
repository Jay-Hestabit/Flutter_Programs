// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'progress_value_provider.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  void _onValueChanged(double val) {
    Provider.of<ProgressValue>(context, listen: false).progress = val;
  }

  @override
  Widget build(BuildContext context) {
    final progress = Provider.of<ProgressValue>(context).progress;
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 30),
      child: Slider(
        onChanged: _onValueChanged,
        value: progress,
      ),
    );
  }
}
