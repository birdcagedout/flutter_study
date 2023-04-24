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
        appBar: AppBar(title: Text('Positioned 연습\n(Stack의 child일 때만 Positioned 사용 가능)'),),
        body: HomeScreen(),
      ),
    );
  }
}



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.green,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.yellow,
        ),
        Positioned(                         // Stack(=green Container) 기준 상대위치: Swift의 constraint와 같은 개념
          right: 10,
          top: 10,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.pink,
            child: Stack(                   // 자식 Positioned 위젯은 부모인 pink색 Container 영역 내로 한정된다 (넘으면 clipping됨)
              children: [
                Container(
                  width: 140,
                  height: 60,
                  color: Colors.purple,
                ),
                Positioned(                 // 부모 pink색 Container에서의 상대위치
                  top: 10,
                  left: 30,
                  child: Container(
                    width: 20,
                    height: 20,
                    color: Colors.blue,
                  ),
                ),
                Positioned(                 // 부모 pink색 Container에서의 상대위치
                  top: 145,                 // 부모인 pink 영역을 벗어나면 clipping 된다.
                  left: 50,
                  child: Container(
                    width: 20,
                    height: 20,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
