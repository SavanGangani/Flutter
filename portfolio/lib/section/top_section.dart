import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxHeight: 800,
        minHeight: 200,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/top_section.jpg"),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 100.0,
            spreadRadius: 2.0,
          )
        ]
      ),
      child: Container(
        padding: EdgeInsets.only(left: 300),
        margin: EdgeInsets.only(top: 50),
        width: 1200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset("images/logo.png",),
            SizedBox(
              height: 50,
            ),
            ClipRRect(
              borderRadius : BorderRadius.circular(10),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  padding: EdgeInsets.only(left: 90, top: 40),
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 1000,
                    maxHeight: size.height*0.5,
                  ),
                  color: Colors.white.withOpacity(0.01),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Hello There!",
                            style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
                          ),
                          Text(
                            "Savan \nGangani",
                            style: TextStyle(
                                fontSize: 90,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 1.2
                            ),
                          ),
                          Text(
                            "Flutter Developer ",
                            style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                        constraints: BoxConstraints(maxHeight: 860, maxWidth: 639),
                        child: Image.asset("images/savan.png"),
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 142.2),
              height: 80,
              width: 1000,
              constraints: BoxConstraints(maxHeight: 110),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Home",
                    style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
                  ),
                  Text(
                    "About",
                    style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
                  ),
                  Text(
                    "Skill",
                    style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
                  ),
                  Text(
                    "Portfolio",
                    style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
                  ),
                  Text(
                    "Testimonial",
                    style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
