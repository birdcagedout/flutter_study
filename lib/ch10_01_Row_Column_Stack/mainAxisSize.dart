import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("mainAxisSize 연습"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,   // 2번째 Column이 center정렬되는 것을 방지
        children: [

          // 1. 크기를 정하지 않은 경우
          Column(
            children: [
              Container(
                color: Colors.yellow,
                child: Row(
                  children: [
                    Container(
                      width: 60, height: 100, color: Colors.red,
                    ),
                    Container(
                      width: 60, height: 50, color: Colors.green,
                    ),
                    Container(
                      width: 60, height: 150, color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Text("Size를 정하지 않으면 mainAxis방향 = 최대, crossAxis방향은 최소"),
              Padding(padding: EdgeInsets.only(bottom: 40)),
            ],
          ),

          // 2. Row의 main축 크기를 정한 경우(mainAxisSize)
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.yellow,
                child: Row(
                  mainAxisSize: MainAxisSize.min,                   // children을 포함할 수 있는 최소한의 크기
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: 60, height: 100, color: Colors.red,
                    ),
                    Container(
                      width: 60, height: 50, color: Colors.green,
                    ),
                    Container(
                      width: 60, height: 150, color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Text("Size: mainAxisSize = 최소"),
              Padding(padding: EdgeInsets.only(bottom: 40)),
            ],
          ),
        ]
      ),
    );
  }
}
