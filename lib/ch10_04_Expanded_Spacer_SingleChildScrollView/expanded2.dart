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
        appBar: AppBar(title: Text("Expanded 연습2\nflex로 비율 조절"),),
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
          flex: 3,
          child: Container(
            color: Colors.red,
            width: 10,                  // width 무시됨
            child: Text("width:10\nflex:3"),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.green,
            width: 40,                  // width 무시됨
            child: Text("width:40\nflext:5"),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.yellow,
            width: 100,                 // width 무시됨
            child: Text("width:100\nflex:2"),
          ),
        )
      ],
    );
  }
}
