import 'package:flutter/material.dart';

/**
 * StatefulWidget的简单使用
 */

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("StatefulWidget",textAlign: TextAlign.center,),
        ),
        body: MyCounterWidget(),
      ),
    );
  }
}

class MyCounterWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => MyCounterState();
}

class MyCounterState extends State<MyCounterWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.redAccent,
                child: Text(
                  "+1",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                onPressed: (){
                  setState(() {
                    counter++;
                  });
                },
              ),
              RaisedButton(
                color: Colors.orangeAccent,
                child: Text(
                  "-1",
                  style: TextStyle(fontSize: 18,color: Colors.white),
                ),
                onPressed: (){
                  setState(() {
                    counter--;
                  });
                },
              ),
            ],
          ),
          Text("当前计数：$counter"),
        ],
      ),
    );
  }
}
