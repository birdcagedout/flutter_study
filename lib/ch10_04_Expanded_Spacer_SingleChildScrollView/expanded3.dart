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
        appBar: AppBar(title: Text("Expanded 연습3\nExpanded와 Expanded 아닌 위젯 혼합 사용"),),
        body: HomeScreen(),
      ),
    );
  }
}



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(                         // Row에 Expanded 적용 ==> 위젯의 width 무시됨
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 4,                      // 남은 공간의 4/10
          child: Container(
            color: Colors.red,
            width: 10,                  // width 무시됨
          ),
        ),
        Container(
          color: Colors.green,
          width: 250,                   // width 반영됨
        ),
        Expanded(
          flex: 6,                     // 남은 공간의 6/10
          child: Container(
            color: Colors.yellow,
            width: 100,                 // width 무시됨
          ),
        )
      ],
    );
  }
}
