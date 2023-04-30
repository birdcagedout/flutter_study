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
          appBar: AppBar(title: Text("ListView 연습2\nscrollDirection: Axis.horizontal"),),
          body: HomeScreen(),
        )
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,                 // 가로 방향 scroll
      children: [
        Container(width: 300, color: Colors.red,),
        Container(width: 300, color: Colors.green,),
        Container(width: 300, color: Colors.blue,),
      ],
    );
  }
}
