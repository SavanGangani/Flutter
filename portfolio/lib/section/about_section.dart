import 'dart:html';
import 'package:flutter/material.dart';


class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth:1120 ),
      margin: EdgeInsets.only(left: 190, top: 100),
      child: Row(
       children: <Widget>[
         Column(
           children: <Widget>[
             Text(
               "About \nmy story",
               style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.black),
             ),
             SizedBox(
               height: 20,
             ),
             Image.asset("images/sign.png",width: 100,height: 100,),
           ],
         ),
         SizedBox(
           width: 70,
         ),
         Column(
           children: <Widget>[
             Text(
               "Hello, \nI am Savan Gangani. \ni am a student at \nP.P.Savani University.",
               style: TextStyle(
                 fontSize: 16,
               ),
             ),
           ],
         ),
         SizedBox(
           width: 30,
         ),
         Container(
           margin: const EdgeInsets.symmetric(horizontal: 20),
           padding: const EdgeInsets.all(20),
           height: 240,
           width: 240,
           decoration: BoxDecoration(
             color: const Color(0xFFF7E8FF),
             borderRadius: BorderRadius.circular(10),
           ),
           child: DecoratedBox(
             decoration: BoxDecoration(
               color: const Color(0xFFEDD2FC),
               borderRadius: BorderRadius.circular(10),
               boxShadow: [
                 BoxShadow(
                   offset: const Offset(0, 3),
                   blurRadius: 6,
                   color: const Color(0xFFA600FF).withOpacity(0.25),
                 )
               ],
             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: const [
                 Text(
                   '06',
                   style: TextStyle(
                     fontSize: 100,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
                 Text(
                   'MONTHS OF EXPERIENCE',
                   style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
               ],
             ),
           ),
         ),
         Column(
           children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 05, bottom: 05, left: 35, right: 35),
              child: FlatButton(
                onPressed: (){},
                child: Text(
                  "🤝  Hire Me!",
                  style: TextStyle(
                    color: Colors.black,
                    backgroundColor: Colors.transparent,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
             SizedBox(
               height: 20,
             ),
             Container(
               padding: EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
               child: FlatButton(
                 onPressed: (){},
                 child: Text(
                   "Download CV",
                   style: TextStyle(
                       color: Colors.black,
                       backgroundColor: Colors.transparent,
                       fontWeight: FontWeight.bold
                   ),
                 ),
               ),
               decoration: BoxDecoration(
                 border: Border.all(width: 1, color: Colors.amber),
                 borderRadius: BorderRadius.circular(30),
               ),
             ),
           ],
         ),

       ],
        ),
    );
  }
}
