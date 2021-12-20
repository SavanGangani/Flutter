import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredTile> _staggered = const <StaggeredTile>[
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 2),
];

List<Widget> _titles = const <Widget>[
  const _Example01Tile(Colors.teal,Icons.settings),
  const _Example02Tile(Colors.red, Icons.call),
  const _Example01Tile(Colors.blue, Icons.wifi),
  const _Example01Tile(Colors.indigo,Icons.add_a_photo_outlined),
  const _Example02Tile(Colors.teal, Icons.account_circle),
  const _Example01Tile(Colors.deepOrangeAccent, Icons.thumb_up),
];

class StaggeresGridView extends StatelessWidget {
  const StaggeresGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Staggered Tile"),
      ),
      body: Padding(padding: EdgeInsets.only(top: 12.0),
      child: StaggeredGridView.count(
          crossAxisCount: 4,
        staggeredTiles: _staggered,
        children: _titles,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        padding: EdgeInsets.all(4.0),
      ),
      ),
    );
  }
}

class _Example01Tile extends StatelessWidget {
  const _Example01Tile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child:  InkWell(
        onTap: (){
          Navigator.pushNamed(context, 'second');
        },
        child:  Center(
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child:  Icon(iconData,
            color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class _Example02Tile extends StatelessWidget {
  const _Example02Tile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child:  InkWell(
        onTap: (){
          Navigator.pushNamed(context, 'photos');
        },
        child:  Center(
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child:  Icon(iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}