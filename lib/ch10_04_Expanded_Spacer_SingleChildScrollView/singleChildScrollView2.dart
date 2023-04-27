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
        appBar: AppBar(title: Text("SingleChildScrollView 연습2\nAxis.horizontal 스크롤"),),
        body: HomeScreen(),
      ),
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,             // 수평 scroll
      child: Row(
        children: [
          Container(
            color: Colors.red,
            width: 100,
          ),
          Container(
            color: Colors.green,
            width: 200,
          ),
          Container(
            color: Colors.blue,
            width: 500,
          ),
        ],
      ),
    );
  }
}
