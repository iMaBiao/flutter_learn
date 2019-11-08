main(List<String> args){

  final d = Dog('黄色');
  print(d.color);

  d.setColor = '黑色';

  print(d.color);

}

class Dog{
  String color;
  
  String get getColor{
    return color;
  }

  set setColor(String color){
    this.color = color;
  }

  Dog(this.color);
}