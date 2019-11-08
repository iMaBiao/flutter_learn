import 'package:flutter/material.dart';

/**
 * StatelessWidget的简单使用
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
            "Hello Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        body: HomeContentWidget(),
      ),
    );
  }
}

class HomeContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: const EdgeInsets.all(10.0),
      children: <Widget>[
        ProductItem("App1", "MacBook Product1",
            "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
        SizedBox(height: 10.0,),
        ProductItem("App2", "MacBook Product2",
            "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
        SizedBox(height: 10.0,),
        ProductItem("App3", "MacBook Product3",
            "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
        SizedBox(height: 10.0,),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageURL;

  ProductItem(this.title, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(width: 2),
      ),
      child: Column(
        children: <Widget>[
          Text(title, style: TextStyle(fontSize: 24),),
          Text(desc, style: TextStyle(fontSize: 18),),
          SizedBox(height: 10,),
          Image.network(imageURL),
        ],
      ),
    );
  }
}
