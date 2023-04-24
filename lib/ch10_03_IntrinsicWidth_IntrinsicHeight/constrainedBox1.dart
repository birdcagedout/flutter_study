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
        appBar: AppBar(title: Text("ConstrainedBox"),),
        body: HomeScreen(),
      ),
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.red,
          child: Text("적용 전(150x150)"),
        ),

        ConstrainedBox(                               // ConstrainedBox로 감싸고
          constraints: BoxConstraints(),              // BoxConstraints에 기본 생성자(x: 0~inf, y: 0~inf) 사용 ==> 결과: 원래 위젯 크기대로 생성 (차이 없음)
          child: Container(
            width: 150,
            height: 150,
            color: Colors.yellow,
            child: Text("적용 후(150x150)"),
          ),
        )
      ],
    );
  }
}
