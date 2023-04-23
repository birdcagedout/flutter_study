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
        appBar: AppBar(title: Text("Center 연습"),),
        body: Container(
          color: Colors.yellow,
          child: Center(
            widthFactor: 2,
            heightFactor: 2,
            child: Image.asset(
              'assets/images/face.png',
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            )
          ),
        ),
      ),
    );
  }
}
