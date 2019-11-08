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
 * 实现圆角:Container+BoxDecoration来实现圆角图像。
 */
class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: NetworkImage(
                    "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg"))),
      ),
    );
  }
}


/**
 * Container
 * 如果你需要一个视图，有一个背景颜色、图像、有固定的尺寸、需要一个边框、圆角等效果，那么就可以使用Container组件。
 *
 *  1、容器的大小可以通过width、height属性来指定，也可以通过constraints来指定，
 * 如果同时存在时，width、height优先。实际上Container内部会根据width、height来生成一个constraints；
 *  2、color和decoration是互斥的，实际上，当指定color时，Container内会自动创建一个decoration；
 */
//class HomeBody extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Center(
//        child: Container(
////          color: Color.fromRGBO(3, 3, 255, .5),
//          width: 150,
//          height: 150,
//          child: Icon(Icons.pets,size: 32,color: Colors.white,),
//          decoration: BoxDecoration(
//            color: Colors.amber,
//            border: Border.all(
//              color: Colors.redAccent,
//              width: 2,
//              style: BorderStyle.solid,
//            ),
//            borderRadius: BorderRadius.circular(20),
//            boxShadow: [
//              BoxShadow(offset: Offset(5, 5),
//                  color: Colors.purple,
//                  blurRadius: 5
//              ),
//            ],
//            gradient: LinearGradient(colors: [
//              Colors.green,
//              Colors.red,
//            ]),
//          ),
//        ),
//    );
//  }
//}


/**
 * Padding
 * Flutter中没有Margin这样一个Widget，这是因为外边距也可以通过Padding来完成
 * Padding通常用于设置子Widget到父Widget的边距（你可以称之为是父组件的内边距或子Widget的外边距）。
 */
//class HomeBody extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Padding(
//
//      padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
//
//      child: Text("莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
//      style: TextStyle(fontSize: 18,color: Colors.redAccent),)
//    );
//  }
//}


/**
 * Center
 */
//class HomeBody extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Center(
//      child: Icon(Icons.pets,size: 36, color: Colors.red,),
//      widthFactor: 3,
//      heightFactor: 3,
//    );
//  }
//}

/**
 * Align
 * 因为子组件在父组件中的对齐方式必须有一个前提，就是父组件得知道自己的范围（宽度和高度）；
    如果widthFactor和heightFactor不设置，那么默认Align会尽可能的大（尽可能占据自己所在的父组件）；
    我们也可以对他们进行设置，比如widthFactor设置为3，那么相对于Align的宽度是子组件跨度的3倍；
 */
//class HomeBody extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Align(
//      child: Icon(Icons.pets,size: 36, color: Colors.red,),
//      alignment: Alignment.topLeft,
//      widthFactor: 3,
//      heightFactor: 3,
//    );
//  }
//}
