import 'package:flutter/material.dart';

class GrideViewscreen extends StatelessWidget {
  const GrideViewscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GrideView Sample"),
        leading: Icon(Icons.grid_view),
        elevation: 25.0,
        shadowColor: Colors.teal,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index){
          return Center(
            child: Text(
              'Item $index',
            ),
          );
        }),
       ),
    );
  }
}
