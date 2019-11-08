import 'package:flutter/material.dart';
import 'model/Anchor.dart';

/**
 * sliver
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

    return MyCustomScrollViewWidget();
  }
}


class MyCustomScrollViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                  return Container(
                    alignment: Alignment(0, 0),
                    color: Colors.orange,
                    child: Text("item$index"),
                  );
                },
                  childCount: 20,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
              ),
            )),
      ],
    );
  }
}
