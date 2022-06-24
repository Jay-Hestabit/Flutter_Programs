// ignore_for_file: constant_identifier_names, unused_local_variable, curly_braces_in_flow_control_structures

import 'dart:async';

// import 'package:flutter/material.dart';

// enum CounterAction { Increment, Decrement, Reset }

class CounterBloc {
  final _stateStreamController = StreamController<int>();
  StreamSink<int> get counterSink => _stateStreamController.sink; //INPUT
  Stream<int> get counterStream => _stateStreamController.stream; //OUTPUT

  // final _eventStreamController = StreamController<CounterAction>();
  // StreamSink<CounterAction> get eventSink => _eventStreamController.sink;
  // Stream<CounterAction> get eventStream => _eventStreamController.stream;

  // CounterBloc() {
  //   int counter = 0;

  //   eventStream.listen((event) {
  //     if (event == CounterAction.Increment)
  //       counter += 1;
  //     else if (event == CounterAction.Decrement)
  //       counter -= 1;
  //     else if (event == CounterAction.Reset) counter = 0;
  //     counterSink.add(counter);
  //   });
  // }
}
