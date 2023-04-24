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
    return ConstrainedBox(
      constraints: BoxConstraints.expand(width: 400, height: 400),       // BoxConstraints.expand(width: 400, height: 400) ==> 원래 크기는 무시하고 300x300 크기로 출력
      child: Container(
        width: 150,
        height: 150,
        color: Colors.yellow,
        child: Text("BoxConstraints.expand(width: 400, height: 400)"),
      ),
    );
  }
}
