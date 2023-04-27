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
        appBar: AppBar(title: Text("Spacer 연습2"),),
        body: HomeScreen(),
      ),
    );
  }
}



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 200,
          color: Colors.yellow,
        ),
        Spacer(),
        // Expanded(child: Container(color: Colors.grey[200],)),     // 가능한 모든 크기로 확장되므로 세로로도 전체크기
        Container(
          width: 150,
          height: 300,
          color: Colors.blue,
        ),

      ],
    );
  }
}
