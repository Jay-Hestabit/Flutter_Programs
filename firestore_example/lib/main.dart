// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, duplicate_ignore, unused_field

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FireStoreApp());
}

class FireStoreApp extends StatefulWidget {
  const FireStoreApp({Key? key}) : super(key: key);

  @override
  _FireStoreAppState createState() => _FireStoreAppState();
}

class _FireStoreAppState extends State<FireStoreApp> {
  final textController = TextEditingController();
  final _heck = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    CollectionReference groceries = _heck.collection('Groceries');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: TextField(
            controller: textController,
          ),
        ),
        body: Center(
          child: StreamBuilder(
              stream: groceries.orderBy('Name').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  // ignore: prefer_const_constructors
                  return Center(child: Text('Loading'));
                }
                return ListView(
                  children: snapshot.data!.docs.map((groceries) {
                    return Center(
                      child: ListTile(
                        title: Text(groceries['Name']),
                        onLongPress: () {
                          groceries.reference.delete();
                        },
                      ),
                    );
                  }).toList(),
                );
              }),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          onPressed: () {
            groceries.add({
              'Name': textController.text,
            });
            textController.clear();
          },
        ),
      ),
    );
  }
}
