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
        appBar: AppBar(title: Text('Positioned 연습'),),
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
        Positioned(                         // Stack의 전체크기는 green색 Container이므로 green 기준 상대위치
          right: 10,
          top: 10,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.pink,
            child: Stack(                   // 이하의 모든 위젯은 부모인 pink색 Container로 한정된다
              children: [
                Container(
                  width: 130,
                  height: 60,
                  color: Colors.purple,
                ),
                Positioned(                 // pink색 Container에서의 상대위치
                  top: 10,
                  left: 30,
                  child: Container(
                    width: 20,
                    height: 20,
                    color: Colors.blue,
                  ),
                ),
                Positioned(                 // pink색 Container에서의 상대위치
                  top: 140,                 // 부모인 pink 영역을 벗어나면 안 보인다
                  left: 30,
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
