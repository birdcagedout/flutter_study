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
          color: Colors.red,
          child: Text("적용 전(150x150)"),
        ),

        ConstrainedBox(                               // ConstrainedBox로 감싸고 (Column으로 감싸진 상태)
          constraints: BoxConstraints.expand(),       // BoxConstraints.expand() 사용 ==> 의도: 가능한 크기만큼 확장, 실제결과: 에러 발생 (Column 등 다른 위젯과 함께 사용시 유의)
          child: Container(
            width: 150,
            height: 150,
            color: Colors.yellow,
            child: Text("적용 후(150x150)"),
          ),
        )
      ],
    );
  }
}
