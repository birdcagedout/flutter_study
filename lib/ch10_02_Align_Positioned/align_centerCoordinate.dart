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
        appBar: AppBar(title: Text('Align 연습4'),),
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(                               // 1
      color: Colors.teal,
      child: Align(                                 // 2
        alignment: Alignment(0, 0),
        child: Container(                           // 3
          width: 300,
          height: 300,
          color: Colors.yellow,
          child: Align(                             // 4
            alignment: Alignment(0, 1),
            child: Container(                       // 5
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
