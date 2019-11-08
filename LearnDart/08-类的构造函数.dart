main(List<String> args){

//----------------------Person-----------------------------

  // final p = Person('biaoma',age:20);
  // // p.name = "ibiaoma";
  // // p.age = 10;
  // p.eating();

  // print(p);

  //命名构造函数的使用
  // Map<String ,dynamic> info = {
  //   "name":"ma",
  //   "age":22,
  //   "height":1.88
  // };

  // final p1 = Person.fromMap(info);
  // p1.eating();
  

  //----------------------Rectangle-----------------------------
  final r = Rectangle(20,30);
  print(r);

}

//当类中没有明确指定构造方法时，将默认拥有一个无参的构造方法。
//*当有了自己的构造方法时，默认的构造方法将会失效，不能使用
class Person{
  String name;
  int age;
  double height;

  // 一般构造函数
  Person(String name, {int age, double height}){
    this.name = name;
    this.age = age;
    this.height = height;
  }

  //等同于  语法糖
  // Person(this.name,this.age,this.height);

  //Dart不支持函数重载，两个函数名不能相同
  //但支持命名构造函数
  Person.fromMap(Map<String,dynamic> map){
    this.name = map["name"];
    this.age = map["age"];
    this.height = map["height"];
  }

  //构造函数的重定向  一个构造函数调用另一个构造函数
  // Person(this.name, this.age);
  // Person.fromName(String name) : this(name, 0);

  void eating(){
    print('${this.name} -- eating');
  }

  //重写toString方法，方便打印实例对象
  @override
  String toString() {
  return "name:$name age:$age height:$height";
   }
}

class Rectangle{
  int width;
  int height;
  int area;

  // Rectangle(this.width,this.height){
  //   this.area = width *height;
  // }
  
  //初始化列表
  Rectangle(this.width,this.height):area = width * height;


  @override
  String toString() {
  return "width:$width height:$height area:$area";
   }
}