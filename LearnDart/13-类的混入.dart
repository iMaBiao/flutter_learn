main(List<String> args){
  
  final p = Person();
  p.run();
  p.fly();

}
// 在通过implements实现某个类时，类中所有的方法都必须被重新实现(无论这个类原来是否已经实现过该方法)。
//一个类直接复用之前类的原有实现方案
// 除了可以通过class定义类之外，也可以通过mixin关键字来定义一个类。
// 只是通过mixin定义的类用于被其他类混入使用，通过with关键字来进行混入。

mixin Runner{
  run(){
    print('在奔跑');
  }
}

mixin Flyer{
  fly(){
    print('在飞翔');
  }
}

// implements的方式要求必须对其中的方法进行重新实现
// class Person implements Runner, Flyer {}
class Person with Runner, Flyer{

}