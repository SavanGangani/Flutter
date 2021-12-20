import 'package:flutter/material.dart';
import 'package:flutter_widget_sample/basic_widgets/navigation_route2.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Route"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Second Page"),
          onPressed: () {
            Navigator.pushNamed(context, 'second');
          },
        ),
      ),
    );
  }
}
