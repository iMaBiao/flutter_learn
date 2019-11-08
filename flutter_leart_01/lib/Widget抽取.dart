import 'package:flutter/material.dart';

/**
 * Widget的抽取封装
 */

//main() {
//  runApp(MyApp());
//}

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        body:HomeCenterWidget(),
      ),
    );
  }
}

class HomeCenterWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
              value: true,
              onChanged: (value) => print("Hello World"),
            ),
            TextWidget(),
          ],
        )
    );
  }
}

class TextWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '同意协议1',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 30,
        color: Colors.orange,
      ),
    );
  }
}
