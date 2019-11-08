import 'package:flutter/material.dart';
import 'model/Anchor.dart';

/**
 * GridView
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
            "ListView",
            textAlign: TextAlign.center,
          ),
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
//    return GridViewDemo();

    return MyGridViewBuildWidget();
  }
}

//GridView.build
class MyGridViewBuildWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyGridViewBuildState();
  }
}

class MyGridViewBuildState extends State<MyGridViewBuildWidget> {
  List<Anchor> anchors = [];

  @override
  void initState() {
    // TODO: implement initState
    getAnchors().then((anchors) {
      setState(() {
        this.anchors = anchors;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.9
          ),
          itemCount: anchors.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(anchors[index].imageUrl),
                  SizedBox(height: 5,),
                  Text(
                    anchors[index].nickname,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    anchors[index].roomName,
                    style: TextStyle(fontSize: 14),
                    maxLines: 1,
//                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            );
          }),
    );
  }
}

//GridView 普通使用
class GridViewDemo extends StatelessWidget {
  List<Widget> getGridWidgets() {
    return List.generate(100, (index) {
      return Container(
        color: Colors.purple,
        alignment: Alignment(0, 0),
        child: Text(
          "item$index",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
      //gridDelegate用于控制交叉轴的item数量或者宽度，需要传入的类型是SliverGridDelegate，但是它是一个抽象类，所以我们需要传入它的子类
//      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//          crossAxisCount: 3,// 交叉轴的item个数
//          mainAxisSpacing: 5,// 主轴的间距
//          crossAxisSpacing: 5,// 交叉轴的间距
//          childAspectRatio: 2.0,// 子Widget的宽高比
//      ),

      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150, // 交叉轴的item宽度
        mainAxisSpacing: 10, // 主轴的间距
        crossAxisSpacing: 10, // 交叉轴的间距
        childAspectRatio: 1.0, // 子Widget的宽高比
      ),

      children: getGridWidgets(),
    );
  }
}
