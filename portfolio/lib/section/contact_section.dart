import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("images/contact.jpg"))),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 190, top: 100),
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
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "For Project inquiry and information",
                        ),
                        Text(
                          "Contact Me",
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Container(
            width: 1020,
            constraints: BoxConstraints(
              maxWidth: 850,
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
            ),
            child: Form(
              child: Wrap(
                spacing: 10,runSpacing: 20,
                children: [
                  SizedBox(
                    width: 400,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                            borderSide: new BorderSide(color: Colors.teal)
                        ),
                        labelText: "Your Name",
                        hintText: "Enter Your Name"
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: new BorderSide(color: Colors.teal)
                          ),
                          labelText: "Email Address",
                          hintText: "Enter Your Email Address"
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: new BorderSide(color: Colors.teal)
                          ),
                          labelText: "Project Type",
                          hintText: "Enter Your Type Of Project"
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: new BorderSide(color: Colors.teal)
                          ),
                          labelText: "Project Budget",
                          hintText: "Enter Your Project Budget"
                      ),
                    ),
                  ),
                  SizedBox(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: new BorderSide(color: Colors.teal)
                          ),
                          labelText: "Description",
                          hintText: "Add Some Description"
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: FittedBox(
                      child: OutlineButton(
                        padding: EdgeInsets.all(30),
                        onPressed: () {  },
                        child: Text(
                          "Contact Me!"
                        ),
                        color: Color(0xffACDDDE),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
