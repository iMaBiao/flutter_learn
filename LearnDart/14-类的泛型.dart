main(List<String> args) {
  //泛型类
  Location l2 = Location<int>(10, 20);
  print(l2.x.runtimeType); // int

  Location l3 = Location<String>('aaa', 'bbb');
  print(l3.x.runtimeType); // String

  //泛型方法
  var names = ['why', 'kobe'];
  var first = getFirst(names);
  print('$first ${first.runtimeType}'); // why String

  dynamic name = 'jjjj';
  Object name1 = 'aaaa';
  
  print(name.runtimeType);
  print(name.length);

  print(name1.runtimeType);
  // print(name1.length);
}

//泛型类
class Location<T> {
  T x;
  T y;

  Location(this.x, this.y);
}

//泛型方法
T getFirst<T>(List<T> ts) {
  return ts[0];
}
