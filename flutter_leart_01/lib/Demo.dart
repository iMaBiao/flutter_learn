import 'package:flutter/material.dart';

/**
 * Demo
 */

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Colors.amberAccent,
        ),
        body: HomeBody(),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyCounterWidget();
  }
}


//  MyCounterWidget
class MyCounterWidget extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyCounterState();
  }
}

class MyCounterState extends State<MyCounterWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

        ],
      ),
    );
  }
}
