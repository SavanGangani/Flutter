import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Random Image Generator',
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontWeight: FontWeight.w900,
            fontSize: 22,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: imageGenerator(),
    ),
  ));
}

class imageGenerator extends StatefulWidget {
  const imageGenerator({Key? key}) : super(key: key);

  @override
  _imageGeneratorState createState() => _imageGeneratorState();
}

class _imageGeneratorState extends State<imageGenerator> {
  int imageNumber = 1 ;
  void randomImageGenerator(){
     imageNumber = Random().nextInt(22) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  randomImageGenerator();
                });
              },
                child: Image.asset('images/$imageNumber.jpg')
            )),
        ],
      ),
    );
  }
}
