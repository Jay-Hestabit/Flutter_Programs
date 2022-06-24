import 'package:flutter/material.dart';

class Provider extends ChangeNotifier {
  int _jay = 0;

  int get jay => _jay;

  set jay(int val) {
    _jay = val;
    notifyListeners();
  }
}
