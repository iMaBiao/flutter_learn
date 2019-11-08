//抽象类
//  抽象方法，必须存在于抽象类中。
//  抽象类是使用abstract声明的类。
/**特点：
 * 1、抽象类不能被实例化
 * 2、抽象类中可以定义抽象方法，普通的类中不能定义抽象方法
*/
// 抽象类的作用在于多态的实现

/**
 * 注意事项:
**注意一：**抽象类不能实例化.
**注意二：**抽象类中的抽象方法必须被子类实现, 抽象类中的已经被实现方法, 可以不被子类重写.
 */

mian(List<String> args){

  //Abstract classes can't be created with a 'new' expression. 
  // final p = Person();


}

abstract class Person{
  void eat();
}

class Animal{
  //'eat' must have a method body because 'Animal' isn't abstract.
  // void eat();
}