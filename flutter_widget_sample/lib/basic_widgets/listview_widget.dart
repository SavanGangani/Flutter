import 'package:flutter/material.dart';

class ListViewscreen extends StatelessWidget {
  const ListViewscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body:  ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            width: 100.0,
            color: Colors.teal,
          ),
          Container(
            width: 100.0,
            color: Colors.blue,
          ),
          Container(
            width: 100.0,
            color: Colors.yellowAccent,
          ),
          Container(
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            width: 100.0,
            color: Colors.orangeAccent,
          ),
          Container(
            width: 100.0,
            color: Colors.teal,
          ),
          Container(
            width: 100.0,
            color: Colors.blue,
          ),
          Container(
            width: 100.0,
            color: Colors.yellowAccent,
          ),
          Container(
            width: 100.0,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}


