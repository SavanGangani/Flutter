import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Dicee',
          style: TextStyle(
            fontFamily: 'LrishGrover',
            fontWeight: FontWeight.w900,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.blueGrey[600],
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceeNumber = 1;
  int rightDiceeNumber = 1;

  void changeDiceeFace(){
    setState(() {
      leftDiceeNumber = Random().nextInt(6) + 1;
      rightDiceeNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeDiceeFace();
                });
              },
              child: Image.asset('images/dice$leftDiceeNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeDiceeFace();
                  });
                },
                child: Image.asset('images/dice$rightDiceeNumber.png')),
          )
        ],
      ),
    );
  }
}
