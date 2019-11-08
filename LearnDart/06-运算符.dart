main(List<String> args) {
  var num = 7;
  print(num / 3); // 除法操作, 结果2.3333..
  print(num ~/ 3); // 整除操作, 结果2;
  print(num % 3); // 取模操作, 结果1;

  // ??=赋值操作
  //当变量为null时，使用后面的内容进行赋值。
  // 当变量有值时，使用自己原来的值。

  var name2 = null;
  name2 ??= 'james';
  print(name2); // 当name2初始化为kobe时，结果为kobe，当初始化为null时，赋值了james

  //条件运算符：expr1 ?? expr2
  // 如果expr1是null，则返回expr2的结果;
  // 如果expr1不是null，直接使用expr1的结果。

  // var temp = 'why';
  var temp = null;
  var name = temp ?? 'kobe';
  print(name);

  //级联语法：..
  //某些时候，我们希望对一个对象进行连续的操作，这个时候可以使用级联语法
  final p1 = Person();
  p1.name = 'why';
  p1.run();
  p1.eat();
  p1.swim();

  final p2 = Person()
              ..name = "why"
              ..run()
              ..eat()
              ..swim();
}

class Person {
  String name;

  void run() {
    print("${name} is running");
  }

  void eat() {
    print("${name} is eating");
  }

  void swim() {
    print("${name} is swimming");
  }
}
