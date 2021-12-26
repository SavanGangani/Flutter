import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void SoundPlay(int soundNumber) {
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
                        SoundPlay(1);
                      },
                      child: Text("")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.deepOrange,
                  child: FlatButton(
                      onPressed: () {
                        SoundPlay(2);
                      },
                      child: Text("")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: FlatButton(
                      onPressed: () {
                        SoundPlay(3);
                      },
                      child: Text("")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: FlatButton(
                      onPressed: () {
                        SoundPlay(4);
                      },
                      child: Text("")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.tealAccent,
                  child: FlatButton(
                      onPressed: () {
                        SoundPlay(5);
                      },
                      child: Text("")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: FlatButton(
                      onPressed: () {
                        SoundPlay(6);
                      },
                      child: Text("")),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                  child: FlatButton(
                      onPressed: () {
                        SoundPlay(7);
                      },
                      child: Text("")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
