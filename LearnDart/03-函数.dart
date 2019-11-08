main(List<String> args) {
  // print(sum1(20, 30));
  // print(sum2(20, 30));
  // print(sum3(20, 30));

// 调用printInfo2函数,位置可选参数
  // printInfo2('why'); // name=why age=null height=null
  // printInfo2('why', 18); // name=why age=18 height=null
  // printInfo2('why', 18, 1.88); // name=why age=18 height=1.88

// 调用printInfo1函数,  命名可选参数
  // printInfo1('why'); // name=why age=null height=null
  // printInfo1('why', age: 18); // name=why age=18 height=null
  // printInfo1('why', age: 18, height: 1.88); // name=why age=18 height=1.88
  // printInfo1('why', height: 1.88); // name=why age=null height=1.88

  //调用printInfo4函数, 参数的默认值
  //只有可选参数才可以有默认值, 必须参数不能有默认值
  printInfo4('jack', age: 20);


}

// 参数的默认值
printInfo4(String name, {int age = 18, double height = 1.88}) {
  print('name=$name age=$age height=$height');
}

//可选参数
// 定义位置可选参数
printInfo2(String name, [int age, double height]) {
  print('name=$name age=$age height=$height');
}

// 命名可选参数
printInfo1(String name, {int age, double height}) {
  print('name=$name age=$age height=$height');
}

//如果函数中只有一个表达式, 那么可以使用箭头语法(arrow syntax)
//注意, 这里面只能是一个表达式, 不能是一个语句
sum3(num1, num2) => num1 + num2;

int sum1(num num1, num num2) {
  return num1 + num2;
}

sum2(num1, num2) {
  return num1 + num2;
}
