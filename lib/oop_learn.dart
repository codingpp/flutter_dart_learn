class Student extends Person {
  //定义类的变量
  String _school; //通过下划线来标示私有字段
  final String city;
  String country;
  String name;

  ///构造方法
  ///通过this._school初始化自有参数
  ///name,age交给父类进行初始化
  ///city为可选参数
  ///country为默认参数
  Student(this._school, String name, int age,
      {this.city, this.country = 'China'})
      : //初始化列表：除了调用父类构造器，在子类构造方法体前，你也可以初始化实例变量，不同的初始化变量之间用逗号分割开
        name = '$country.$city',
        //如果父类没有默认构造方法（无参的构造方法），则需要在初始化列表中调用父类的构造方法进行初始化
        super(name, age) {
    print('构造方法体不是必须的');
  }

  //可以为私有字段设置getter来让外界获取到私有字段
  String get school => _school;

  //可以为私有字段设置setter来控制外界对私有字段的修改
  set school(String value) {
    _school = value;
  }

  //静态方法
  static doPrint(String str) {
    print('doPrint:$str');
  }

  ///命名构造方法：[类名+.+方法名]
  ///使用命名构造方法为类实现多个构造方法
  Student.cover(Student student, this.city) : super(student.name, student.age) {
    print('命名构造方法');
  }

  ///命名工厂构造方法：factory【类名+.+方法名】
  ///它可以有返回值，而且不需要将类的final变量作为参数，是提供一种灵活获取类对象的方式
  factory Student.stu(Student stu) {
    return Student(stu._school, stu.name, stu.age);
  }

  @override
  String toString() {
    return 'name:$name school:${this._school},city:$city,country:$country ${super.toString()}';
  }
}

///工厂构造方法
class Logger {
  static Logger _cache;

  //工厂构造方法
  //不仅仅是构造方法，更是一种模式
  //有时候为了返回一个之前已经创建的缓存对象，原始的构造方法已经不能满足要求
  //那么可以使用工程模式来定义构造方法
  factory Logger() {
    if (_cache == null) {
      _cache = Logger._internal();
    }
    return _cache;
  }

  Logger._internal();

  void log(String msg) {
    print(msg);
  }
}

///定义一个dart类，所有的类都继承自object
class Person {
  String name;
  int age;

  ///标准的构造方法
  Person(this.name, this.age);

  //重写父类方法
  @override
  String toString() {
    return 'name:$name,age:$age';
  }
}

class StudyFlutter extends Study {
  @override
  void study() {
    print('learning flutter');
  }
}

///使用abstract修饰符来定义一个抽象类，该类不能被实例化，抽象类在定义接口的时候非常有用
abstract class Study {
  void study();
}

///为类添加特征：mixins
///mixins是在多个类层次结构中重用代码的一种方式
///要使用mixins,在with关键字后面跟上一个或多个mixin的名字（用逗号分割），并且with要用在extends关键字之后
///mixins的特征：实现mixin，就创建一个继承自object类的子类（不能继承其他类），不声明任何构造方法，不调用supre
class Test extends Person with Study{
  Test(String name, int age) : super(name, age);

  @override
  void study() {
  }

}
