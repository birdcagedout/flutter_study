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
        appBar: AppBar(title: Text('Align 연습4\n좌상단 기준: FractionalOffset(숫자, 숫자)'),),
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Align(
        alignment: FractionalOffset(1, 0),            // 부모 위젯(청녹색)의 우상단 모서리
        child: Container(
          width: 300,
          height: 300,
          color: Colors.yellow,
          child: Align(
            alignment: FractionalOffset(0, 1),        // 부모 위젯(노란색)의 좌하단 모서리
            child: Container(
              width: 150,
              height: 150,
              color: Colors.red,
              child: Align(
                alignment: FractionalOffset(1, 0.5),  // 부모 위젯(빨간색)의 우측변 중앙
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
