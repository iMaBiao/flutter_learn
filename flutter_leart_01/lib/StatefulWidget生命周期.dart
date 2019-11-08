import 'package:flutter/material.dart';

/**
 * StatefulWidget生命周期
 */

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("StatefulWidget生命周期"),
          backgroundColor: Colors.amberAccent,
        ),
        body: HomeBody(),
      ),
    );
  }
}

class HomeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyCounterWidget();
  }
}

class MyCounterWidget extends StatefulWidget{

  MyCounterWidget(){
    print("执行了MyCounterWidget的构造方法");
  }

  State<StatefulWidget> createState(){
    print("执行了MyCounterWidget的createState方法");
    // 将创建的State返回
    return MyCounterState();
  }
}

class MyCounterState extends State<MyCounterWidget>{
  int counter = 0;

  MyCounterState(){
    print("执行MyCounterState的构造方法");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("执行MyCounterState的init方法");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("执行MyCounterState的didChangeDependencies方法");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("执行执行MyCounterState的build方法");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.redAccent,
                child: Text("+1",style: TextStyle(fontSize: 18,color: Colors.white),),
                onPressed: (){
                  setState(() {
                    counter++;
                  });
                },
              ),
              RaisedButton(
                color:  Colors.blueAccent,
                child: Text("-1",style: TextStyle(fontSize: 18,color: Colors.orange),),
                onPressed: (){
                  setState(() {
                    counter--;
                  });
                },
              ),
              Text("当前计数：$counter",style: TextStyle(fontSize: 20,color: Colors.brown),),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(MyCounterWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("执行MyCounterState的didUpdateWidget方法");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("执行MyCounterState的dispose方法");
  }
}
