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
        // appBar: AppBar(title: Text('SafeArea 연습'),),
        body: HomeScreen(),
      ),
    );
  }
}



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // 위젯 100개 리스트로 추가
  List<Widget> getWidgets() {
    List<Widget> widgets = [];

    for (var i = 0; i < 100; i++) {
      widgets.add(ListTile(title: Text("Hello World Item $i"),));
    }
    return widgets;

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: getWidgets(),
        )
      ),
    );
  }
}
