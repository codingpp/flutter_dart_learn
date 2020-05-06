import 'package:FlutterDartLearn/function_learn.dart';
import 'package:FlutterDartLearn/generic_learn.dart';
import 'package:FlutterDartLearn/oop_learn.dart';
import 'package:flutter/material.dart';
import 'package:FlutterDartLearn/data_type.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter必备Dart基础',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter必备Dart基础'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    _oopLearn();
    _functionLearn();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[DataType()],
        ),
      ),
    );
  }

  void _oopLearn() {
    print('----------------_oopLearn----------------');
    //单例模式的体现
    Logger logger1 = Logger();
    Logger logger2 = Logger();
    print(logger1 == logger2);

    Student.doPrint('_oopLearn');
    //创建student的对象
    Student stu1 = Student('清华', 'jack', 18);
    stu1.school = '985';
    print(stu1.toString());

    Student stu2 = Student('北大', 'Tom', 16, city: '上海', country: '中国');
    print(stu2.toString());

    StudyFlutter studyFlutter = StudyFlutter();
    studyFlutter.study();
  }

  void _functionLearn() {
    TestFunction testFunction = TestFunction();
    testFunction.start();

    TestGeneric testGeneric = TestGeneric();
    testGeneric.start();
  }
}
