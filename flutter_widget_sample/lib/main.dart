import 'package:flutter/material.dart';
import 'package:flutter_widget_sample/basic_widgets/Xylophone.dart';
import 'basic_widgets/column_widget.dart';
import 'package:flutter_widget_sample/basic_widgets/constraints.dart';
import 'package:flutter_widget_sample/basic_widgets/navigation_routs.dart';
import 'package:flutter_widget_sample/basic_widgets/navigation_route2.dart';
import 'package:flutter_widget_sample/basic_widgets/listview_widget.dart';
import 'package:flutter_widget_sample/basic_widgets/GrideView_widget.dart';
import 'package:flutter_widget_sample/basic_widgets/staggeresGridView.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(const MyHomePage());

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sraggered Grid View",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        'main' : (context)=> NavigatorSample(),
        'first': (context) => FirstRoute(),
        'second': (context) => SecondRoute(),
        'photos' : (context)=> ColumnWidget(),
        'lastpages': (context) => constraints(),
      },
      home: NavigatorSample(),
    );
  }
}
