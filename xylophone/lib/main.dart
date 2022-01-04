import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void soundPlay(int soundNumber) {
    final play = AudioCache();
    play.play("note$soundNumber.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.red,
                  child: FlatButton(
                      onPressed: () {
                        soundPlay(1);
                      },
                      child: const Text("")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.deepOrange,
                  child: FlatButton(
                      onPressed: () {
                        soundPlay(2);
                      },
                      child: const Text("")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: FlatButton(
                      onPressed: () {
                        soundPlay(3);
                      },
                      child: const Text("")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: FlatButton(
                      onPressed: () {
                        soundPlay(4);
                      },
                      child: const Text("")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.tealAccent,
                  child: FlatButton(
                      onPressed: () {
                        soundPlay(5);
                      },
                      child: const Text("")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: FlatButton(
                      onPressed: () {
                        soundPlay(6);
                      },
                      child: const Text("")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                  child: FlatButton(
                      onPressed: () {
                        soundPlay(7);
                      },
                      child: const Text("")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
