void main(List<String> args) {

  // print('hello world');
  // print(args);
  //  命令 ： dart 01-helloworld.dart avc da
  //  打印： hello world
  //  打印：[avc, da]

  // String name = 'codeerwhy';
  // int age = 19;
  // double height = 1.88;
  // print('$name,${age},${height}');

  // String conten = 'ibiaoma';
  // conten = 80;
  // A value of type 'int' can't be assigned to a variable of type 'String'.
  // Try changing the type of the left hand side, or casting the right hand side to 'String'.

  //查看类型
  // print(age.runtimeType);
  // print(height.runtimeType);
  // print(conten.runtimeType);

//但是在开发中, 通常情况下不使用dynamic, 因为类型的变量会带来潜在的危险
  // dynamic name = 'coderwhy';
  // print(name.runtimeType); // String
  // name = 18;
  // print(name.runtimeType); // int

  // final name = 'coderwhy';
  // name = 'kobe'; // 错误做法

  // const age = 18;
  // age = 20; // 错误做法

  //const在赋值时, 赋值的内容必须是在编译期间就确定下来的
  // final在赋值时, 可以动态获取, 比如赋值一个函数

  // const name = getName(); // 错误的做法, 因为要执行函数才能获取到值
  // final name = getName(); // 正确的做法

  //  首先, const是不可以赋值为DateTime.now()
  // 其次, final一旦被赋值后就有确定的结果, 不会再次赋值

  // const time = DateTime.now(); // 错误的赋值方式
  // final time = DateTime.now();
  // print(time); // 2019-10-31 19:59:37.263216

  // sleep(Duration(seconds: 2));


  //const放在赋值语句的右边，可以共享对象，提高性能:
  // final a = const Person();
  // final b = const Person();
  // print(identical(a,b));//true 

  // final m = Person();
  // final n = Person();
  // print(identical(m, n)); // false

}

class Person{
  const Person();
}

String getName() {
  print('getName');
  return 'coderwhy';
}

/**   
错误1： /bin/sh: dart: command not found
解决：.bash_profile  中添加dart的SDK路径
export DART_HOME=/Users/gosun/Documents/flutter/bin/cache/dart-sdk/bin
export PATH="${DART_HOME}:${PATH}"

*/
