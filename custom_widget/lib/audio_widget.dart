// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, sized_box_for_whitespace, library_private_types_in_public_api, non_constant_identifier_names

import 'package:flutter/material.dart';

class AudioWidget extends StatefulWidget {
  @override
  _AudioWidgetState createState() => _AudioWidgetState();
}

class _AudioWidgetState extends State<AudioWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.play_arrow), onPressed: () {  },),
          Text('00:37'),
          Expanded(
            child: Slider(
              value: 0.5,
              activeColor: Theme.of(context).textTheme.bodyText2?.color,
              inactiveColor: Theme.of(context).disabledColor,
              onChanged: (value) {},
            ),
          ),
          Text('01:15'),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
