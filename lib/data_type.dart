import 'package:flutter/material.dart';

/// 常用数据类型
class DataType extends StatefulWidget {
  @override
  _DataTypeState createState() => _DataTypeState();
}

class _DataTypeState extends State<DataType> {
  @override
  Widget build(BuildContext context) {
    _numType();
    _stringType();
    _boolType();
    _listType();
    _mapType();
    _tips();
    return Container(
      child: Text('常用数据类型，请查看控制台输出'),
    );
  }

  ///数字类型
  void _numType() {
    num num1 = -1.0; //是数字类型的父类
    num num2 = 2; //是数字类型的父类
    int int1 = 3; //只能是整数
    double d1 = 1.68; //双精度
    print("num:$num1 num:$num2 int:$int1 doublie:$d1");
    print(num1.abs()); //求绝对值
    print(num1.toInt()); //转换成int类型
    print(num1.toDouble()); //转换成double类型
  }

  ///字符串
  _stringType() {
    String str1 = '字符串', str2 = "双引号"; //字符串的定义
    String str3 = 'str1:$str1 str2:$str2'; //字符串拼接
    String str4 = 'str1:' + str1 + ' str2:' + str2; //字符串拼接
    String str5 = '常用数据类型，请看控制台输出';
    print(str3);
    print(str4);
    //常用方法
    print(str5.substring(1, 5)); //字符串截取
    print(str5.indexOf('类型')); //获取制定字符串位置
    //startWith等
  }

  ///布尔类型，Dart是强bool类型检查，只有bool类型的值是true才被认为是true
  _boolType() {
    bool success = true, fail = false;
    print(success);
    print(fail);
    print(success || fail); //true
    print(success && fail); //false
  }

  ///List集合
  _listType() {
    print('--------------—_listType----------');

    ///集合初始的方式
    List list = [1, 2, 3, '集合']; //初始号添加元素
    print(list);

    List<int> list2 = [];
    //list2 = list;//错误做法，类型转换错误
    List list3 = [];
    list3.add('list3'); //通过add方法添加元素
    list3.addAll(list);
    print(list3);

    List list4 = List.generate(3, (index) => index * 2); //集合生成函数
    print(list4);

    ///遍历集合的方式
    for (int i = 0; i < list.length; i++) {
      print(list[i]);
    }
    for (var o in list) {
      print(o);
    }
    list.forEach((val) {
      print(val);
    });
  }

  ///map ,key value
  _mapType() {
    print('-----_mapType---------------');
    Map names = {'xiaoming': '小明', 'xiaohong': '小红'};
    print(names);

    Map ages = {};
    ages['xiaoming'] = 16;
    ages['xiaohong'] = 18;
    print(ages);

    ///map遍历
    ages.forEach((key, value) {
      print('$key, $value');
    });
    Map ages2 = ages.map((k, v) {
      //迭代生成一个新map
      return MapEntry(v, k);
    });
    print(ages2);

    for (var key in ages.keys) {
      print('$key ${ages[key]}');
    }
  }

  ///dynamic,var,Object三者的区别
  ///dynamic 动态数据类型，不会进行数据类型检查
  ///var 关键字 不关心数据类型是什么
  ///Object dart语言对象的基类
  _tips() {
    print('-----------—_tips------------');

    ///dynamic
    dynamic x = 'hal';
    print(x.runtimeType);
    print(x);

    x = 123;
    print(x.runtimeType);
    print(x);

    ///var
    var a = 'var';
    print(a.runtimeType);
    print(a);

    ///Object
    Object o1 = '1111';
    print(o1.runtimeType);
    print(o1);
  }
}
