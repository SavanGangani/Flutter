import 'package:flutter/material.dart';

class constraints extends StatelessWidget {
  const constraints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample Of Contraints"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 20,
              child: ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.call),
                tileColor: Colors.blue,
                title: Text("You Can Create Call Aslo From HERE!", style: TextStyle(fontSize: 18,color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 20,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.add),
                    tileColor: Colors.pink,
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
