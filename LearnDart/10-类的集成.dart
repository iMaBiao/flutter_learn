main(List<String> args) {

  final p = Person('haha',18);
  p.name = 'hehe';
  p.eat();
}

class Animal {
  int age;

  Animal(this.age);

  void eat() {
    print("吃");
  }
}

class Person extends Animal {
  String name;

  Person(this.name,int age):super(age);
  
  @override
  void eat() {
    print('$name  $age 吃东西');
  }
}
