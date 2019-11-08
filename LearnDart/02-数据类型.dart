main(List<String> args) {
  // 1.整数类型int
  // int age = 18;
  // int hexAge = 0x12;
  // print(age);
  // print(hexAge);

// 2.浮点类型double
  // double height = 1.88;
  // print(height);

  //字符串和数字之间的转化:
  // var one = int.parse('111');
  // var num = 1234;
  // var numStr = num.toString();
  // print(numStr);

  //布尔类型中,Dart提供了一个bool的类型, 取值为true和false
  // var isFlag = true;
  // print('$isFlag ${isFlag.runtimeType}');
  // 注意: Dart中不能判断非0即真, 或者非空即真
  //   var message = 'Hello Dart';
  // // 错误的写法
  // if (message) {
  //   print(message);
  // }

  // 字符串和其他变量或表达式拼接: 使用${expression}, 如果表达式是一个标识符, 那么{}可以省略
  //如果是表达式，不能省略 如： $name.runtimeType
  // 3.拼接其他变量
  // var name = 'coderwhy';
  // var age = 18;
  // var height = 1.88;
  // print('my name is ${name}, age is $age, height is $height');

//集合类型

// List定义
// 1.使用类型推导定义
// var letters = ['a', 'b', 'c', 'd'];
// print('$letters ${letters.runtimeType}');

// 2.明确指定类型
// List<int> numbers = [1, 2, 3, 4];
// print('$numbers ${numbers.runtimeType}');

// set可以这样来定义：
// 其实，也就是把[]换成{}就好了。
// Set和List最大的两个不同就是：Set是无序的，并且元素是不重复的。

// Set的定义
// 1.使用类型推导定义
  // var lettersSet = {'a', 'b', 'c', 'd'};
  // print('$lettersSet ${lettersSet.runtimeType}');

// 2.明确指定类型
  // Set<int> numbersSet = {1, 2, 3, 4};
  // print('$numbersSet ${numbersSet.runtimeType}');

// 利用set去重
  // var name1 = ['jack', 'jerry', 'mary', 'joke', 'jack'];
  // var name2 = List.from(Set.from(name1));
  // print(name1);
  // print(name2);

// Map是我们常说的字典类型，
// Map的定义
// 1.使用类型推导定义
//   var infoMap1 = {'name': 'why', 'age': 18};
//   print('$infoMap1 ${infoMap1.runtimeType}');

// // 2.明确指定类型
//   Map<String, Object> infoMap2 = {'height': 1.88, 'address': '北京市'};
//   print('$infoMap2 ${infoMap2.runtimeType}');
}
