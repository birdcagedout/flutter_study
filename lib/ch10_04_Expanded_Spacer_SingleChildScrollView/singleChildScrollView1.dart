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
        appBar: AppBar(title: Text("SingleChildScrollView 연습1\nAxis.vertical 스크롤"),),
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
      scrollDirection: Axis.vertical,             // 수직 scroll
      child: Column(
        children: [
          Container(
            color: Colors.red,
            height: 300,
          ),
          Container(
            color: Colors.green,
            height: 200,
          ),
          Container(
            color: Colors.blue,
            height: 500,
          ),
        ],
      ),
    );
  }
}
