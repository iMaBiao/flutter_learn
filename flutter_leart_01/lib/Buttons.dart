import 'package:flutter/material.dart';

/**
 * 各种Buttons
 *
 *  Material widget标准库中为我们提供了多种式样的Button Widget,RaisedButton, FlatButton,OutlineButton等,
 *  他们都是对RawMaterialButton的二次封装,继承了RawMaterialButton的属性和方法,所以MaterailButton都有一些共同特点:
    按下的时候都有水波动画效果;
    有一个onPressd属性来设置回调方法,如果不设置这个回调方法,则按钮不可交互,也就变成了”Text”.
 */

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("各种Buttons"),
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

          //RaisedButton 是带有一定圆角和阴影以及灰色背景的按钮,并且在点击的时候会有动画效果
          RaisedButton(
            child: Row(
              mainAxisSize: MainAxisSize.min, //设置最小宽度
              children: <Widget>[
                Icon(Icons.people, color: Colors.white,),
                SizedBox(width: 20,),
                Text("RaisedButton", style: TextStyle(fontSize: 30, color: Colors.yellow),),
              ],
            ),
            color: Colors.red,
            highlightColor: Colors.brown,
            textTheme: ButtonTextTheme.normal,
            //设置圆角
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),

            onPressed: () {},
          ),

          //FlatButton默认没有背景色并且也不带阴影,高亮状态会有阴影
          FlatButton(
            child: Text(
              "FlatButton",
              style: TextStyle(fontSize: 28, color: Colors.brown),
            ),
            onPressed: () {},
          ),

          //OutlineButton是带有边框的按钮
          OutlineButton(
            child: Text(
              "OutlineButton",
              style: TextStyle(fontSize: 25, color: Colors.blueAccent),
            ),
            highlightedBorderColor: Colors.brown,
            onPressed: () {},
          ),

          FloatingActionButton(
            child: Text("FloatingActionButton"),
            onPressed: () {},
          ),

          //IconButton默认没有背景,点击有有背景色,其有一个icon属性
          IconButton(
            icon: Icon(Icons.today),
            highlightColor: Colors.redAccent,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
