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
        appBar: AppBar(title: Text('Align 연습1'),),
        body: HomeScreen(),
      ),
    );
  }
}



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            color: Colors.red,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.green,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.yellow,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.purple,
            ),
          )
        ],
      ),
    );
  }
}
