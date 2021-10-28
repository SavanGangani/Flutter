import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.teal[700],
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/IMG_0296.jpg'),
                ),
                Text(
                  "Savan Gangani",
                  style: TextStyle(
                    fontFamily: 'DancingScript',
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  "FLUTTER DEVELOPER",
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    color: Colors.teal.shade100,
                    fontSize: 15,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                  width: 120,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Padding(
                    padding: EdgeInsets.all(08),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          size: 25,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "+91 7265054454",
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro',
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),

                  child: Padding(
                    padding: EdgeInsets.all(08),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.mail,
                          size: 25,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "savangangani8518@gmail.com",
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro',
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
