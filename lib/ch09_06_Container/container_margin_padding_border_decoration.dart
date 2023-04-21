// Container의 속성
// - margin : 외부 다른 위젯과의 간격         <-- EdgeInsets 객체
// - padding: 내부 child 위젯과의 간격       <-- EdgeInsets 객체
// - border : (외부와 내부의) 경계 테두리
// - borderRadius: 모서리에서 안쪽으로 반지름을 잡고 원을 그렸을 때 생기는 4분원

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
        appBar: AppBar(title: Text("Container 연습"),),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.green),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          margin: EdgeInsets.only(left: 40, top: 60),
          padding: EdgeInsets.all(7),
          child: Image.asset("assets/images/big.jpeg"),
        ),
      ),
    );
  }
}
