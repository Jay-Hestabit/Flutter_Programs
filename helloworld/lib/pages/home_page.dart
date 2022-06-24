// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, import_of_legacy_library_into_null_safe, dead_code, sort_child_properties_last, prefer_const_literals_to_create_immutables, duplicate_ignore, unused_field, prefer_final_fields, prefer_typing_uninitialized_variables, unused_local_variable, unused_element, avoid_print, override_on_non_overriding_member, annotate_overrides, unnecessary_brace_in_string_interps, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/utils/routes.dart';
import 'package:http/http.dart' as http;
import 'package:cube_transition/cube_transition.dart';
import 'dart:convert';
import 'package:bulleted_list/bulleted_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

var count = 0;

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      child: Text(
        '${++count}',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _HomePageState extends State<HomePage> {
  //TextEditingController _nameController = TextEditingController();
  var url = 'https://jsonplaceholder.typicode.com/photos';
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Hello Jay Mittal',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.login),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: data != null
              ? ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(data[index]["title"]),
                      leading: MyBullet(),
                      // leading: Image.network(data[index]["thumbnailUrl"], errorBuilder:
                      //     (BuildContext context, Object exception,
                      //         StackTrace? stackTrace) {
                      //   return Text('Error');
                      // }),
                    );
                  },
                )
              : Center(child: CircularProgressIndicator())),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Jay Mittal'),
                accountEmail: Text('jayhestabit@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/jay.jpg'),
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
              subtitle: Text('Personal'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Email'),
              subtitle: Text('jayhestabit@gmail.com'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Starred'),
              subtitle: Text('Important emails'),
              trailing: Icon(Icons.send_outlined),
            ),
            ListTile(
              leading: Icon(Icons.lock_clock),
              title: Text('Snoozed'),
              // subtitle: Text('Trash'),
              trailing: Icon(Icons.send_outlined),
            ),
            ListTile(
              leading: Icon(Icons.phonelink_erase),
              title: Text('Bin'),
              subtitle: Text('Trash'),
              trailing: Icon(Icons.send_outlined),
            ),
            ListTile(
              leading: Icon(Icons.error),
              title: Text('Spam'),
              // subtitle: Text('Trash'),
              trailing: Icon(Icons.send_outlined),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              // subtitle: Text('Trash'),
              trailing: Icon(Icons.send_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
