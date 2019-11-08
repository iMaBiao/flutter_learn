main(List<String> args){

  final p = Person();
  p.name = "ibiaoma";
  p.age = 10;
  p.eating();

}

class Person{
  String name;
  int age;

  void eating(){
    print('${this.name} -- eating');
  }
}