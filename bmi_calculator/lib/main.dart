import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bmi_calculator/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            color: Color(0xFF0A0E21)
          ),
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
          // textTheme: TextTheme(
          //     bodyText2: TextStyle(color: Color(0xFFFFFFFF))),
      ),
      home:const InputPage(),
    );
  }
}

