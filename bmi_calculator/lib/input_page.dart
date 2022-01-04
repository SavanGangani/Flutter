import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculator_brain.dart';
import 'result_page.dart';
import 'cardchild.dart';
import 'sample_box.dart';

const originalColor = Color(0xFF1D1E33);
const newColor = Color(0xFF111328);
const bottomConatinerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = newColor;
  Color femaleCardColour = newColor;
  final weight = 180;
  int height = 180;
  int weight1 = 60;
  int age = 20;

  void updateColour(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColour == newColor) {
        maleCardColour = originalColor;
        femaleCardColour = newColor;
      } else {
        maleCardColour = newColor;
      }
    }
    if (selectedGender == Gender.female) {
      if (femaleCardColour == newColor) {
        femaleCardColour = originalColor;
        maleCardColour = newColor;
      } else {
        femaleCardColour = newColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI Calculator"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColour(Gender.male);
                        });
                      },
                      child: SampleBox(
                        colour: maleCardColour,
                        cardChild: cardChild(
                          icon: FontAwesomeIcons.mars,
                          label: "MALE",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColour(Gender.female);
                        });
                      },
                      child: SampleBox(
                        colour: femaleCardColour,
                        cardChild: cardChild(
                          icon: FontAwesomeIcons.venus,
                          label: "FEMALE",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SampleBox(
                colour: originalColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "HEIGHT",
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(),
                            style: const TextStyle(
                                fontSize: 38.0, fontWeight: FontWeight.bold)),
                        const Text("cm", style: labelTextStyle)
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbColor: const Color(0xFFEB1555),
                          inactiveTrackColor: const Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          overlayColor: const Color(0x29EB1555),
                          thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: SampleBox(
                        colour: originalColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "WEIGHT",
                              style: labelTextStyle,
                            ),
                            Text(
                              weight1.toString(),
                              style: const TextStyle(
                                  fontSize: 38.0, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {},
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {},
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                  Expanded(
                    child: SampleBox(
                        colour: originalColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "AGE",
                              style: labelTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: const TextStyle(
                                  fontSize: 38.0, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {},
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                CalculatorBrain calc = CalculatorBrain(height: height, weight: weight1);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultsPage(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpritation(),
                    )));
              },
              child: Container(
                child: const Center(
                  child: Text(
                    "CALCULATOR",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                color: bottomConatinerColor,
                margin: const EdgeInsets.only(top: 05),
                width: double.infinity,
                height: 80.0,
              ),
            ),
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 45.0,
        height: 45.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      onPressed: onPressed(),
    );
  }
}
