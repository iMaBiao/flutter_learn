import 'package:flutter/material.dart';

/**
 * 各种Widget
 */

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "各种Widget",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.amberAccent,
        ),
        body: HomeBody(),
      ),
    );
  }
}

/**
 * Stack:在Flutter中我们需要使用层叠布局Stack
 *
 * fit：此参数用于决定没有定位的子widget如何去适应Stack的大小。StackFit.loose表示使用子widget的大小，StackFit.expand表示扩伸到Stack的大小。
 * Positioned组件只能在Stack中使用。
 *
 */
class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      //超出部分不会被剪裁 相对应：clip
      overflow: Overflow.visible,
//      fit: StackFit.loose,
      children: <Widget>[
        Container(
          color: Colors.red,
          width: 300,
          height: 300,
        ),
        Positioned(
          left: 20,
          top: 20,
          child: Icon(
            Icons.favorite,
            size: 50,
            color: Colors.white,
          ),
        ),
        Positioned(
          bottom: 30,
          right: 30,
          child: Text("Flutter Flutter Flutter",style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
      ],
    );
  }
}

/**
 * Column
 */
//class HomeBody extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      crossAxisAlignment: CrossAxisAlignment.end,
//      mainAxisSize: MainAxisSize.max,
//      //如果有部分控件不设置宽度，而是占据剩余的部分
//      //flex属性，弹性系数，Row会根据两个Expanded的弹性系数来决定它们占据剩下空间的比例
//      children: <Widget>[
//        Expanded(
//          flex: 1,
//          child: Container(color: Colors.red,width: 60,),
//        ),
//        Container(color: Colors.black,width: 80,height: 80,),
//        Expanded(
//          flex: 1,
//          child: Container(color: Colors.blue,width: 70,),
//        ),
//        Container(color: Colors.green,width: 100,height: 100,),
//      ],
//
////      children: <Widget>[
////        Container(color: Colors.red,width: 60,height: 60,),
////        Container(color: Colors.black,width: 80,height: 80,),
////        Container(color: Colors.blue,width: 70,height: 70,),
////        Container(color: Colors.green,width: 100,height: 100,),
////      ],
//    );
//  }
//}

/**
 * Row
 */
//class HomeBody extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//      crossAxisAlignment: CrossAxisAlignment.end,
//      mainAxisSize: MainAxisSize.max,
//      //如果有部分控件不设置宽度，而是占据剩余的部分
//      //flex属性，弹性系数，Row会根据两个Expanded的弹性系数来决定它们占据剩下空间的比例
//      children: <Widget>[
//        Expanded(
//          flex: 1,
//          child: Container(color: Colors.red,height: 60,),
//        ),
//        Container(color: Colors.black,width: 80,height: 80,),
//        Expanded(
//          flex: 1,
//          child: Container(color: Colors.blue,height: 70,),
//        ),
//        Container(color: Colors.green,width: 100,height: 100,),
//      ],
//
////      children: <Widget>[
////        Container(color: Colors.red,width: 60,height: 60,),
////        Container(color: Colors.black,width: 80,height: 80,),
////        Container(color: Colors.blue,width: 70,height: 70,),
////        Container(color: Colors.green,width: 100,height: 100,),
////      ],
//    );
//  }
//}
