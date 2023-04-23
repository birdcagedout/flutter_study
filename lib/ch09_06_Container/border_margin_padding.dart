// Container의 속성
// - margin : 외부 다른 위젯과의 간격         <-- EdgeInsets 객체
// - padding: 내부 child 위젯과의 간격        <-- EdgeInsets 객체
// - border : (외부와 내부의) 경계 테두리                                          <-- decoration: BoxDecoration 속성
// - borderRadius: 모서리에서 안쪽으로 반지름을 잡고 원을 그렸을 때 생기는 4분원   <-- decoration: BoxDecoration 속성

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var margin = EdgeInsets.only(left: 40, top: 60);
  var padding = EdgeInsets.all(7);
  var border = Border.all(width: 1, color: Colors.green);
  var borderRadius = BorderRadius.all(Radius.circular(10));


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Container 연습\n(margin, padding, border)")),
        body: Container(
          decoration: BoxDecoration(
            border: border,
            borderRadius: borderRadius,
          ),
          margin: margin,
          padding: padding,
          child: Image.asset("assets/images/big.jpeg"),
        ),
      ),
    );
  }
}

