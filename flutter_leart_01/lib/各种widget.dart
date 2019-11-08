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

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        RichTextWidget(),
        SizedBox(
          height: 30,
        ),

        MyButton(),
        SizedBox(
          height: 30,
        ),

        MyImage(),
        SizedBox(
          height: 30,
        ),

        //圆形图片
        CircleImages(),
        ClipOvalWidget(),
        SizedBox(
          height: 30,
        ),

        //圆角图片
        ClipRRectWidget(),
        SizedBox(
          height: 30,
        ),

        //TextField
        TextFieldDemo(),
        SizedBox(
          height: 30,
        ),

        //Form
        FormDemo(),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

//Form
class FormDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _formDemoState();
  }
}

class _formDemoState extends State<FormDemo> {

  String username;
  String password;

  //知识点：在Flutter如何可以获取一个通过一个引用获取一个StatefulWidget的State对象呢？
  //答案：通过绑定一个GlobalKey即可

  final formGlobalKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: formGlobalKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          TextFormField(
            decoration: InputDecoration(
                icon: Icon(Icons.people),
//                labelText: "用户名或手机号",
                hintText: "用户名或手机号"),
            onSaved: (value){
              this.username = value;
            },

            autovalidate: true,

            //验证填写的表单数据
            validator: (value){
              if(value.isEmpty){
                return "账号不能为空";
              }
              return null;
            },
          ),

          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.lock),
//              labelText: "密码",
                hintText: "密码"
            ),
            onSaved: (value){
              this.password  = value;
            },
            //验证填写的表单数据
            validator: (value){
              if(value.isEmpty){
                //value.length == 0
                return "密码不能为空";
              }
              return null;
            },
          ),

          SizedBox(height: 20,),

          Container(
            width: double.infinity,
            height: 44,
            child: RaisedButton(
                color: Colors.lightGreen,
                child: Text(
                  "注  册",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  print("点击了注册");
                  formGlobalKey.currentState.save();
                  formGlobalKey.currentState.validate();
                  print("username:$username password:$password");
                }),
          ),
        ],
      ),
    );
  }
}

//TextField
class TextFieldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextFieldDemo();
  }
}

class _TextFieldDemo extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //可用来给TextField设置默认值
    textEditingController.text = "默认值";
    //暂时没有效果
    textEditingController.addListener(() {
      print("textEdintingController : ${textEditingController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
//              labelText: "username",
              hintText: "请输入用户名",
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 1),
              ),
//              filled: true,
//              fillColor: Colors.lightGreen,
            ),
//            cursorWidth: 20,光标宽度
            onChanged: (value) {
              print("onChanged: $value");
            },
            onSubmitted: (value) {
              print("onSubmitted: $value");
            },
            controller: textEditingController,
          ),
        ],
      ),
    );
  }
}

/**
 * 圆角的几种实现方式
 */
class ClipRRectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}

/**
 * 圆形图像的几种实现方式
 */
//圆形方式二：ClipOval
class ClipOvalWidget extends StatelessWidget {
  //ClipOval也可以实现圆角头像，而且通常是在只有头像时使用
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: ClipOval(
        child: Image.network(
          "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}

//圆形方式一：CircleAvatar
class CircleImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: CircleAvatar(
        radius: 100,
        backgroundImage: NetworkImage(
            "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg"),
        child: Container(
          alignment: Alignment(0, .5),
          width: 200,
          height: 200,
          child: Text("兵长利威尔"),
        ),
      ),
    );
  }
}

//图片
class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        //网络图片
        Container(
          width: 300,
          height: 300,
          color: Colors.lightGreen,
          child: Image.network(
            "http://img0.dili360.com/ga/M01/48/3C/wKgBy1kj49qAMVd7ADKmuZ9jug8377.tub.jpg",
//            alignment: Alignment.topCenter,
            repeat: ImageRepeat.repeatY, //平铺
//          color: Colors.redAccent,
//          fit: BoxFit.cover,//填充属性
            colorBlendMode: BlendMode.colorDodge,
            width: 300,
            height: 300,
          ),
        ),

        SizedBox(
          height: 30,
        ),

        //本地资源图片
        Image.asset(
          "assets/images/test.jpg",
          width: 200,
          height: 200,
        ),

        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
/**
 * width、height：用于设置图片的宽、高，当不指定宽高时，图片会根据当前父容器的限制，尽可能的显示其原始大小，
    如果只设置width、height的其中一个，那么另一个属性默认会按比例缩放，但可以通过下面介绍的fit属性来指定适应规则。
    fit：该属性用于在图片的显示空间和图片本身大小不同时指定图片的适应模式。适应模式是在BoxFit中定义，它是一个枚举类型，有如下值：
    fill：会拉伸填充满显示空间，图片本身长宽比会发生变化，图片会变形。
    cover：会按图片的长宽比放大后居中填满显示空间，图片不会变形，超出显示空间部分会被剪裁。
    contain：这是图片的默认适应规则，图片会在保证图片本身长宽比不变的情况下缩放以适应当前显示空间，图片不会变形。
    fitWidth：图片的宽度会缩放到显示空间的宽度，高度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁。
    fitHeight：图片的高度会缩放到显示空间的高度，宽度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁。
    none：图片没有适应策略，会在显示空间内显示图片，如果图片比显示空间大，则显示空间只会显示图片中间部分。
    color和 colorBlendMode：在图片绘制时可以对每一个像素进行颜色混合处理，color指定混合色，而colorBlendMode指定混合模式；
    repeat：当图片本身大小小于显示空间时，指定图片的重复规则。
 */

//自定义样式按钮
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      // 文字样式
      child: Text(
        "同意协议",
        style: TextStyle(color: Colors.white),
      ),
      // 按钮的颜色
      color: Colors.orange,
      // 按下去高亮颜色
      highlightColor: Colors.orange[700],
      // 圆角的实现
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //点击事件
      onPressed: () {
        print("点击了同意协议");
      },
    );
  }
}

//富文本
class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: "《定风波》",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xffff0000), //颜色设置时必须带上透明度（16进制）
              )),
          TextSpan(
              text: "苏轼",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.redAccent)),
          TextSpan(text: "\n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。"),
        ],
      ),
      style: TextStyle(fontSize: 20, color: Colors.purple),
      textAlign: TextAlign.center,
//      maxLines: 2,//最大行数
      overflow: TextOverflow.ellipsis, //超出部分...显示
      textScaleFactor: 1, //控制文本缩放
    );
  }
}
