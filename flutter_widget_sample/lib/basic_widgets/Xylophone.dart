import 'package:flutter/material.dart';

class NavigatorSample extends StatelessWidget {
  const NavigatorSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sample",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sample"),
          elevation: 10.0,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "HoMe",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Hoe",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Container(
                  child: Text(
                    "Dwawer Sample",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                    ),
                  ),
                ),

              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, 'photos');
                },
                leading: Icon(Icons.photo),
                title: Text("Photos"),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, 'first');
                },
                leading: Icon(Icons.call),
                title: Text("Call"),
                subtitle: Text("You Can Call Here"),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text("Like"),
          icon: Icon(Icons.thumb_up),
        ),
        body: Container(),
      ),
    );
  }
}