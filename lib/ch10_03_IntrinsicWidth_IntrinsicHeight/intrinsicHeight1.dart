import 'package:flutter/material.dart';
import 'package:flutter_study/ch09_06_Container/circle_gradient.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("IntrinsicWidth 연습1"),),
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
            color: Colors.yellow[100],
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                  child: Text("50x50"),
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.green,
                  child: Text("150x150"),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Text("100x100"),
                ),
                Text("적용안함"),
              ],
            ),
          ),

          Padding(padding: EdgeInsets.all(20)),

          Container(
            color: Colors.yellow[300],
            child: IntrinsicHeight(                                        // IntrinsicWidth로 Column 감싸고
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,           // crossAxisAlignment.stretch 적용
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                    child: Text("50x50"),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.green,
                    child: Text("150x150"),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Text("100x100"),
                  ),
                  Text("IntrinsicHeight\n + stretch"),
                ],
              ),
            ),
          ),
        ]
    );
  }
}
