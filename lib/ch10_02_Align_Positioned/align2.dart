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
        appBar: AppBar(title: Text('Align 연습2'),),
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Align은 child를 특정 위치에 배치할 수 있지만
    // Stack을 제외한 다른 부모 위젯 속에서는 자유롭게 layout될 수 없기 때문에
    // 아래처럼 함부로 사용하면 안 된다. ==> 원하는 위치에 정확히 배치되지 않는다.
    //
    // return Column(
    //   children: [
    //     Align(
    //       alignment: Alignment(1, 0),
    //       child: Container(
    //         width: 200,
    //         height: 200,
    //         color: Colors.red,
    //       ),
    //     ),
    //     Align(
    //       alignment: Alignment(0, 1),
    //       child: Container(
    //         width: 200,
    //         height: 200,
    //         color: Colors.yellow,
    //       ),
    //     ),
    //   ],
    // );

    return Container(
      color: Colors.teal,
      child: Align(
        alignment: Alignment(1, 0.5),
        child: Container(
          width: 150,
          height: 150,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
