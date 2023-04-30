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
        appBar: AppBar(title: Text("ListView 연습1"),),
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
      // scrollDirection: Axis.vertical,                // 기본값은 vertical
      children: [
        Container(height: 300, color: Colors.red,),
        Container(height: 300, color: Colors.green,),
        Container(height: 300, color: Colors.blue,),
      ],
    );
  }
}
