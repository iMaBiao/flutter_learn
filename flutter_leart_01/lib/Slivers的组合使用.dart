import 'package:flutter/material.dart';
import 'model/Anchor.dart';

/**
 * Slivers的组合使用
 */

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
//        appBar: AppBar(
//          title: Text(
//            "ListView",
//            textAlign: TextAlign.center,
//          ),
//          backgroundColor: Colors.amberAccent,
//        ),
        body: HomeBody(),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return showCustomScrollView();
  }

  Widget showCustomScrollView() {
    return CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Coderwhy Demo"),
            background: Image(
              image: NetworkImage(
                  "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverGrid(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text("grid item $index"),
              );
            }, childCount: 10),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0)),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.lightBlue[100 * (index % 9)],
              child: Text("list item $index"),
            );
          },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
