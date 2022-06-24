// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_final_fields
import 'package:bloc_demo/counter_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'State Management with BLoC'),
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
  final counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              textAlign: TextAlign.center,
              'You have pushed the button this many times:',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            StreamBuilder(
                stream: counterBloc.counterStream,
                builder: (context, hello) {
                  return Text(
                    '${hello.data}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }),
            SizedBox(
              height: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    counter += 1;
                    //counterBloc.eventSink.add(CounterAction.Increment);
                    counterBloc.counterSink.add(counter);
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  width: 50,
                ),
                FloatingActionButton(
                  onPressed: () {
                    counter -= 1;
                    //counterBloc.eventSink.add(CounterAction.Decrement);
                    counterBloc.counterSink.add(counter);
                  },
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),
                SizedBox(
                  width: 50,
                ),
                FloatingActionButton(
                  onPressed: () {
                    counter = 0;
                    //counterBloc.eventSink.add(CounterAction.Reset);
                    counterBloc.counterSink.add(counter);
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.restart_alt),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
