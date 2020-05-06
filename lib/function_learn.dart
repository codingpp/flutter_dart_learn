class TestFunction {
  FunctionLearn functionLearn = FunctionLearn();

  void start() {
    print(functionLearn.sum(1, 2));
    functionLearn.anonymousFunction();
  }
}

class FunctionLearn {
  ///方法的构成
  ///返回值类型+方法名+参数
  ///其中：返回值类型可缺省，也可为void或具体的类型
  ///方法名：匿名方法不需要方法名
  ///参数：参数类型和参数名，参数类型可缺省（另外，参数又分可选参数和参数默认值，可参考面向对象一节中构造方法部分的讲解）

  int sum(int val1, int val2) {
    return val1 + val2;
  }

  ///私有方法
  ///通过_开头命名的方法
  ///作用域是当前文件
  _learn() {
    print('私有方法');
  }

  ///匿名方法
  anonymousFunction() {
    var list = ['私有方法', '匿名方法'];
    //下面的代码定义了一个参数为i，（该 参数没有指定类型）的匿名函数
    //list中的每个元素都会调用这个函数来打印出来，同时计算了每个元素在list中的索引位置
    list.forEach((i) {
      print(list.indexOf(i).toString() + ':' + i);
    });
  }
}
