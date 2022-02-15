import 'package:flutter/material.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 800,
        minHeight: 200,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/feedback.png"),
          ),
      ),
      child: Container(
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
                    padding: EdgeInsets.only(bottom: 65),
                    width: 8,
                    height: 100,
                    color: Colors.black,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.blue),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Client's testimonials that inspired me a lot",
                        ),
                        Text(
                          "Feedback Received ",
                          style: Theme.of(context).textTheme.headline4?.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xffd6a9e2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Transform.translate(
                          offset: Offset(0, -55),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 10),
                                image: DecorationImage(
                                    image: AssetImage("images/01.jpeg")
                                ),
                            ),
                          ),
                        ),
                        Text("SAVAN GANGANI",
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300,
                          height: 1.5
                        ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Savan Gangani",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xff8bbee9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Transform.translate(
                          offset: Offset(0, -55),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 10),
                              image: DecorationImage(
                                  image: AssetImage("images/01.jpeg")
                              ),
                            ),
                          ),
                        ),
                        Text("SAVAN GANGANI",
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w300,
                              height: 1.5
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Savan Gangani",
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xff98d4b9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Transform.translate(
                          offset: Offset(0, -55),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 10),
                              image: DecorationImage(
                                  image: AssetImage("images/01.jpeg")
                              ),
                            ),
                          ),
                        ),
                        Text("SAVAN GANGANI",
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w300,
                              height: 1.5
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Savan Gangani",
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
