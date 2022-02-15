import 'package:flutter/material.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1120),
      margin: EdgeInsets.only(left: 190, top: 100),
      child: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints(maxWidth: 1110),
            height: 100,
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 72),
                  width: 8,
                  height: 100,
                  color: Colors.black,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Skill",
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 75,
                        width: 75,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Image.asset("images/web.png"),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(0.0, 2.0))
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Web Design",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFF1C5E),
                      borderRadius: BorderRadius.circular(10),
                      ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 75,
                        width: 75,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Image.asset("images/android.png"),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(0.0, 2.0))
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Android Developer",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFECDDD0),
                      borderRadius: BorderRadius.circular(10),
                      ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 75,
                        width: 75,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Image.asset("images/word press.png"),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(0.0, 2.0))
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Word Press Developer",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFB5EAD7),
                      borderRadius: BorderRadius.circular(10),
                        ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 75,
                        width: 75,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Image.asset("images/flutter.png"),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(0.0, 2.0))
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Flutter Developer",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFE2F0CB),
                      borderRadius: BorderRadius.circular(10),

                        ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
