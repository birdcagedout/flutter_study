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
        appBar: AppBar(title: Text("Expanded 연습1"),),
        body: HomeScreen(),
      ),
    );
  }
}



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(                         // Row에 Expanded 적용 ==> 위젯의 width 무시된
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            width: 10,                  // width 무시됨
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            width: 40,                  // width 무시됨
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
            width: 100,                 // width 무시됨
          ),
        )
      ],
    );
  }
}
