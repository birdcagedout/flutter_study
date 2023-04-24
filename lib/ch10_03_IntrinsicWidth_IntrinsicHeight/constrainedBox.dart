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
        // 1. ConstrainedBox 적용X
        // Container(
        //   width: 150,
        //   height: 150,
        //   color: Colors.red,
        //   child: Text("적용 전"),
        // ),

        // 2. ConstrainedBox 적용O : 1번 빼고 적용 ==> 이렇게 해도 에러남
        // ConstrainedBox(
        //   constraints: BoxConstraints.expand(),
        //   child: Container(
        //     width: 150,
        //     height: 150,
        //     color: Colors.red,
        //     child: Text("적용 후"),
        //   ),
        // ),

        // 3. ConstrainedBox 적용O : 1, 2번 빼고 적용
        ConstrainedBox(
          constraints: BoxConstraints.expand(width: 400, height: 400),
          child: Container(
            width: 150,
            height: 150,
            color: Colors.red,
            child: Text("적용 후"),
          ),
        ),
      ],
    );
  }
}
