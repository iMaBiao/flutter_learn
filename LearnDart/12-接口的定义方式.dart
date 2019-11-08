//Dart中的接口比较特殊, 没有一个专门的关键字来声明接口.
//默认情况下，定义的每个类都相当于默认也声明了一个接口，可以由其他的类来实现(因为Dart不支持多继承) 

main(List<String> args){

}

class Runner{
  void running(){
    print("running");
  }
}

class Person implements Runner{
  @override
  void running(){
    print("running");
  }
}