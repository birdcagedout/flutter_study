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
        appBar: AppBar(title: Text("Text 위젯 test"),),
        body: SafeArea(
          child: Column(
            children: [
              Text('Hello world'),
              Text('Hello world', textAlign: TextAlign.end,),
              Text('Hello World',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.orange,
                  fontSize: 30,
                  height: 2,
                  backgroundColor: Colors.yellow,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.blue,
                  // decorationStyle: TextDecorationStyle.wavy,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
