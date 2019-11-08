import 'package:flutter/material.dart';
import 'model/Anchor.dart';

/**
 * ListView
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
    //普通ListView
//    return NormalListViewWidget();
    //ListView.build
//    return MyListTitleWidget();
    //ListView.build
//    return MyListViewBulidWidget();
    // ListView.separated
//  return MyListViewSeparatedWidget();
    //ListView.build 动态数据
    return MyListViewDynamicWidget();
  }
}

//ListView.build 动态数据
class MyListViewDynamicWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyListViewDynamicState();
  }
}

class MyListViewDynamicState extends State<MyListViewDynamicWidget> {
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
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                anchors[index].imageUrl,
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                anchors[index].nickname,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(anchors[index].roomName),
            ],
          ),
        );
      },
    );
  }
}

// ListView.separated 分割线
class MyListViewSeparatedWidget extends StatelessWidget {
  Divider blueColor = Divider(
    color: Colors.blue,
  );
  Divider redColor = Divider(
    color: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(Icons.map),
          title: Text("标题$index"),
          subtitle: Text("详情内容$index"),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return index % 2 == 0 ? redColor : blueColor;
      },
    );
  }
}

//ListView.build
class MyListViewBulidWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: 100,
      itemExtent: 80,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(Icons.map),
          title: Text("标题$index"),
          subtitle: Text("详情内容$index"),
        );
      },
    );
  }
}

//ListTitle的使用
class MyListTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      //控制滚动方向，itemExtent是每个item的宽度
//      scrollDirection: Axis.horizontal,
//      itemExtent: 200,
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.people,
            size: 36,
          ),
          title: Text("联系人"),
          subtitle: Text("联系人信息"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(
            Icons.email,
            size: 36,
          ),
          title: Text("邮箱"),
          subtitle: Text("邮箱信息"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(
            Icons.message,
            size: 36,
          ),
          title: Text("消息"),
          subtitle: Text("消息详细信息"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(
            Icons.map,
            size: 36,
          ),
          title: Text("地址人"),
          subtitle: Text("地址详细信息"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}

//普通ListView
class NormalListViewWidget extends StatelessWidget {
  final TextStyle textStyle = TextStyle(fontSize: 20, color: Colors.redAccent);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "人的一切痛苦，本质上都是对自己无能的愤怒。",
            style: textStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "人活在世界上，不可以有偏差；而且多少要费点劲儿，才能把自己保持到理性的轨道上。",
            style: textStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "我活在世上，无非想要明白些道理，遇见些有趣的事。",
            style: textStyle,
          ),
        ),
      ],
    );
  }
}
