import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Align 연습3\n중앙 기준: Alignment(숫자, 숫자)'),),
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(                               // 1
      color: Colors.teal,
      child: Align(                                 // 2
        alignment: Alignment(0, 0),                             // 부모 위젯(청녹색)의 정중앙
        child: Container(                           // 3
          width: 300,
          height: 300,
          color: Colors.yellow,
          child: Align(                             // 4
            alignment: Alignment(0, 1),                         // 부모 위젯(노란색)의 중앙 하단
            child: Container(                       // 5
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
