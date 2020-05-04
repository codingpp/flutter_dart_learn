import 'package:FlutterDartLearn/oop_learn.dart';

class TestGeneric {
  void start() {
    Cache<String> cache1 = Cache();
    cache1.setItem('cache1', 'cache'); //泛型作用：类型检约束类比：List<String>
    String string1 = cache1.getItem('cache1');
    print(string1);

    Cache<int> cache2 = Cache();
    cache2.setItem('cache1', 1008);
    int string2 = cache2.getItem('cache1');
    print(string2);

    Member<Student> member = Member(Student('', '', 16));
    print(member.fixedName());
  }
}

///泛型
///通俗理解：泛型主要是解决类、接口、方法的服用性、以及对不特定数据类型的支持
///泛型类
///作用：提高代码的复用度
class Cache<T> {
  static final Map<String, Object> _cached = Map();

  void setItem(String key, T value) {
    _cached[key] = value;
  }

  T getItem(String key) {
    return _cached[key];
  }
}

class Member<T extends Person> {
  T _person;

  ///泛型作用：约束参数类型
  Member(this._person);

  String fixedName() {
    return 'fiexe:${_person.name}';
  }
}
