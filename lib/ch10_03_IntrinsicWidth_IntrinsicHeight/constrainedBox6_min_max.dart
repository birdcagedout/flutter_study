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
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.yellow,
          child: Text("원래 크기: 150x150"),
        ),

        Spacer(),

        ConstrainedBox(
          constraints: BoxConstraints(
          minWidth: 400,
          maxHeight: 100,
          ),
          child: Container(
            width: 150,
            height: 150,
            color: Colors.yellow[200],
            child: Text("BoxConstraints(minWidth: 400, maxHeight: 100)"),
          ),
        ),

        Spacer(),

        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 200,
            minHeight: 300,
          ),
          child: Container(
            width: 150,
            height: 150,
            color: Colors.yellow[300],
            child: Text("BoxConstraints\n(maxWidth: 200, minHeight: 300)"),
          ),
        ),
      ]
    );
  }
}
