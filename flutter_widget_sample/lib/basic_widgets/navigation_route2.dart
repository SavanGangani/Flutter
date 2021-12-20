import 'package:flutter/material.dart';


class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to back"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
