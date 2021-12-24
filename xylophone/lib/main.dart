import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers_api.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child:  FlatButton(
              color: Colors.blue,
              onPressed: (){
                //final play = AudioCache();
                final as=AudioPlayer();
                as.play("note7.wav");
              },child: Text("Play"),
            ),
          ),
        ),
      ),
    );
  }
}
