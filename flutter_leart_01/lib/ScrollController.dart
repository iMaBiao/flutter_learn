import 'package:flutter/material.dart';
import 'model/Anchor.dart';

/**
 * ScrollController
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
        body: MyHomePage(),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  ScrollController _controller;
  bool _isShowTop = false;

  @override
  void initState() {
    // TODO: implement initState

    _controller = ScrollController();

    _controller.addListener(() {
      var tempShowTop = _controller.offset >= 1000;
      if (tempShowTop != _isShowTop) {
        setState(() {
          _isShowTop = tempShowTop;
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView展示"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("item$index"),
          );
        },
        itemExtent: 60,
        itemCount: 100,
        controller: _controller,
      ),
      floatingActionButton: !_isShowTop ? null : FloatingActionButton(
        child: Icon((Icons.arrow_upward)),
        onPressed: () {
          //jumpTo(double offset)、animateTo(double offset,...)：这两个方法用于跳转到指定的位置，
          // 它们不同之处在于，后者在跳转时会执行一个动画，而前者不会。
          _controller.animateTo(0,
              duration: Duration(milliseconds: 1000), curve: Curves.ease);
        },
      ),
    );
  }
}
